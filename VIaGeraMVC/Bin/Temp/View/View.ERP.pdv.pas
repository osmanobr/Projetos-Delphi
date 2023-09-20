
unit View.ERP.parcela_receber;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.parcela_receber, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPparcelareceber = class(TForm) 
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
    FController : TControllerERPparcelareceber; 
    Fid : Integer;
    Fdata : TDateTime;
    Fhora : indefinido;
    Fcupom : indefinido;
    Fserie : indefinido;
    Fid_caixa : Integer;
    Fid_usuario : Integer;
    Fid_cliente : Integer;
    Fnome_cliente : indefinido;
    Fid_forma : Integer;
    Fvl_icms : Double;
    Fbase_icms : Double;
    Fvl_produto : Double;
    Fvl_desconto : Double;
    Fvl_pago : Double;
    Fvl_troco : Double;
    Fvl_total : Double;
    Fparcelas : Integer;
    Fcomentrada : indefinido;
    Fintervalo : Integer;
    Fid_forma1 : Integer;
    Fvl_pago1 : Double;
    Fid_forma2 : Integer;
    Fvl_pago2 : Double;
    Fcancelada : indefinido;
    Fgerado : indefinido;
    Fobs : indefinido;
    Ftransmitida : indefinido;
    Fid_pdvcaixa : Integer;
    Fservidor : indefinido;
    Fid_vendedor : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setdata(const Value : TDateTime);
    procedure Sethora(const Value : indefinido);
    procedure Setcupom(const Value : indefinido);
    procedure Setserie(const Value : indefinido);
    procedure Setid_caixa(const Value : Integer);
    procedure Setid_usuario(const Value : Integer);
    procedure Setid_cliente(const Value : Integer);
    procedure Setnome_cliente(const Value : indefinido);
    procedure Setid_forma(const Value : Integer);
    procedure Setvl_icms(const Value : Double);
    procedure Setbase_icms(const Value : Double);
    procedure Setvl_produto(const Value : Double);
    procedure Setvl_desconto(const Value : Double);
    procedure Setvl_pago(const Value : Double);
    procedure Setvl_troco(const Value : Double);
    procedure Setvl_total(const Value : Double);
    procedure Setparcelas(const Value : Integer);
    procedure Setcomentrada(const Value : indefinido);
    procedure Setintervalo(const Value : Integer);
    procedure Setid_forma1(const Value : Integer);
    procedure Setvl_pago1(const Value : Double);
    procedure Setid_forma2(const Value : Integer);
    procedure Setvl_pago2(const Value : Double);
    procedure Setcancelada(const Value : indefinido);
    procedure Setgerado(const Value : indefinido);
    procedure Setobs(const Value : indefinido);
    procedure Settransmitida(const Value : indefinido);
    procedure Setid_pdvcaixa(const Value : Integer);
    procedure Setservidor(const Value : indefinido);
    procedure Setid_vendedor(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property data : TDateTime         read Fdata    write Fdata;
    property hora : indefinido         read Fhora    write Fhora;
    property cupom : indefinido         read Fcupom    write Fcupom;
    property serie : indefinido         read Fserie    write Fserie;
    property id_caixa : Integer         read Fid_caixa    write Fid_caixa;
    property id_usuario : Integer         read Fid_usuario    write Fid_usuario;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property nome_cliente : indefinido         read Fnome_cliente    write Fnome_cliente;
    property id_forma : Integer         read Fid_forma    write Fid_forma;
    property vl_icms : Double         read Fvl_icms    write Fvl_icms;
    property base_icms : Double         read Fbase_icms    write Fbase_icms;
    property vl_produto : Double         read Fvl_produto    write Fvl_produto;
    property vl_desconto : Double         read Fvl_desconto    write Fvl_desconto;
    property vl_pago : Double         read Fvl_pago    write Fvl_pago;
    property vl_troco : Double         read Fvl_troco    write Fvl_troco;
    property vl_total : Double         read Fvl_total    write Fvl_total;
    property parcelas : Integer         read Fparcelas    write Fparcelas;
    property comentrada : indefinido         read Fcomentrada    write Fcomentrada;
    property intervalo : Integer         read Fintervalo    write Fintervalo;
    property id_forma1 : Integer         read Fid_forma1    write Fid_forma1;
    property vl_pago1 : Double         read Fvl_pago1    write Fvl_pago1;
    property id_forma2 : Integer         read Fid_forma2    write Fid_forma2;
    property vl_pago2 : Double         read Fvl_pago2    write Fvl_pago2;
    property cancelada : indefinido         read Fcancelada    write Fcancelada;
    property gerado : indefinido         read Fgerado    write Fgerado;
    property obs : indefinido         read Fobs    write Fobs;
    property transmitida : indefinido         read Ftransmitida    write Ftransmitida;
    property id_pdvcaixa : Integer         read Fid_pdvcaixa    write Fid_pdvcaixa;
    property servidor : indefinido         read Fservidor    write Fservidor;
    property id_vendedor : Integer         read Fid_vendedor    write Fid_vendedor;

  end;

var
  Frm_ViewERPparcelareceber : TFrm_ViewERPparcelareceber; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 31; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].hora); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cupom); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].serie); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_usuario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].base_icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_desconto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_pago); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_troco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].parcelas); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comentrada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].intervalo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_pago1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_pago2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cancelada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gerado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].transmitida); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_pdvcaixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].servidor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_vendedor); 
    end; 
