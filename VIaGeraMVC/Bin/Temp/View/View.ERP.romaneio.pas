
unit View.ERP.representante;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.representante, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPrepresentante = class(TForm) 
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
    FController : TControllerERPrepresentante; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_usuario : Integer;
    Fid_veiculo_transporte : Integer;
    Fmotorista : indefinido;
    Fcarga_maxima : Double;
    Fcarga_entrega : Double;
    Fdata_emissao : indefinido;
    Fdata_entrega : indefinido;
    Fnumero_entregas : Integer;
    Fvalor_transportado : Double;
    Fclick : Boolean;
    Fclose : indefinido;
    Fcarga_percentual : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_usuario(const Value : Integer);
    procedure Setid_veiculo_transporte(const Value : Integer);
    procedure Setmotorista(const Value : indefinido);
    procedure Setcarga_maxima(const Value : Double);
    procedure Setcarga_entrega(const Value : Double);
    procedure Setdata_emissao(const Value : indefinido);
    procedure Setdata_entrega(const Value : indefinido);
    procedure Setnumero_entregas(const Value : Integer);
    procedure Setvalor_transportado(const Value : Double);
    procedure Setclick(const Value : Boolean);
    procedure Setclose(const Value : indefinido);
    procedure Setcarga_percentual(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_usuario : Integer         read Fid_usuario    write Fid_usuario;
    property id_veiculo_transporte : Integer         read Fid_veiculo_transporte    write Fid_veiculo_transporte;
    property motorista : indefinido         read Fmotorista    write Fmotorista;
    property carga_maxima : Double         read Fcarga_maxima    write Fcarga_maxima;
    property carga_entrega : Double         read Fcarga_entrega    write Fcarga_entrega;
    property data_emissao : indefinido         read Fdata_emissao    write Fdata_emissao;
    property data_entrega : indefinido         read Fdata_entrega    write Fdata_entrega;
    property numero_entregas : Integer         read Fnumero_entregas    write Fnumero_entregas;
    property valor_transportado : Double         read Fvalor_transportado    write Fvalor_transportado;
    property click : Boolean         read Fclick    write Fclick;
    property close : indefinido         read Fclose    write Fclose;
    property carga_percentual : Double         read Fcarga_percentual    write Fcarga_percentual;

  end;

var
  Frm_ViewERPrepresentante : TFrm_ViewERPrepresentante; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_usuario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_veiculo_transporte); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].motorista); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].carga_maxima); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].carga_entrega); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_emissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_entrega); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].numero_entregas); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_transportado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].close); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].carga_percentual); 
    end; 
end; 

procedure TFrm_ViewERPrepresentante.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_usuario := Edit_id_usuario.text;
      FController.Model.id_veiculo_transporte := Edit_id_veiculo_transporte.text;
      FController.Model.motorista := Edit_motorista.text;
      FController.Model.carga_maxima := Edit_carga_maxima.text;
      FController.Model.carga_entrega := Edit_carga_entrega.text;
      FController.Model.data_emissao := Edit_data_emissao.text;
      FController.Model.data_entrega := Edit_data_entrega.text;
      FController.Model.numero_entregas := Edit_numero_entregas.text;
      FController.Model.valor_transportado := Edit_valor_transportado.text;
      FController.Model.click := Edit_click.text;
      FController.Model.close := Edit_close.text;
      FController.Model.carga_percentual := Edit_carga_percentual.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPrepresentante.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPrepresentante.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPrepresentante.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPrepresentante.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPrepresentante.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPrepresentante.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPrepresentante.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 14;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_usuario;  
     Grid.Cells[inttostr(i),0] := id_veiculo_transporte;  
     Grid.Cells[inttostr(i),0] := motorista;  
     Grid.Cells[inttostr(i),0] := carga_maxima;  
     Grid.Cells[inttostr(i),0] := carga_entrega;  
     Grid.Cells[inttostr(i),0] := data_emissao;  
     Grid.Cells[inttostr(i),0] := data_entrega;  
     Grid.Cells[inttostr(i),0] := numero_entregas;  
     Grid.Cells[inttostr(i),0] := valor_transportado;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := close;  
     Grid.Cells[inttostr(i),0] := carga_percentual;  
end;

procedure TFrm_ViewERPrepresentante.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPrepresentante.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPrepresentante.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.id_usuario := Grid.Cells[2,Grid.row];
    FController.Model.id_veiculo_transporte := Grid.Cells[3,Grid.row];
    FController.Model.motorista := Grid.Cells[4,Grid.row];
    FController.Model.carga_maxima := Grid.Cells[5,Grid.row];
    FController.Model.carga_entrega := Grid.Cells[6,Grid.row];
    FController.Model.data_emissao := Grid.Cells[7,Grid.row];
    FController.Model.data_entrega := Grid.Cells[8,Grid.row];
    FController.Model.numero_entregas := Grid.Cells[9,Grid.row];
    FController.Model.valor_transportado := Grid.Cells[10,Grid.row];
    FController.Model.click := Grid.Cells[11,Grid.row];
    FController.Model.close := Grid.Cells[12,Grid.row];
    FController.Model.carga_percentual := Grid.Cells[13,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPrepresentante.LimparTela;  
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

procedure TFrm_ViewERPrepresentante.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPrepresentante.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPrepresentante.Setid_usuario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPrepresentante.Setid_veiculo_transporte(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPrepresentante.Setmotorista(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPrepresentante.Setcarga_maxima(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPrepresentante.Setcarga_entrega(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPrepresentante.Setdata_emissao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPrepresentante.Setdata_entrega(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPrepresentante.Setnumero_entregas(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPrepresentante.Setvalor_transportado(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPrepresentante.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPrepresentante.Setclose(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPrepresentante.Setcarga_percentual(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
