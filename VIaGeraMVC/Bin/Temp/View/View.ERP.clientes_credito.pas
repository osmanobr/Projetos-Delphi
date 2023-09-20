
unit View.ERP.clientes_coringa;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.clientes_coringa, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPclientescoringa = class(TForm) 
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
    FController : TControllerERPclientescoringa; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_cliente : Integer;
    Fid_usuario : Integer;
    Fnome : indefinido;
    Fvl_credito : Double;
    Fvl_usado : Double;
    Fdata : TDateTime;
    Forigem : WideString;
    Fid_origem : Integer;
    Fid_conta : WideString;
    Fhistorico : indefinido;
    Festorno : Boolean;
    Fdata_estorno : TDateTime;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_cliente(const Value : Integer);
    procedure Setid_usuario(const Value : Integer);
    procedure Setnome(const Value : indefinido);
    procedure Setvl_credito(const Value : Double);
    procedure Setvl_usado(const Value : Double);
    procedure Setdata(const Value : TDateTime);
    procedure Setorigem(const Value : WideString);
    procedure Setid_origem(const Value : Integer);
    procedure Setid_conta(const Value : WideString);
    procedure Sethistorico(const Value : indefinido);
    procedure Setestorno(const Value : Boolean);
    procedure Setdata_estorno(const Value : TDateTime);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property id_usuario : Integer         read Fid_usuario    write Fid_usuario;
    property nome : indefinido         read Fnome    write Fnome;
    property vl_credito : Double         read Fvl_credito    write Fvl_credito;
    property vl_usado : Double         read Fvl_usado    write Fvl_usado;
    property data : TDateTime         read Fdata    write Fdata;
    property origem : WideString         read Forigem    write Forigem;
    property id_origem : Integer         read Fid_origem    write Fid_origem;
    property id_conta : WideString         read Fid_conta    write Fid_conta;
    property historico : indefinido         read Fhistorico    write Fhistorico;
    property estorno : Boolean         read Festorno    write Festorno;
    property data_estorno : TDateTime         read Fdata_estorno    write Fdata_estorno;

  end;

var
  Frm_ViewERPclientescoringa : TFrm_ViewERPclientescoringa; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 14; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_usuario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_credito); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_usado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].origem); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_origem); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_conta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].historico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estorno); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_estorno); 
    end; 
end; 

procedure TFrm_ViewERPclientescoringa.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.id_usuario := Edit_id_usuario.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.vl_credito := Edit_vl_credito.text;
      FController.Model.vl_usado := Edit_vl_usado.text;
      FController.Model.data := Edit_data.text;
      FController.Model.origem := Edit_origem.text;
      FController.Model.id_origem := Edit_id_origem.text;
      FController.Model.id_conta := Edit_id_conta.text;
      FController.Model.historico := Edit_historico.text;
      FController.Model.estorno := Edit_estorno.text;
      FController.Model.data_estorno := Edit_data_estorno.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPclientescoringa.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPclientescoringa.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPclientescoringa.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPclientescoringa.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPclientescoringa.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPclientescoringa.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPclientescoringa.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 14;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := id_usuario;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := vl_credito;  
     Grid.Cells[inttostr(i),0] := vl_usado;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := origem;  
     Grid.Cells[inttostr(i),0] := id_origem;  
     Grid.Cells[inttostr(i),0] := id_conta;  
     Grid.Cells[inttostr(i),0] := historico;  
     Grid.Cells[inttostr(i),0] := estorno;  
     Grid.Cells[inttostr(i),0] := data_estorno;  
end;

procedure TFrm_ViewERPclientescoringa.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPclientescoringa.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPclientescoringa.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.id_cliente := Grid.Cells[2,Grid.row];
    FController.Model.id_usuario := Grid.Cells[3,Grid.row];
    FController.Model.nome := Grid.Cells[4,Grid.row];
    FController.Model.vl_credito := Grid.Cells[5,Grid.row];
    FController.Model.vl_usado := Grid.Cells[6,Grid.row];
    FController.Model.data := Grid.Cells[7,Grid.row];
    FController.Model.origem := Grid.Cells[8,Grid.row];
    FController.Model.id_origem := Grid.Cells[9,Grid.row];
    FController.Model.id_conta := Grid.Cells[10,Grid.row];
    FController.Model.historico := Grid.Cells[11,Grid.row];
    FController.Model.estorno := Grid.Cells[12,Grid.row];
    FController.Model.data_estorno := Grid.Cells[13,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPclientescoringa.LimparTela;  
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

procedure TFrm_ViewERPclientescoringa.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientescoringa.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientescoringa.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientescoringa.Setid_usuario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientescoringa.Setnome(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientescoringa.Setvl_credito(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientescoringa.Setvl_usado(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientescoringa.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientescoringa.Setorigem(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientescoringa.Setid_origem(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientescoringa.Setid_conta(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientescoringa.Sethistorico(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientescoringa.Setestorno(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientescoringa.Setdata_estorno(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
end.
