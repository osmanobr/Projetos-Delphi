
unit View.ERP.estimativa_obra;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.estimativa_obra, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPestimativaobra = class(TForm) 
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
    FController : TControllerERPestimativaobra; 
    Fid : Integer;
    Fid_estimativa_obra : Integer;
    Fid_pedido_alm : Integer;
    Fid_venda : Integer;
    Fdata_pedido_alm : indefinido;
    Fdata_venda : indefinido;
    Fcancelado : Boolean;
    Ffechado : Boolean;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_estimativa_obra(const Value : Integer);
    procedure Setid_pedido_alm(const Value : Integer);
    procedure Setid_venda(const Value : Integer);
    procedure Setdata_pedido_alm(const Value : indefinido);
    procedure Setdata_venda(const Value : indefinido);
    procedure Setcancelado(const Value : Boolean);
    procedure Setfechado(const Value : Boolean);

  public

    property id : Integer         read Fid    write Fid;
    property id_estimativa_obra : Integer         read Fid_estimativa_obra    write Fid_estimativa_obra;
    property id_pedido_alm : Integer         read Fid_pedido_alm    write Fid_pedido_alm;
    property id_venda : Integer         read Fid_venda    write Fid_venda;
    property data_pedido_alm : indefinido         read Fdata_pedido_alm    write Fdata_pedido_alm;
    property data_venda : indefinido         read Fdata_venda    write Fdata_venda;
    property cancelado : Boolean         read Fcancelado    write Fcancelado;
    property fechado : Boolean         read Ffechado    write Ffechado;

  end;

var
  Frm_ViewERPestimativaobra : TFrm_ViewERPestimativaobra; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_estimativa_obra); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_pedido_alm); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_pedido_alm); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cancelado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fechado); 
    end; 
end; 

procedure TFrm_ViewERPestimativaobra.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_estimativa_obra := Edit_id_estimativa_obra.text;
      FController.Model.id_pedido_alm := Edit_id_pedido_alm.text;
      FController.Model.id_venda := Edit_id_venda.text;
      FController.Model.data_pedido_alm := Edit_data_pedido_alm.text;
      FController.Model.data_venda := Edit_data_venda.text;
      FController.Model.cancelado := Edit_cancelado.text;
      FController.Model.fechado := Edit_fechado.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPestimativaobra.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPestimativaobra.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPestimativaobra.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPestimativaobra.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPestimativaobra.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPestimativaobra.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPestimativaobra.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 8;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_estimativa_obra;  
     Grid.Cells[inttostr(i),0] := id_pedido_alm;  
     Grid.Cells[inttostr(i),0] := id_venda;  
     Grid.Cells[inttostr(i),0] := data_pedido_alm;  
     Grid.Cells[inttostr(i),0] := data_venda;  
     Grid.Cells[inttostr(i),0] := cancelado;  
     Grid.Cells[inttostr(i),0] := fechado;  
end;

procedure TFrm_ViewERPestimativaobra.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPestimativaobra.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPestimativaobra.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_estimativa_obra := Grid.Cells[1,Grid.row];
    FController.Model.id_pedido_alm := Grid.Cells[2,Grid.row];
    FController.Model.id_venda := Grid.Cells[3,Grid.row];
    FController.Model.data_pedido_alm := Grid.Cells[4,Grid.row];
    FController.Model.data_venda := Grid.Cells[5,Grid.row];
    FController.Model.cancelado := Grid.Cells[6,Grid.row];
    FController.Model.fechado := Grid.Cells[7,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPestimativaobra.LimparTela;  
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

procedure TFrm_ViewERPestimativaobra.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestimativaobra.Setid_estimativa_obra(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestimativaobra.Setid_pedido_alm(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestimativaobra.Setid_venda(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestimativaobra.Setdata_pedido_alm(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestimativaobra.Setdata_venda(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestimativaobra.Setcancelado(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestimativaobra.Setfechado(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
