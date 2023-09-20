
unit View.ERP.lote_controle_item;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.lote_controle_item, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPlotecontroleitem = class(TForm) 
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
    FController : TControllerERPlotecontroleitem; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fnumero : Integer;
    Fdata : TDateTime;
    Fecf : WideString;
    Fcoo_inicial : Integer;
    Fcoo_final : Integer;
    Fgt_inicial : Double;
    Fgt_final : Double;
    Fcancelamento : Double;
    Fdesconto : Double;
    Fisento : Double;
    Fnaoincidencia : Double;
    Fst : Double;
    Faliq_1 : Double;
    Faliq_2 : Double;
    Faliq_3 : Double;
    Faliq_4 : Double;
    Faliq_5 : Double;
    Faliq_6 : Double;
    Fimposto : Double;
    Fcontador_reducao : Integer;
    Fclick : Boolean;
    Fobs : WideString;
    Fserie_ecf : WideString;
    Fcro : Double;
    Fvenda_bruta : Double;
    Fvenda_liquida : Double;
    Ftransmitida : WideString;
    Faliq_7 : Double;
    Faliq_8 : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setnumero(const Value : Integer);
    procedure Setdata(const Value : TDateTime);
    procedure Setecf(const Value : WideString);
    procedure Setcoo_inicial(const Value : Integer);
    procedure Setcoo_final(const Value : Integer);
    procedure Setgt_inicial(const Value : Double);
    procedure Setgt_final(const Value : Double);
    procedure Setcancelamento(const Value : Double);
    procedure Setdesconto(const Value : Double);
    procedure Setisento(const Value : Double);
    procedure Setnaoincidencia(const Value : Double);
    procedure Setst(const Value : Double);
    procedure Setaliq_1(const Value : Double);
    procedure Setaliq_2(const Value : Double);
    procedure Setaliq_3(const Value : Double);
    procedure Setaliq_4(const Value : Double);
    procedure Setaliq_5(const Value : Double);
    procedure Setaliq_6(const Value : Double);
    procedure Setimposto(const Value : Double);
    procedure Setcontador_reducao(const Value : Integer);
    procedure Setclick(const Value : Boolean);
    procedure Setobs(const Value : WideString);
    procedure Setserie_ecf(const Value : WideString);
    procedure Setcro(const Value : Double);
    procedure Setvenda_bruta(const Value : Double);
    procedure Setvenda_liquida(const Value : Double);
    procedure Settransmitida(const Value : WideString);
    procedure Setaliq_7(const Value : Double);
    procedure Setaliq_8(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property numero : Integer         read Fnumero    write Fnumero;
    property data : TDateTime         read Fdata    write Fdata;
    property ecf : WideString         read Fecf    write Fecf;
    property coo_inicial : Integer         read Fcoo_inicial    write Fcoo_inicial;
    property coo_final : Integer         read Fcoo_final    write Fcoo_final;
    property gt_inicial : Double         read Fgt_inicial    write Fgt_inicial;
    property gt_final : Double         read Fgt_final    write Fgt_final;
    property cancelamento : Double         read Fcancelamento    write Fcancelamento;
    property desconto : Double         read Fdesconto    write Fdesconto;
    property isento : Double         read Fisento    write Fisento;
    property naoincidencia : Double         read Fnaoincidencia    write Fnaoincidencia;
    property st : Double         read Fst    write Fst;
    property aliq_1 : Double         read Faliq_1    write Faliq_1;
    property aliq_2 : Double         read Faliq_2    write Faliq_2;
    property aliq_3 : Double         read Faliq_3    write Faliq_3;
    property aliq_4 : Double         read Faliq_4    write Faliq_4;
    property aliq_5 : Double         read Faliq_5    write Faliq_5;
    property aliq_6 : Double         read Faliq_6    write Faliq_6;
    property imposto : Double         read Fimposto    write Fimposto;
    property contador_reducao : Integer         read Fcontador_reducao    write Fcontador_reducao;
    property click : Boolean         read Fclick    write Fclick;
    property obs : WideString         read Fobs    write Fobs;
    property serie_ecf : WideString         read Fserie_ecf    write Fserie_ecf;
    property cro : Double         read Fcro    write Fcro;
    property venda_bruta : Double         read Fvenda_bruta    write Fvenda_bruta;
    property venda_liquida : Double         read Fvenda_liquida    write Fvenda_liquida;
    property transmitida : WideString         read Ftransmitida    write Ftransmitida;
    property aliq_7 : Double         read Faliq_7    write Faliq_7;
    property aliq_8 : Double         read Faliq_8    write Faliq_8;

  end;

var
  Frm_ViewERPlotecontroleitem : TFrm_ViewERPlotecontroleitem; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].numero); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ecf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].coo_inicial); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].coo_final); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gt_inicial); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gt_final); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cancelamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].desconto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].isento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].naoincidencia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].st); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].aliq_1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].aliq_2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].aliq_3); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].aliq_4); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].aliq_5); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].aliq_6); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].imposto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].contador_reducao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].serie_ecf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].venda_bruta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].venda_liquida); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].transmitida); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].aliq_7); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].aliq_8); 
    end; 
