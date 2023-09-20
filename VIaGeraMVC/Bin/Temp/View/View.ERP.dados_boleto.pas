
unit View.ERP.d;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.d, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPd = class(TForm) 
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
    FController : TControllerERPd; 
    Fid : Integer;
    Fid_empresa_from_conta_receber : Integer;
    Fid_empresa_from_empresas_boleto : Integer;
    Fid_conta_receber : Integer;
    Fid_empresas_boleto : Integer;
    Fnosso_numero : WideString;
    Fpercentual_multa : Double;
    Fpercentual_desconto_abatimento : Double;
    Fdias_antecipacao_desconto : indefinido;
    Fpercentual_desconto_antecipacao : Double;
    Fvencto_original : TDateTime;
    Fcodigo_protesto : indefinido;
    Fdias_protesto : indefinido;
    Fbaixado : Boolean;
    Fdata_instrucao_baixa : TDateTime;
    Fdata_registro_baixa : TDateTime;
    Fregistrado : Boolean;
    Fdata_registro : TDateTime;
    Frejeitado : Boolean;
    Fmotivo_rejeicao : indefinido;
    Fhistorico : indefinido;
    Fdesconto_valor : Boolean;
    Fcarencia_pgto_multa : Integer;
    Fcarencia_pgto_juros : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa_from_conta_receber(const Value : Integer);
    procedure Setid_empresa_from_empresas_boleto(const Value : Integer);
    procedure Setid_conta_receber(const Value : Integer);
    procedure Setid_empresas_boleto(const Value : Integer);
    procedure Setnosso_numero(const Value : WideString);
    procedure Setpercentual_multa(const Value : Double);
    procedure Setpercentual_desconto_abatimento(const Value : Double);
    procedure Setdias_antecipacao_desconto(const Value : indefinido);
    procedure Setpercentual_desconto_antecipacao(const Value : Double);
    procedure Setvencto_original(const Value : TDateTime);
    procedure Setcodigo_protesto(const Value : indefinido);
    procedure Setdias_protesto(const Value : indefinido);
    procedure Setbaixado(const Value : Boolean);
    procedure Setdata_instrucao_baixa(const Value : TDateTime);
    procedure Setdata_registro_baixa(const Value : TDateTime);
    procedure Setregistrado(const Value : Boolean);
    procedure Setdata_registro(const Value : TDateTime);
    procedure Setrejeitado(const Value : Boolean);
    procedure Setmotivo_rejeicao(const Value : indefinido);
    procedure Sethistorico(const Value : indefinido);
    procedure Setdesconto_valor(const Value : Boolean);
    procedure Setcarencia_pgto_multa(const Value : Integer);
    procedure Setcarencia_pgto_juros(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa_from_conta_receber : Integer         read Fid_empresa_from_conta_receber    write Fid_empresa_from_conta_receber;
    property id_empresa_from_empresas_boleto : Integer         read Fid_empresa_from_empresas_boleto    write Fid_empresa_from_empresas_boleto;
    property id_conta_receber : Integer         read Fid_conta_receber    write Fid_conta_receber;
    property id_empresas_boleto : Integer         read Fid_empresas_boleto    write Fid_empresas_boleto;
    property nosso_numero : WideString         read Fnosso_numero    write Fnosso_numero;
    property percentual_multa : Double         read Fpercentual_multa    write Fpercentual_multa;
    property percentual_desconto_abatimento : Double         read Fpercentual_desconto_abatimento    write Fpercentual_desconto_abatimento;
    property dias_antecipacao_desconto : indefinido         read Fdias_antecipacao_desconto    write Fdias_antecipacao_desconto;
    property percentual_desconto_antecipacao : Double         read Fpercentual_desconto_antecipacao    write Fpercentual_desconto_antecipacao;
    property vencto_original : TDateTime         read Fvencto_original    write Fvencto_original;
    property codigo_protesto : indefinido         read Fcodigo_protesto    write Fcodigo_protesto;
    property dias_protesto : indefinido         read Fdias_protesto    write Fdias_protesto;
    property baixado : Boolean         read Fbaixado    write Fbaixado;
    property data_instrucao_baixa : TDateTime         read Fdata_instrucao_baixa    write Fdata_instrucao_baixa;
    property data_registro_baixa : TDateTime         read Fdata_registro_baixa    write Fdata_registro_baixa;
    property registrado : Boolean         read Fregistrado    write Fregistrado;
    property data_registro : TDateTime         read Fdata_registro    write Fdata_registro;
    property rejeitado : Boolean         read Frejeitado    write Frejeitado;
    property motivo_rejeicao : indefinido         read Fmotivo_rejeicao    write Fmotivo_rejeicao;
    property historico : indefinido         read Fhistorico    write Fhistorico;
    property desconto_valor : Boolean         read Fdesconto_valor    write Fdesconto_valor;
    property carencia_pgto_multa : Integer         read Fcarencia_pgto_multa    write Fcarencia_pgto_multa;
    property carencia_pgto_juros : Integer         read Fcarencia_pgto_juros    write Fcarencia_pgto_juros;

  end;

var
  Frm_ViewERPd : TFrm_ViewERPd; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 24; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa_from_conta_receber); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa_from_empresas_boleto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_conta_receber); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresas_boleto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nosso_numero); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].percentual_multa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].percentual_desconto_abatimento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dias_antecipacao_desconto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].percentual_desconto_antecipacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vencto_original); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].codigo_protesto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dias_protesto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].baixado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_instrucao_baixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_registro_baixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].registrado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_registro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].rejeitado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].motivo_rejeicao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].historico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].desconto_valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].carencia_pgto_multa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].carencia_pgto_juros); 
    end; 
