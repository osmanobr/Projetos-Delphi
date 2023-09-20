
unit View.ERP.contrato;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.contrato, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPcontrato = class(TForm) 
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
    FController : TControllerERPcontrato; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fcontrato : WideString;
    Fid_cliente : Integer;
    Fvalor : Double;
    Fdata : TDateTime;
    Fid_sistema : Integer;
    Fcancelado : WideString;
    Fdata_cancelado : TDateTime;
    Fmotivo_cancelado : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setcontrato(const Value : WideString);
    procedure Setid_cliente(const Value : Integer);
    procedure Setvalor(const Value : Double);
    procedure Setdata(const Value : TDateTime);
    procedure Setid_sistema(const Value : Integer);
    procedure Setcancelado(const Value : WideString);
    procedure Setdata_cancelado(const Value : TDateTime);
    procedure Setmotivo_cancelado(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property contrato : WideString         read Fcontrato    write Fcontrato;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property valor : Double         read Fvalor    write Fvalor;
    property data : TDateTime         read Fdata    write Fdata;
    property id_sistema : Integer         read Fid_sistema    write Fid_sistema;
    property cancelado : WideString         read Fcancelado    write Fcancelado;
    property data_cancelado : TDateTime         read Fdata_cancelado    write Fdata_cancelado;
    property motivo_cancelado : indefinido         read Fmotivo_cancelado    write Fmotivo_cancelado;

  end;

var
  Frm_ViewERPcontrato : TFrm_ViewERPcontrato; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].contrato); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_sistema); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cancelado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_cancelado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].motivo_cancelado); 
    end; 
end; 

procedure TFrm_ViewERPcontrato.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.contrato := Edit_contrato.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.valor := Edit_valor.text;
      FController.Model.data := Edit_data.text;
      FController.Model.id_sistema := Edit_id_sistema.text;
      FController.Model.cancelado := Edit_cancelado.text;
      FController.Model.data_cancelado := Edit_data_cancelado.text;
      FController.Model.motivo_cancelado := Edit_motivo_cancelado.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPcontrato.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPcontrato.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPcontrato.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPcontrato.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPcontrato.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPcontrato.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPcontrato.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 10;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := contrato;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := valor;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := id_sistema;  
     Grid.Cells[inttostr(i),0] := cancelado;  
     Grid.Cells[inttostr(i),0] := data_cancelado;  
     Grid.Cells[inttostr(i),0] := motivo_cancelado;  
end;

procedure TFrm_ViewERPcontrato.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPcontrato.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPcontrato.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.contrato := Grid.Cells[2,Grid.row];
    FController.Model.id_cliente := Grid.Cells[3,Grid.row];
    FController.Model.valor := Grid.Cells[4,Grid.row];
    FController.Model.data := Grid.Cells[5,Grid.row];
    FController.Model.id_sistema := Grid.Cells[6,Grid.row];
    FController.Model.cancelado := Grid.Cells[7,Grid.row];
    FController.Model.data_cancelado := Grid.Cells[8,Grid.row];
    FController.Model.motivo_cancelado := Grid.Cells[9,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPcontrato.LimparTela;  
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

procedure TFrm_ViewERPcontrato.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontrato.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontrato.Setcontrato(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontrato.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontrato.Setvalor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontrato.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontrato.Setid_sistema(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontrato.Setcancelado(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontrato.Setdata_cancelado(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontrato.Setmotivo_cancelado(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
