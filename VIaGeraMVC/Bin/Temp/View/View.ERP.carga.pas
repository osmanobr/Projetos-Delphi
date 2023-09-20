
unit View.ERP.calculo_financeiro;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.calculo_financeiro, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPcalculofinanceiro = class(TForm) 
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
    FController : TControllerERPcalculofinanceiro; 
    Fid : Integer;
    Fdata : TDateTime;
    Fgerado : WideString;
    Fid_rota : Integer;
    Fid_transportadora : Integer;
    Fmotorista : WideString;
    Fplaca : WideString;
    Fpeso_bruto : Double;
    Fpeso_liquido : Double;
    Fkm_inicial : WideString;
    Fkm_final : WideString;
    Ftotal_volumes : Double;
    Ftotal_unidades : Double;
    Ftransporte : WideString;
    Fobs : WideString;
    Fvalor : Double;
    Fid_usuario : Integer;
    Fclick : Boolean;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setdata(const Value : TDateTime);
    procedure Setgerado(const Value : WideString);
    procedure Setid_rota(const Value : Integer);
    procedure Setid_transportadora(const Value : Integer);
    procedure Setmotorista(const Value : WideString);
    procedure Setplaca(const Value : WideString);
    procedure Setpeso_bruto(const Value : Double);
    procedure Setpeso_liquido(const Value : Double);
    procedure Setkm_inicial(const Value : WideString);
    procedure Setkm_final(const Value : WideString);
    procedure Settotal_volumes(const Value : Double);
    procedure Settotal_unidades(const Value : Double);
    procedure Settransporte(const Value : WideString);
    procedure Setobs(const Value : WideString);
    procedure Setvalor(const Value : Double);
    procedure Setid_usuario(const Value : Integer);
    procedure Setclick(const Value : Boolean);

  public

    property id : Integer         read Fid    write Fid;
    property data : TDateTime         read Fdata    write Fdata;
    property gerado : WideString         read Fgerado    write Fgerado;
    property id_rota : Integer         read Fid_rota    write Fid_rota;
    property id_transportadora : Integer         read Fid_transportadora    write Fid_transportadora;
    property motorista : WideString         read Fmotorista    write Fmotorista;
    property placa : WideString         read Fplaca    write Fplaca;
    property peso_bruto : Double         read Fpeso_bruto    write Fpeso_bruto;
    property peso_liquido : Double         read Fpeso_liquido    write Fpeso_liquido;
    property km_inicial : WideString         read Fkm_inicial    write Fkm_inicial;
    property km_final : WideString         read Fkm_final    write Fkm_final;
    property total_volumes : Double         read Ftotal_volumes    write Ftotal_volumes;
    property total_unidades : Double         read Ftotal_unidades    write Ftotal_unidades;
    property transporte : WideString         read Ftransporte    write Ftransporte;
    property obs : WideString         read Fobs    write Fobs;
    property valor : Double         read Fvalor    write Fvalor;
    property id_usuario : Integer         read Fid_usuario    write Fid_usuario;
    property click : Boolean         read Fclick    write Fclick;

  end;

var
  Frm_ViewERPcalculofinanceiro : TFrm_ViewERPcalculofinanceiro; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 18; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gerado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_rota); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_transportadora); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].motorista); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].placa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].peso_bruto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].peso_liquido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].km_inicial); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].km_final); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].total_volumes); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].total_unidades); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].transporte); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_usuario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
    end; 
end; 

