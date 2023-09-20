
unit View.ERP.parametro_modelo_orcamento;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.parametro_modelo_orcamento, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPparametromodeloorcamento = class(TForm) 
    Panel1: TPanel; 
    bbIncluir: TSpeedButton; 
    bbAlterar: TSpeedButton; 
    bbExcluir: TSpeedButton; 
    BBCancelar: TSpeedButton;
    BBConfirmar: TSpeedButton;

        procedure bbIncluirClick(Sender: TObject);    
        procedure bbAlterarClick(Sender: TObject);    
        procedure bbExcluirClick(Sender: TObject);    
        procedure BBCancelarClick(Sender: TObject);   
        procedure BBConfirmarClick(Sender: TObject);  

    procedure FormCreate(Sender: TObject);    
    procedure FormDestroy(Sender: TObject);    
    procedure FormShow(Sender: TObject);       

  private 
    FController : TControllerERPparametromodeloorcamento; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fnome : indefinido;
    Fcpf : indefinido;
    Fcnpj : indefinido;
    Fendereco : indefinido;
    Fuf : indefinido;
    Fid_cidade : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setnome(const Value : indefinido);
    procedure Setcpf(const Value : indefinido);
    procedure Setcnpj(const Value : indefinido);
    procedure Setendereco(const Value : indefinido);
    procedure Setuf(const Value : indefinido);
    procedure Setid_cidade(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property nome : indefinido         read Fnome    write Fnome;
    property cpf : indefinido         read Fcpf    write Fcpf;
    property cnpj : indefinido         read Fcnpj    write Fcnpj;
    property endereco : indefinido         read Fendereco    write Fendereco;
    property uf : indefinido         read Fuf    write Fuf;
    property id_cidade : Integer         read Fid_cidade    write Fid_cidade;

  end;

var
  Frm_ViewERPparametromodeloorcamento : TFrm_ViewERPparametromodeloorcamento; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 8; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cpf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cnpj); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].endereco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].uf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cidade); 
    end; 
end; 

procedure TFrm_ViewERPparametromodeloorcamento.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.cpf := Edit_cpf.text;
      FController.Model.cnpj := Edit_cnpj.text;
      FController.Model.endereco := Edit_endereco.text;
      FController.Model.uf := Edit_uf.text;
      FController.Model.id_cidade := Edit_id_cidade.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPparametromodeloorcamento.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPparametromodeloorcamento.BBCancelarClick(Sender: TObject); 
begin                         
  LimparTela;                 
end;                          

Function  SoNumeros(Texto: String):Boolean;   
var Resultado:Boolean;                        
    nContador:Integer;                        
begin                                         
  Resultado := false;                         
  For nContador:=1 to Length(Texto) do        
    begin                                     
      {Verifica sé é uma letra}               
       if Texto[nContador] in ['a'..'z','A'..'Z'] then  
      else                                    
         Resultado := true;                   
    end;                                      
    Result:=Resultado;                        
end;                                          

procedure TFrm_ViewERPparametromodeloorcamento.BBConfirmarClick(Sender: TObject);  
begin                                                                     
  if MessageInfo('Confirma a gravação dos dados digitados?', tmPergunta,tbNaoSim) = rbSim then 
  begin                                              
    ScreenToModel;                                   
    if Self.FController.Status = vsInsert then       
    begin                                            
      Self.FController.Post;                         
    end                                              
    else                                             
      begin                                          
        Self.FController.Update;                     
      end;                                           
    MessageInfo('Dados gravados com sucesso.');    
    Self.FController.Model.id := 0;                  
    Self.FController.Get;                            
    ModelToScreen;                                   
  end;                                               
end;                                                 

procedure TFrm_ViewERPparametromodeloorcamento.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPparametromodeloorcamento.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPparametromodeloorcamento.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPparametromodeloorcamento.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 8;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := cpf;  
     Grid.Cells[inttostr(i),0] := cnpj;  
     Grid.Cells[inttostr(i),0] := endereco;  
     Grid.Cells[inttostr(i),0] := uf;  
     Grid.Cells[inttostr(i),0] := id_cidade;  
end;

procedure TFrm_ViewERPparametromodeloorcamento.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPparametromodeloorcamento.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPparametromodeloorcamento.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.nome := Grid.Cells[2,Grid.row];
    FController.Model.cpf := Grid.Cells[3,Grid.row];
    FController.Model.cnpj := Grid.Cells[4,Grid.row];
    FController.Model.endereco := Grid.Cells[5,Grid.row];
    FController.Model.uf := Grid.Cells[6,Grid.row];
    FController.Model.id_cidade := Grid.Cells[7,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPparametromodeloorcamento.LimparTela;  
var   
  I: Integer;  
begin       
  for i := 0 to ComponentCount -1 do   
    BEGIN                              
      if Components[i] is TEdit then   
      begin                            
        TEdit(Components[i]).Text := ''; 
      end; 
    END;   
end;       

procedure TFrm_ViewERPparametromodeloorcamento.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparametromodeloorcamento.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparametromodeloorcamento.Setnome(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparametromodeloorcamento.Setcpf(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparametromodeloorcamento.Setcnpj(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparametromodeloorcamento.Setendereco(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparametromodeloorcamento.Setuf(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparametromodeloorcamento.Setid_cidade(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
