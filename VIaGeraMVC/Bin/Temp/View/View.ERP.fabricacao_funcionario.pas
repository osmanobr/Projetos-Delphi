
unit View.ERP.fabricacao;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.fabricacao, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPfabricacao = class(TForm) 
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
    FController : TControllerERPfabricacao; 
    Fid : Integer;
    Fid_fabricacao : Integer;
    Fid_funcionario : Integer;
    Fnome_funcionario : WideString;
    Fvalor_comissao : Double;
    Fid_empresa : Integer;
    Fcancelada : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_fabricacao(const Value : Integer);
    procedure Setid_funcionario(const Value : Integer);
    procedure Setnome_funcionario(const Value : WideString);
    procedure Setvalor_comissao(const Value : Double);
    procedure Setid_empresa(const Value : Integer);
    procedure Setcancelada(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property id_fabricacao : Integer         read Fid_fabricacao    write Fid_fabricacao;
    property id_funcionario : Integer         read Fid_funcionario    write Fid_funcionario;
    property nome_funcionario : WideString         read Fnome_funcionario    write Fnome_funcionario;
    property valor_comissao : Double         read Fvalor_comissao    write Fvalor_comissao;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property cancelada : WideString         read Fcancelada    write Fcancelada;

  end;

var
  Frm_ViewERPfabricacao : TFrm_ViewERPfabricacao; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 7; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_fabricacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_funcionario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_funcionario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_comissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cancelada); 
    end; 
end; 

procedure TFrm_ViewERPfabricacao.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_fabricacao := Edit_id_fabricacao.text;
      FController.Model.id_funcionario := Edit_id_funcionario.text;
      FController.Model.nome_funcionario := Edit_nome_funcionario.text;
      FController.Model.valor_comissao := Edit_valor_comissao.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.cancelada := Edit_cancelada.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPfabricacao.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPfabricacao.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPfabricacao.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPfabricacao.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPfabricacao.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPfabricacao.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPfabricacao.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 7;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_fabricacao;  
     Grid.Cells[inttostr(i),0] := id_funcionario;  
     Grid.Cells[inttostr(i),0] := nome_funcionario;  
     Grid.Cells[inttostr(i),0] := valor_comissao;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := cancelada;  
end;

procedure TFrm_ViewERPfabricacao.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPfabricacao.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPfabricacao.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_fabricacao := Grid.Cells[1,Grid.row];
    FController.Model.id_funcionario := Grid.Cells[2,Grid.row];
    FController.Model.nome_funcionario := Grid.Cells[3,Grid.row];
    FController.Model.valor_comissao := Grid.Cells[4,Grid.row];
    FController.Model.id_empresa := Grid.Cells[5,Grid.row];
    FController.Model.cancelada := Grid.Cells[6,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPfabricacao.LimparTela;  
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

procedure TFrm_ViewERPfabricacao.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfabricacao.Setid_fabricacao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfabricacao.Setid_funcionario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfabricacao.Setnome_funcionario(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfabricacao.Setvalor_comissao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfabricacao.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfabricacao.Setcancelada(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