end; 

procedure TFrm_ViewERPlotecontroleitem.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.numero := Edit_numero.text;
      FController.Model.data := Edit_data.text;
      FController.Model.ecf := Edit_ecf.text;
      FController.Model.coo_inicial := Edit_coo_inicial.text;
      FController.Model.coo_final := Edit_coo_final.text;
      FController.Model.gt_inicial := Edit_gt_inicial.text;
      FController.Model.gt_final := Edit_gt_final.text;
      FController.Model.cancelamento := Edit_cancelamento.text;
      FController.Model.desconto := Edit_desconto.text;
      FController.Model.isento := Edit_isento.text;
      FController.Model.naoincidencia := Edit_naoincidencia.text;
      FController.Model.st := Edit_st.text;
      FController.Model.aliq_1 := Edit_aliq_1.text;
      FController.Model.aliq_2 := Edit_aliq_2.text;
      FController.Model.aliq_3 := Edit_aliq_3.text;
      FController.Model.aliq_4 := Edit_aliq_4.text;
      FController.Model.aliq_5 := Edit_aliq_5.text;
      FController.Model.aliq_6 := Edit_aliq_6.text;
      FController.Model.imposto := Edit_imposto.text;
      FController.Model.contador_reducao := Edit_contador_reducao.text;
      FController.Model.click := Edit_click.text;
      FController.Model.obs := Edit_obs.text;
      FController.Model.serie_ecf := Edit_serie_ecf.text;
      FController.Model.cro := Edit_cro.text;
      FController.Model.venda_bruta := Edit_venda_bruta.text;
      FController.Model.venda_liquida := Edit_venda_liquida.text;
      FController.Model.transmitida := Edit_transmitida.text;
      FController.Model.aliq_7 := Edit_aliq_7.text;
      FController.Model.aliq_8 := Edit_aliq_8.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPlotecontroleitem.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPlotecontroleitem.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPlotecontroleitem.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPlotecontroleitem.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPlotecontroleitem.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPlotecontroleitem.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPlotecontroleitem.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 31;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := numero;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := ecf;  
     Grid.Cells[inttostr(i),0] := coo_inicial;  
     Grid.Cells[inttostr(i),0] := coo_final;  
     Grid.Cells[inttostr(i),0] := gt_inicial;  
     Grid.Cells[inttostr(i),0] := gt_final;  
     Grid.Cells[inttostr(i),0] := cancelamento;  
     Grid.Cells[inttostr(i),0] := desconto;  
     Grid.Cells[inttostr(i),0] := isento;  
     Grid.Cells[inttostr(i),0] := naoincidencia;  
     Grid.Cells[inttostr(i),0] := st;  
     Grid.Cells[inttostr(i),0] := aliq_1;  
     Grid.Cells[inttostr(i),0] := aliq_2;  
     Grid.Cells[inttostr(i),0] := aliq_3;  
     Grid.Cells[inttostr(i),0] := aliq_4;  
     Grid.Cells[inttostr(i),0] := aliq_5;  
     Grid.Cells[inttostr(i),0] := aliq_6;  
     Grid.Cells[inttostr(i),0] := imposto;  
     Grid.Cells[inttostr(i),0] := contador_reducao;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := obs;  
     Grid.Cells[inttostr(i),0] := serie_ecf;  
     Grid.Cells[inttostr(i),0] := cro;  
     Grid.Cells[inttostr(i),0] := venda_bruta;  
     Grid.Cells[inttostr(i),0] := venda_liquida;  
     Grid.Cells[inttostr(i),0] := transmitida;  
     Grid.Cells[inttostr(i),0] := aliq_7;  
     Grid.Cells[inttostr(i),0] := aliq_8;  
