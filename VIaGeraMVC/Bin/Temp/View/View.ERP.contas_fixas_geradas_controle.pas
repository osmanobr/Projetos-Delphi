
unit View.ERP.contas_fixas;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.contas_fixas, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPcontasfixas = class(TForm) 
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
    FController : TControllerERPcontasfixas; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_lote : Integer;
    Fid_fixa : Integer;
    Fdata_vencto : TDateTime;
    Fdata_gerado : TDateTime;
    Fenviado : Boolean;
    Ferro : indefinido;
    Fstatus : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_lote(const Value : Integer);
    procedure Setid_fixa(const Value : Integer);
    procedure Setdata_vencto(const Value : TDateTime);
    procedure Setdata_gerado(const Value : TDateTime);
    procedure Setenviado(const Value : Boolean);
    procedure Seterro(const Value : indefinido);
    procedure Setstatus(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_lote : Integer         read Fid_lote    write Fid_lote;
    property id_fixa : Integer         read Fid_fixa    write Fid_fixa;
    property data_vencto : TDateTime         read Fdata_vencto    write Fdata_vencto;
    property data_gerado : TDateTime         read Fdata_gerado    write Fdata_gerado;
    property enviado : Boolean         read Fenviado    write Fenviado;
    property erro : indefinido         read Ferro    write Ferro;
    property status : Integer         read Fstatus    write Fstatus;

  end;

var
  Frm_ViewERPcontasfixas : TFrm_ViewERPcontasfixas; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 9; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_lote); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_fixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_vencto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_gerado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].enviado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].erro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].status); 
    end; 
end; 

procedure TFrm_ViewERPcontasfixas.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_lote := Edit_id_lote.text;
      FController.Model.id_fixa := Edit_id_fixa.text;
      FController.Model.data_vencto := Edit_data_vencto.text;
      FController.Model.data_gerado := Edit_data_gerado.text;
      FController.Model.enviado := Edit_enviado.text;
      FController.Model.erro := Edit_erro.text;
      FController.Model.status := Edit_status.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPcontasfixas.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPcontasfixas.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPcontasfixas.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPcontasfixas.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPcontasfixas.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPcontasfixas.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPcontasfixas.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 9;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_lote;  
     Grid.Cells[inttostr(i),0] := id_fixa;  
     Grid.Cells[inttostr(i),0] := data_vencto;  
     Grid.Cells[inttostr(i),0] := data_gerado;  
     Grid.Cells[inttostr(i),0] := enviado;  
     Grid.Cells[inttostr(i),0] := erro;  
     Grid.Cells[inttostr(i),0] := status;  
end;

procedure TFrm_ViewERPcontasfixas.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPcontasfixas.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPcontasfixas.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.id_lote := Grid.Cells[2,Grid.row];
    FController.Model.id_fixa := Grid.Cells[3,Grid.row];
    FController.Model.data_vencto := Grid.Cells[4,Grid.row];
    FController.Model.data_gerado := Grid.Cells[5,Grid.row];
    FController.Model.enviado := Grid.Cells[6,Grid.row];
    FController.Model.erro := Grid.Cells[7,Grid.row];
    FController.Model.status := Grid.Cells[8,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPcontasfixas.LimparTela;  
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

procedure TFrm_ViewERPcontasfixas.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontasfixas.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontasfixas.Setid_lote(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontasfixas.Setid_fixa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontasfixas.Setdata_vencto(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontasfixas.Setdata_gerado(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontasfixas.Setenviado(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontasfixas.Seterro(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontasfixas.Setstatus(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