procedure TFrm_ViewERPcalculofinanceiro.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.data := Edit_data.text;
      FController.Model.gerado := Edit_gerado.text;
      FController.Model.id_rota := Edit_id_rota.text;
      FController.Model.id_transportadora := Edit_id_transportadora.text;
      FController.Model.motorista := Edit_motorista.text;
      FController.Model.placa := Edit_placa.text;
      FController.Model.peso_bruto := Edit_peso_bruto.text;
      FController.Model.peso_liquido := Edit_peso_liquido.text;
      FController.Model.km_inicial := Edit_km_inicial.text;
      FController.Model.km_final := Edit_km_final.text;
      FController.Model.total_volumes := Edit_total_volumes.text;
      FController.Model.total_unidades := Edit_total_unidades.text;
      FController.Model.transporte := Edit_transporte.text;
      FController.Model.obs := Edit_obs.text;
      FController.Model.valor := Edit_valor.text;
      FController.Model.id_usuario := Edit_id_usuario.text;
      FController.Model.click := Edit_click.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPcalculofinanceiro.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPcalculofinanceiro.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPcalculofinanceiro.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPcalculofinanceiro.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPcalculofinanceiro.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPcalculofinanceiro.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPcalculofinanceiro.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 18;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := gerado;  
     Grid.Cells[inttostr(i),0] := id_rota;  
     Grid.Cells[inttostr(i),0] := id_transportadora;  
     Grid.Cells[inttostr(i),0] := motorista;  
     Grid.Cells[inttostr(i),0] := placa;  
     Grid.Cells[inttostr(i),0] := peso_bruto;  
     Grid.Cells[inttostr(i),0] := peso_liquido;  
     Grid.Cells[inttostr(i),0] := km_inicial;  
     Grid.Cells[inttostr(i),0] := km_final;  
     Grid.Cells[inttostr(i),0] := total_volumes;  
     Grid.Cells[inttostr(i),0] := total_unidades;  
     Grid.Cells[inttostr(i),0] := transporte;  
     Grid.Cells[inttostr(i),0] := obs;  
     Grid.Cells[inttostr(i),0] := valor;  
     Grid.Cells[inttostr(i),0] := id_usuario;  
     Grid.Cells[inttostr(i),0] := click;  
end;

procedure TFrm_ViewERPcalculofinanceiro.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPcalculofinanceiro.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPcalculofinanceiro.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.data := Grid.Cells[1,Grid.row];
    FController.Model.gerado := Grid.Cells[2,Grid.row];
    FController.Model.id_rota := Grid.Cells[3,Grid.row];
    FController.Model.id_transportadora := Grid.Cells[4,Grid.row];
    FController.Model.motorista := Grid.Cells[5,Grid.row];
    FController.Model.placa := Grid.Cells[6,Grid.row];
    FController.Model.peso_bruto := Grid.Cells[7,Grid.row];
    FController.Model.peso_liquido := Grid.Cells[8,Grid.row];
    FController.Model.km_inicial := Grid.Cells[9,Grid.row];
    FController.Model.km_final := Grid.Cells[10,Grid.row];
    FController.Model.total_volumes := Grid.Cells[11,Grid.row];
    FController.Model.total_unidades := Grid.Cells[12,Grid.row];
    FController.Model.transporte := Grid.Cells[13,Grid.row];
    FController.Model.obs := Grid.Cells[14,Grid.row];
    FController.Model.valor := Grid.Cells[15,Grid.row];
    FController.Model.id_usuario := Grid.Cells[16,Grid.row];
    FController.Model.click := Grid.Cells[17,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPcalculofinanceiro.LimparTela;  
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

procedure TFrm_ViewERPcalculofinanceiro.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcalculofinanceiro.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcalculofinanceiro.Setgerado(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcalculofinanceiro.Setid_rota(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcalculofinanceiro.Setid_transportadora(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcalculofinanceiro.Setmotorista(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcalculofinanceiro.Setplaca(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcalculofinanceiro.Setpeso_bruto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcalculofinanceiro.Setpeso_liquido(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcalculofinanceiro.Setkm_inicial(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcalculofinanceiro.Setkm_final(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcalculofinanceiro.Settotal_volumes(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcalculofinanceiro.Settotal_unidades(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcalculofinanceiro.Settransporte(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcalculofinanceiro.Setobs(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcalculofinanceiro.Setvalor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcalculofinanceiro.Setid_usuario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcalculofinanceiro.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
