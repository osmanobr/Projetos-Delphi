
unit View.ERP.conta_receber_fixa_lote;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.conta_receber_fixa_lote, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPcontareceberfixalote = class(TForm) 
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
    FController : TControllerERPcontareceberfixalote; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_conta_receber : Integer;
    Ftipo : Integer;
    Fdescricao : WideString;
    Fdatahora : indefinido;
    Fprocessado : Boolean;
    Fcancelado : Boolean;
    Fdbclick : Boolean;
    Fdata_processo : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_conta_receber(const Value : Integer);
    procedure Settipo(const Value : Integer);
    procedure Setdescricao(const Value : WideString);
    procedure Setdatahora(const Value : indefinido);
    procedure Setprocessado(const Value : Boolean);
    procedure Setcancelado(const Value : Boolean);
    procedure Setdbclick(const Value : Boolean);
    procedure Setdata_processo(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_conta_receber : Integer         read Fid_conta_receber    write Fid_conta_receber;
    property tipo : Integer         read Ftipo    write Ftipo;
    property descricao : WideString         read Fdescricao    write Fdescricao;
    property datahora : indefinido         read Fdatahora    write Fdatahora;
    property processado : Boolean         read Fprocessado    write Fprocessado;
    property cancelado : Boolean         read Fcancelado    write Fcancelado;
    property dbclick : Boolean         read Fdbclick    write Fdbclick;
    property data_processo : indefinido         read Fdata_processo    write Fdata_processo;

  end;

var
  Frm_ViewERPcontareceberfixalote : TFrm_ViewERPcontareceberfixalote; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 10; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_conta_receber); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].descricao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].datahora); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].processado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cancelado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dbclick); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_processo); 
    end; 
end; 

procedure TFrm_ViewERPcontareceberfixalote.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_conta_receber := Edit_id_conta_receber.text;
      FController.Model.tipo := Edit_tipo.text;
      FController.Model.descricao := Edit_descricao.text;
      FController.Model.datahora := Edit_datahora.text;
      FController.Model.processado := Edit_processado.text;
      FController.Model.cancelado := Edit_cancelado.text;
      FController.Model.dbclick := Edit_dbclick.text;
      FController.Model.data_processo := Edit_data_processo.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPcontareceberfixalote.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPcontareceberfixalote.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPcontareceberfixalote.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPcontareceberfixalote.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPcontareceberfixalote.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPcontareceberfixalote.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPcontareceberfixalote.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 10;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_conta_receber;  
     Grid.Cells[inttostr(i),0] := tipo;  
     Grid.Cells[inttostr(i),0] := descricao;  
     Grid.Cells[inttostr(i),0] := datahora;  
     Grid.Cells[inttostr(i),0] := processado;  
     Grid.Cells[inttostr(i),0] := cancelado;  
     Grid.Cells[inttostr(i),0] := dbclick;  
     Grid.Cells[inttostr(i),0] := data_processo;  
end;

procedure TFrm_ViewERPcontareceberfixalote.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPcontareceberfixalote.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPcontareceberfixalote.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.id_conta_receber := Grid.Cells[2,Grid.row];
    FController.Model.tipo := Grid.Cells[3,Grid.row];
    FController.Model.descricao := Grid.Cells[4,Grid.row];
    FController.Model.datahora := Grid.Cells[5,Grid.row];
    FController.Model.processado := Grid.Cells[6,Grid.row];
    FController.Model.cancelado := Grid.Cells[7,Grid.row];
    FController.Model.dbclick := Grid.Cells[8,Grid.row];
    FController.Model.data_processo := Grid.Cells[9,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPcontareceberfixalote.LimparTela;  
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

procedure TFrm_ViewERPcontareceberfixalote.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontareceberfixalote.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontareceberfixalote.Setid_conta_receber(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontareceberfixalote.Settipo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontareceberfixalote.Setdescricao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontareceberfixalote.Setdatahora(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontareceberfixalote.Setprocessado(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontareceberfixalote.Setcancelado(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontareceberfixalote.Setdbclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontareceberfixalote.Setdata_processo(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
