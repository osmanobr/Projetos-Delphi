
unit View.ERP.parcela_pagar;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.parcela_pagar, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPparcelapagar = class(TForm) 
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
    FController : TControllerERPparcelapagar; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_conta_receber : Integer;
    Fid_caixa : Integer;
    Fid_contacorrente : indefinido;
    Fid_forma : Integer;
    Fid_conta : WideString;
    Fdata_pgto : TDateTime;
    Fid_cliente : Integer;
    Fvl_total : Double;
    Fvl_desconto : Double;
    Fvl_pago : Double;
    Fvl_juros : Double;
    Fvl_jurospago : Double;
    Fdebcre : indefinido;
    Fid_cobrador : Integer;
    Fclick : Boolean;
    Fid_credito : Integer;
    Fdocumento : indefinido;
    Fparcela : indefinido;
    Fid_usuario : Integer;
    Fbaixa_manual : indefinido;
    Fid_movimento : Integer;
    Fid_cupons : Integer;
    Fid_pagamentos : Integer;
    Fobs : indefinido;
    Fmulta_paga : Double;
    Fid_conta_receber_uniao : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_conta_receber(const Value : Integer);
    procedure Setid_caixa(const Value : Integer);
    procedure Setid_contacorrente(const Value : indefinido);
    procedure Setid_forma(const Value : Integer);
    procedure Setid_conta(const Value : WideString);
    procedure Setdata_pgto(const Value : TDateTime);
    procedure Setid_cliente(const Value : Integer);
    procedure Setvl_total(const Value : Double);
    procedure Setvl_desconto(const Value : Double);
    procedure Setvl_pago(const Value : Double);
    procedure Setvl_juros(const Value : Double);
    procedure Setvl_jurospago(const Value : Double);
    procedure Setdebcre(const Value : indefinido);
    procedure Setid_cobrador(const Value : Integer);
    procedure Setclick(const Value : Boolean);
    procedure Setid_credito(const Value : Integer);
    procedure Setdocumento(const Value : indefinido);
    procedure Setparcela(const Value : indefinido);
    procedure Setid_usuario(const Value : Integer);
    procedure Setbaixa_manual(const Value : indefinido);
    procedure Setid_movimento(const Value : Integer);
    procedure Setid_cupons(const Value : Integer);
    procedure Setid_pagamentos(const Value : Integer);
    procedure Setobs(const Value : indefinido);
    procedure Setmulta_paga(const Value : Double);
    procedure Setid_conta_receber_uniao(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_conta_receber : Integer         read Fid_conta_receber    write Fid_conta_receber;
    property id_caixa : Integer         read Fid_caixa    write Fid_caixa;
    property id_contacorrente : indefinido         read Fid_contacorrente    write Fid_contacorrente;
    property id_forma : Integer         read Fid_forma    write Fid_forma;
    property id_conta : WideString         read Fid_conta    write Fid_conta;
    property data_pgto : TDateTime         read Fdata_pgto    write Fdata_pgto;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property vl_total : Double         read Fvl_total    write Fvl_total;
    property vl_desconto : Double         read Fvl_desconto    write Fvl_desconto;
    property vl_pago : Double         read Fvl_pago    write Fvl_pago;
    property vl_juros : Double         read Fvl_juros    write Fvl_juros;
    property vl_jurospago : Double         read Fvl_jurospago    write Fvl_jurospago;
    property debcre : indefinido         read Fdebcre    write Fdebcre;
    property id_cobrador : Integer         read Fid_cobrador    write Fid_cobrador;
    property click : Boolean         read Fclick    write Fclick;
    property id_credito : Integer         read Fid_credito    write Fid_credito;
    property documento : indefinido         read Fdocumento    write Fdocumento;
    property parcela : indefinido         read Fparcela    write Fparcela;
    property id_usuario : Integer         read Fid_usuario    write Fid_usuario;
    property baixa_manual : indefinido         read Fbaixa_manual    write Fbaixa_manual;
    property id_movimento : Integer         read Fid_movimento    write Fid_movimento;
    property id_cupons : Integer         read Fid_cupons    write Fid_cupons;
    property id_pagamentos : Integer         read Fid_pagamentos    write Fid_pagamentos;
    property obs : indefinido         read Fobs    write Fobs;
    property multa_paga : Double         read Fmulta_paga    write Fmulta_paga;
    property id_conta_receber_uniao : Integer         read Fid_conta_receber_uniao    write Fid_conta_receber_uniao;

  end;

var
  Frm_ViewERPparcelapagar : TFrm_ViewERPparcelapagar; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 28; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_conta_receber); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_contacorrente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_conta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_pgto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_desconto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_pago); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_juros); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_jurospago); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].debcre); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cobrador); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_credito); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].documento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].parcela); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_usuario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].baixa_manual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_movimento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cupons); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_pagamentos); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].multa_paga); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_conta_receber_uniao); 
    end; 
end; 