end; 

procedure TFrm_ViewERPd.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa_from_conta_receber := Edit_id_empresa_from_conta_receber.text;
      FController.Model.id_empresa_from_empresas_boleto := Edit_id_empresa_from_empresas_boleto.text;
      FController.Model.id_conta_receber := Edit_id_conta_receber.text;
      FController.Model.id_empresas_boleto := Edit_id_empresas_boleto.text;
      FController.Model.nosso_numero := Edit_nosso_numero.text;
      FController.Model.percentual_multa := Edit_percentual_multa.text;
      FController.Model.percentual_desconto_abatimento := Edit_percentual_desconto_abatimento.text;
      FController.Model.dias_antecipacao_desconto := Edit_dias_antecipacao_desconto.text;
      FController.Model.percentual_desconto_antecipacao := Edit_percentual_desconto_antecipacao.text;
      FController.Model.vencto_original := Edit_vencto_original.text;
      FController.Model.codigo_protesto := Edit_codigo_protesto.text;
      FController.Model.dias_protesto := Edit_dias_protesto.text;
      FController.Model.baixado := Edit_baixado.text;
      FController.Model.data_instrucao_baixa := Edit_data_instrucao_baixa.text;
      FController.Model.data_registro_baixa := Edit_data_registro_baixa.text;
      FController.Model.registrado := Edit_registrado.text;
      FController.Model.data_registro := Edit_data_registro.text;
      FController.Model.rejeitado := Edit_rejeitado.text;
      FController.Model.motivo_rejeicao := Edit_motivo_rejeicao.text;
      FController.Model.historico := Edit_historico.text;
      FController.Model.desconto_valor := Edit_desconto_valor.text;
      FController.Model.carencia_pgto_multa := Edit_carencia_pgto_multa.text;
      FController.Model.carencia_pgto_juros := Edit_carencia_pgto_juros.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPd.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPd.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPd.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPd.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPd.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPd.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPd.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 24;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa_from_conta_receber;  
     Grid.Cells[inttostr(i),0] := id_empresa_from_empresas_boleto;  
     Grid.Cells[inttostr(i),0] := id_conta_receber;  
     Grid.Cells[inttostr(i),0] := id_empresas_boleto;  
     Grid.Cells[inttostr(i),0] := nosso_numero;  
     Grid.Cells[inttostr(i),0] := percentual_multa;  
     Grid.Cells[inttostr(i),0] := percentual_desconto_abatimento;  
     Grid.Cells[inttostr(i),0] := dias_antecipacao_desconto;  
     Grid.Cells[inttostr(i),0] := percentual_desconto_antecipacao;  
     Grid.Cells[inttostr(i),0] := vencto_original;  
     Grid.Cells[inttostr(i),0] := codigo_protesto;  
     Grid.Cells[inttostr(i),0] := dias_protesto;  
     Grid.Cells[inttostr(i),0] := baixado;  
     Grid.Cells[inttostr(i),0] := data_instrucao_baixa;  
     Grid.Cells[inttostr(i),0] := data_registro_baixa;  
     Grid.Cells[inttostr(i),0] := registrado;  
     Grid.Cells[inttostr(i),0] := data_registro;  
     Grid.Cells[inttostr(i),0] := rejeitado;  
     Grid.Cells[inttostr(i),0] := motivo_rejeicao;  
     Grid.Cells[inttostr(i),0] := historico;  
     Grid.Cells[inttostr(i),0] := desconto_valor;  
     Grid.Cells[inttostr(i),0] := carencia_pgto_multa;  
     Grid.Cells[inttostr(i),0] := carencia_pgto_juros;  
