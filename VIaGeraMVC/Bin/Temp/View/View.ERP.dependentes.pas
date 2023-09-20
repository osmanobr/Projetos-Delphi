
unit View.ERP.dependente_emergencia;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.dependente_emergencia, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPdependenteemergencia = class(TForm) 
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
    FController : TControllerERPdependenteemergencia; 
    Fid : Integer;
    Fid_cliente : Integer;
    Fnome : WideString;
    Fdata_aniversario : TDateTime;
    Fcpf : WideString;
    Fendereco : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_cliente(const Value : Integer);
    procedure Setnome(const Value : WideString);
    procedure Setdata_aniversario(const Value : TDateTime);
    procedure Setcpf(const Value : WideString);
    procedure Setendereco(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property nome : WideString         read Fnome    write Fnome;
    property data_aniversario : TDateTime         read Fdata_aniversario    write Fdata_aniversario;
    property cpf : WideString         read Fcpf    write Fcpf;
    property endereco : WideString         read Fendereco    write Fendereco;

  end;

var
  Frm_ViewERPdependenteemergencia : TFrm_ViewERPdependenteemergencia; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 6; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_aniversario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cpf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].endereco); 
    end; 
end; 

procedure TFrm_ViewERPdependenteemergencia.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.data_aniversario := Edit_data_aniversario.text;
      FController.Model.cpf := Edit_cpf.text;
      FController.Model.endereco := Edit_endereco.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPdependenteemergencia.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPdependenteemergencia.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPdependenteemergencia.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPdependenteemergencia.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPdependenteemergencia.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPdependenteemergencia.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPdependenteemergencia.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 6;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := data_aniversario;  
     Grid.Cells[inttostr(i),0] := cpf;  
     Grid.Cells[inttostr(i),0] := endereco;  
end;

procedure TFrm_ViewERPdependenteemergencia.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPdependenteemergencia.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPdependenteemergencia.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_cliente := Grid.Cells[1,Grid.row];
    FController.Model.nome := Grid.Cells[2,Grid.row];
    FController.Model.data_aniversario := Grid.Cells[3,Grid.row];
    FController.Model.cpf := Grid.Cells[4,Grid.row];
    FController.Model.endereco := Grid.Cells[5,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPdependenteemergencia.LimparTela;  
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

procedure TFrm_ViewERPdependenteemergencia.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdependenteemergencia.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdependenteemergencia.Setnome(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdependenteemergencia.Setdata_aniversario(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdependenteemergencia.Setcpf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPdependenteemergencia.Setendereco(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