end; 

procedure TFrm_ViewERPparcelareceber.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.data := Edit_data.text;
      FController.Model.hora := Edit_hora.text;
      FController.Model.cupom := Edit_cupom.text;
      FController.Model.serie := Edit_serie.text;
      FController.Model.id_caixa := Edit_id_caixa.text;
      FController.Model.id_usuario := Edit_id_usuario.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.nome_cliente := Edit_nome_cliente.text;
      FController.Model.id_forma := Edit_id_forma.text;
      FController.Model.vl_icms := Edit_vl_icms.text;
      FController.Model.base_icms := Edit_base_icms.text;
      FController.Model.vl_produto := Edit_vl_produto.text;
      FController.Model.vl_desconto := Edit_vl_desconto.text;
      FController.Model.vl_pago := Edit_vl_pago.text;
      FController.Model.vl_troco := Edit_vl_troco.text;
      FController.Model.vl_total := Edit_vl_total.text;
      FController.Model.parcelas := Edit_parcelas.text;
      FController.Model.comentrada := Edit_comentrada.text;
      FController.Model.intervalo := Edit_intervalo.text;
      FController.Model.id_forma1 := Edit_id_forma1.text;
      FController.Model.vl_pago1 := Edit_vl_pago1.text;
      FController.Model.id_forma2 := Edit_id_forma2.text;
      FController.Model.vl_pago2 := Edit_vl_pago2.text;
      FController.Model.cancelada := Edit_cancelada.text;
      FController.Model.gerado := Edit_gerado.text;
      FController.Model.obs := Edit_obs.text;
      FController.Model.transmitida := Edit_transmitida.text;
      FController.Model.id_pdvcaixa := Edit_id_pdvcaixa.text;
      FController.Model.servidor := Edit_servidor.text;
      FController.Model.id_vendedor := Edit_id_vendedor.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPparcelareceber.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPparcelareceber.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPparcelareceber.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPparcelareceber.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPparcelareceber.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPparcelareceber.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPparcelareceber.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 31;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := hora;  
     Grid.Cells[inttostr(i),0] := cupom;  
     Grid.Cells[inttostr(i),0] := serie;  
     Grid.Cells[inttostr(i),0] := id_caixa;  
     Grid.Cells[inttostr(i),0] := id_usuario;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := nome_cliente;  
     Grid.Cells[inttostr(i),0] := id_forma;  
     Grid.Cells[inttostr(i),0] := vl_icms;  
     Grid.Cells[inttostr(i),0] := base_icms;  
     Grid.Cells[inttostr(i),0] := vl_produto;  
     Grid.Cells[inttostr(i),0] := vl_desconto;  
     Grid.Cells[inttostr(i),0] := vl_pago;  
     Grid.Cells[inttostr(i),0] := vl_troco;  
     Grid.Cells[inttostr(i),0] := vl_total;  
     Grid.Cells[inttostr(i),0] := parcelas;  
     Grid.Cells[inttostr(i),0] := comentrada;  
     Grid.Cells[inttostr(i),0] := intervalo;  
     Grid.Cells[inttostr(i),0] := id_forma1;  
     Grid.Cells[inttostr(i),0] := vl_pago1;  
     Grid.Cells[inttostr(i),0] := id_forma2;  
     Grid.Cells[inttostr(i),0] := vl_pago2;  
     Grid.Cells[inttostr(i),0] := cancelada;  
     Grid.Cells[inttostr(i),0] := gerado;  
     Grid.Cells[inttostr(i),0] := obs;  
     Grid.Cells[inttostr(i),0] := transmitida;  
     Grid.Cells[inttostr(i),0] := id_pdvcaixa;  
     Grid.Cells[inttostr(i),0] := servidor;  
     Grid.Cells[inttostr(i),0] := id_vendedor;  