end;

procedure TFrm_ViewERPd.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPd.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPd.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa_from_conta_receber := Grid.Cells[1,Grid.row];
    FController.Model.id_empresa_from_empresas_boleto := Grid.Cells[2,Grid.row];
    FController.Model.id_conta_receber := Grid.Cells[3,Grid.row];
    FController.Model.id_empresas_boleto := Grid.Cells[4,Grid.row];
    FController.Model.nosso_numero := Grid.Cells[5,Grid.row];
    FController.Model.percentual_multa := Grid.Cells[6,Grid.row];
    FController.Model.percentual_desconto_abatimento := Grid.Cells[7,Grid.row];
    FController.Model.dias_antecipacao_desconto := Grid.Cells[8,Grid.row];
    FController.Model.percentual_desconto_antecipacao := Grid.Cells[9,Grid.row];
    FController.Model.vencto_original := Grid.Cells[10,Grid.row];
    FController.Model.codigo_protesto := Grid.Cells[11,Grid.row];
    FController.Model.dias_protesto := Grid.Cells[12,Grid.row];
    FController.Model.baixado := Grid.Cells[13,Grid.row];
    FController.Model.data_instrucao_baixa := Grid.Cells[14,Grid.row];
    FController.Model.data_registro_baixa := Grid.Cells[15,Grid.row];
    FController.Model.registrado := Grid.Cells[16,Grid.row];
    FController.Model.data_registro := Grid.Cells[17,Grid.row];
    FController.Model.rejeitado := Grid.Cells[18,Grid.row];
    FController.Model.motivo_rejeicao := Grid.Cells[19,Grid.row];
    FController.Model.historico := Grid.Cells[20,Grid.row];
    FController.Model.desconto_valor := Grid.Cells[21,Grid.row];
    FController.Model.carencia_pgto_multa := Grid.Cells[22,Grid.row];
    FController.Model.carencia_pgto_juros := Grid.Cells[23,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPd.LimparTela;  
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

procedure TFrm_ViewERPd.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setid_empresa_from_conta_receber(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setid_empresa_from_empresas_boleto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setid_conta_receber(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setid_empresas_boleto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setnosso_numero(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setpercentual_multa(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setpercentual_desconto_abatimento(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setdias_antecipacao_desconto(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setpercentual_desconto_antecipacao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setvencto_original(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setcodigo_protesto(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setdias_protesto(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setbaixado(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setdata_instrucao_baixa(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setdata_registro_baixa(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setregistrado(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setdata_registro(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setrejeitado(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setmotivo_rejeicao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Sethistorico(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setdesconto_valor(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setcarencia_pgto_multa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPd.Setcarencia_pgto_juros(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