end;

procedure TFrm_ViewERPlotecontroleitem.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPlotecontroleitem.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPlotecontroleitem.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.numero := Grid.Cells[2,Grid.row];
    FController.Model.data := Grid.Cells[3,Grid.row];
    FController.Model.ecf := Grid.Cells[4,Grid.row];
    FController.Model.coo_inicial := Grid.Cells[5,Grid.row];
    FController.Model.coo_final := Grid.Cells[6,Grid.row];
    FController.Model.gt_inicial := Grid.Cells[7,Grid.row];
    FController.Model.gt_final := Grid.Cells[8,Grid.row];
    FController.Model.cancelamento := Grid.Cells[9,Grid.row];
    FController.Model.desconto := Grid.Cells[10,Grid.row];
    FController.Model.isento := Grid.Cells[11,Grid.row];
    FController.Model.naoincidencia := Grid.Cells[12,Grid.row];
    FController.Model.st := Grid.Cells[13,Grid.row];
    FController.Model.aliq_1 := Grid.Cells[14,Grid.row];
    FController.Model.aliq_2 := Grid.Cells[15,Grid.row];
    FController.Model.aliq_3 := Grid.Cells[16,Grid.row];
    FController.Model.aliq_4 := Grid.Cells[17,Grid.row];
    FController.Model.aliq_5 := Grid.Cells[18,Grid.row];
    FController.Model.aliq_6 := Grid.Cells[19,Grid.row];
    FController.Model.imposto := Grid.Cells[20,Grid.row];
    FController.Model.contador_reducao := Grid.Cells[21,Grid.row];
    FController.Model.click := Grid.Cells[22,Grid.row];
    FController.Model.obs := Grid.Cells[23,Grid.row];
    FController.Model.serie_ecf := Grid.Cells[24,Grid.row];
    FController.Model.cro := Grid.Cells[25,Grid.row];
    FController.Model.venda_bruta := Grid.Cells[26,Grid.row];
    FController.Model.venda_liquida := Grid.Cells[27,Grid.row];
    FController.Model.transmitida := Grid.Cells[28,Grid.row];
    FController.Model.aliq_7 := Grid.Cells[29,Grid.row];
    FController.Model.aliq_8 := Grid.Cells[30,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPlotecontroleitem.LimparTela;  
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

procedure TFrm_ViewERPlotecontroleitem.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontroleitem.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontroleitem.Setnumero(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontroleitem.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontroleitem.Setecf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontroleitem.Setcoo_inicial(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontroleitem.Setcoo_final(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontroleitem.Setgt_inicial(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontroleitem.Setgt_final(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontroleitem.Setcancelamento(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontroleitem.Setdesconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontroleitem.Setisento(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontroleitem.Setnaoincidencia(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontroleitem.Setst(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontroleitem.Setaliq_1(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontroleitem.Setaliq_2(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontroleitem.Setaliq_3(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontroleitem.Setaliq_4(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontroleitem.Setaliq_5(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontroleitem.Setaliq_6(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontroleitem.Setimposto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontroleitem.Setcontador_reducao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontroleitem.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontroleitem.Setobs(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontroleitem.Setserie_ecf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontroleitem.Setcro(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontroleitem.Setvenda_bruta(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontroleitem.Setvenda_liquida(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontroleitem.Settransmitida(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontroleitem.Setaliq_7(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlotecontroleitem.Setaliq_8(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