end;

procedure TFrm_ViewERPparcelareceber.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPparcelareceber.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPparcelareceber.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.data := Grid.Cells[1,Grid.row];
    FController.Model.hora := Grid.Cells[2,Grid.row];
    FController.Model.cupom := Grid.Cells[3,Grid.row];
    FController.Model.serie := Grid.Cells[4,Grid.row];
    FController.Model.id_caixa := Grid.Cells[5,Grid.row];
    FController.Model.id_usuario := Grid.Cells[6,Grid.row];
    FController.Model.id_cliente := Grid.Cells[7,Grid.row];
    FController.Model.nome_cliente := Grid.Cells[8,Grid.row];
    FController.Model.id_forma := Grid.Cells[9,Grid.row];
    FController.Model.vl_icms := Grid.Cells[10,Grid.row];
    FController.Model.base_icms := Grid.Cells[11,Grid.row];
    FController.Model.vl_produto := Grid.Cells[12,Grid.row];
    FController.Model.vl_desconto := Grid.Cells[13,Grid.row];
    FController.Model.vl_pago := Grid.Cells[14,Grid.row];
    FController.Model.vl_troco := Grid.Cells[15,Grid.row];
    FController.Model.vl_total := Grid.Cells[16,Grid.row];
    FController.Model.parcelas := Grid.Cells[17,Grid.row];
    FController.Model.comentrada := Grid.Cells[18,Grid.row];
    FController.Model.intervalo := Grid.Cells[19,Grid.row];
    FController.Model.id_forma1 := Grid.Cells[20,Grid.row];
    FController.Model.vl_pago1 := Grid.Cells[21,Grid.row];
    FController.Model.id_forma2 := Grid.Cells[22,Grid.row];
    FController.Model.vl_pago2 := Grid.Cells[23,Grid.row];
    FController.Model.cancelada := Grid.Cells[24,Grid.row];
    FController.Model.gerado := Grid.Cells[25,Grid.row];
    FController.Model.obs := Grid.Cells[26,Grid.row];
    FController.Model.transmitida := Grid.Cells[27,Grid.row];
    FController.Model.id_pdvcaixa := Grid.Cells[28,Grid.row];
    FController.Model.servidor := Grid.Cells[29,Grid.row];
    FController.Model.id_vendedor := Grid.Cells[30,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPparcelareceber.LimparTela;  
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

procedure TFrm_ViewERPparcelareceber.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelareceber.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelareceber.Sethora(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelareceber.Setcupom(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelareceber.Setserie(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelareceber.Setid_caixa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelareceber.Setid_usuario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelareceber.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelareceber.Setnome_cliente(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelareceber.Setid_forma(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelareceber.Setvl_icms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelareceber.Setbase_icms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelareceber.Setvl_produto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelareceber.Setvl_desconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelareceber.Setvl_pago(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelareceber.Setvl_troco(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelareceber.Setvl_total(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelareceber.Setparcelas(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelareceber.Setcomentrada(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelareceber.Setintervalo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelareceber.Setid_forma1(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelareceber.Setvl_pago1(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelareceber.Setid_forma2(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelareceber.Setvl_pago2(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelareceber.Setcancelada(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelareceber.Setgerado(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelareceber.Setobs(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelareceber.Settransmitida(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelareceber.Setid_pdvcaixa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelareceber.Setservidor(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelareceber.Setid_vendedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