procedure TFrm_ViewERPparcelapagar.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_conta_receber := Edit_id_conta_receber.text;
      FController.Model.id_caixa := Edit_id_caixa.text;
      FController.Model.id_contacorrente := Edit_id_contacorrente.text;
      FController.Model.id_forma := Edit_id_forma.text;
      FController.Model.id_conta := Edit_id_conta.text;
      FController.Model.data_pgto := Edit_data_pgto.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.vl_total := Edit_vl_total.text;
      FController.Model.vl_desconto := Edit_vl_desconto.text;
      FController.Model.vl_pago := Edit_vl_pago.text;
      FController.Model.vl_juros := Edit_vl_juros.text;
      FController.Model.vl_jurospago := Edit_vl_jurospago.text;
      FController.Model.debcre := Edit_debcre.text;
      FController.Model.id_cobrador := Edit_id_cobrador.text;
      FController.Model.click := Edit_click.text;
      FController.Model.id_credito := Edit_id_credito.text;
      FController.Model.documento := Edit_documento.text;
      FController.Model.parcela := Edit_parcela.text;
      FController.Model.id_usuario := Edit_id_usuario.text;
      FController.Model.baixa_manual := Edit_baixa_manual.text;
      FController.Model.id_movimento := Edit_id_movimento.text;
      FController.Model.id_cupons := Edit_id_cupons.text;
      FController.Model.id_pagamentos := Edit_id_pagamentos.text;
      FController.Model.obs := Edit_obs.text;
      FController.Model.multa_paga := Edit_multa_paga.text;
      FController.Model.id_conta_receber_uniao := Edit_id_conta_receber_uniao.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPparcelapagar.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPparcelapagar.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPparcelapagar.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPparcelapagar.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPparcelapagar.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPparcelapagar.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPparcelapagar.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 28;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_conta_receber;  
     Grid.Cells[inttostr(i),0] := id_caixa;  
     Grid.Cells[inttostr(i),0] := id_contacorrente;  
     Grid.Cells[inttostr(i),0] := id_forma;  
     Grid.Cells[inttostr(i),0] := id_conta;  
     Grid.Cells[inttostr(i),0] := data_pgto;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := vl_total;  
     Grid.Cells[inttostr(i),0] := vl_desconto;  
     Grid.Cells[inttostr(i),0] := vl_pago;  
     Grid.Cells[inttostr(i),0] := vl_juros;  
     Grid.Cells[inttostr(i),0] := vl_jurospago;  
     Grid.Cells[inttostr(i),0] := debcre;  
     Grid.Cells[inttostr(i),0] := id_cobrador;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := id_credito;  
     Grid.Cells[inttostr(i),0] := documento;  
     Grid.Cells[inttostr(i),0] := parcela;  
     Grid.Cells[inttostr(i),0] := id_usuario;  
     Grid.Cells[inttostr(i),0] := baixa_manual;  
     Grid.Cells[inttostr(i),0] := id_movimento;  
     Grid.Cells[inttostr(i),0] := id_cupons;  
     Grid.Cells[inttostr(i),0] := id_pagamentos;  
     Grid.Cells[inttostr(i),0] := obs;  
     Grid.Cells[inttostr(i),0] := multa_paga;  
     Grid.Cells[inttostr(i),0] := id_conta_receber_uniao;  
end;

procedure TFrm_ViewERPparcelapagar.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPparcelapagar.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPparcelapagar.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.id_conta_receber := Grid.Cells[2,Grid.row];
    FController.Model.id_caixa := Grid.Cells[3,Grid.row];
    FController.Model.id_contacorrente := Grid.Cells[4,Grid.row];
    FController.Model.id_forma := Grid.Cells[5,Grid.row];
    FController.Model.id_conta := Grid.Cells[6,Grid.row];
    FController.Model.data_pgto := Grid.Cells[7,Grid.row];
    FController.Model.id_cliente := Grid.Cells[8,Grid.row];
    FController.Model.vl_total := Grid.Cells[9,Grid.row];
    FController.Model.vl_desconto := Grid.Cells[10,Grid.row];
    FController.Model.vl_pago := Grid.Cells[11,Grid.row];
    FController.Model.vl_juros := Grid.Cells[12,Grid.row];
    FController.Model.vl_jurospago := Grid.Cells[13,Grid.row];
    FController.Model.debcre := Grid.Cells[14,Grid.row];
    FController.Model.id_cobrador := Grid.Cells[15,Grid.row];
    FController.Model.click := Grid.Cells[16,Grid.row];
    FController.Model.id_credito := Grid.Cells[17,Grid.row];
    FController.Model.documento := Grid.Cells[18,Grid.row];
    FController.Model.parcela := Grid.Cells[19,Grid.row];
    FController.Model.id_usuario := Grid.Cells[20,Grid.row];
    FController.Model.baixa_manual := Grid.Cells[21,Grid.row];
    FController.Model.id_movimento := Grid.Cells[22,Grid.row];
    FController.Model.id_cupons := Grid.Cells[23,Grid.row];
    FController.Model.id_pagamentos := Grid.Cells[24,Grid.row];
    FController.Model.obs := Grid.Cells[25,Grid.row];
    FController.Model.multa_paga := Grid.Cells[26,Grid.row];
    FController.Model.id_conta_receber_uniao := Grid.Cells[27,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPparcelapagar.LimparTela;  
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

procedure TFrm_ViewERPparcelapagar.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelapagar.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelapagar.Setid_conta_receber(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelapagar.Setid_caixa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelapagar.Setid_contacorrente(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelapagar.Setid_forma(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelapagar.Setid_conta(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelapagar.Setdata_pgto(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelapagar.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelapagar.Setvl_total(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelapagar.Setvl_desconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelapagar.Setvl_pago(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelapagar.Setvl_juros(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelapagar.Setvl_jurospago(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelapagar.Setdebcre(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelapagar.Setid_cobrador(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelapagar.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelapagar.Setid_credito(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelapagar.Setdocumento(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelapagar.Setparcela(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelapagar.Setid_usuario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelapagar.Setbaixa_manual(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelapagar.Setid_movimento(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelapagar.Setid_cupons(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelapagar.Setid_pagamentos(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelapagar.Setobs(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelapagar.Setmulta_paga(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPparcelapagar.Setid_conta_receber_uniao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
