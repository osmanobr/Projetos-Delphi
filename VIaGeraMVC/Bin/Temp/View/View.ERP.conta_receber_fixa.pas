
unit View.ERP.conta_receber_custodia;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.conta_receber_custodia, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPcontarecebercustodia = class(TForm) 
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
    FController : TControllerERPcontarecebercustodia; 
    Fid : Integer;
    Fid_cliente : Integer;
    Fnome_cliente : WideString;
    Fdia : WideString;
    Fid_forma : Integer;
    Fvalor : Double;
    Freferente : WideString;
    Fid_servico : Integer;
    Fnome_servico : WideString;
    Fvalor_servico : Double;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Fvalor_produto : Double;
    Fgera_venda : WideString;
    Fclick : Boolean;
    Fid_vendedor : Integer;
    Fnome_vendedor : WideString;
    Fcodigo_protesto : Integer;
    Fdias_protesto : Integer;
    Fvalor_cobranca : Double;
    Fid_empresas_boleto : Integer;
    Fid_contas_fixas : Integer;
    Fativo : Boolean;
    Fobs : WideString;
    Fdata_inicial_cobranca : Boolean;
    Falterar_valor_cobranca : Boolean;
    Finicio_cobranca : indefinido;
    Fdata_cobranca : indefinido;
    Fid_contador : Integer;
    Fnome_contador : WideString;
    Fpercentual_desconto_antecipacao : Double;
    Fdias_antecipacao_desconto : Integer;
    Fdesconto_valor : Boolean;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_cliente(const Value : Integer);
    procedure Setnome_cliente(const Value : WideString);
    procedure Setdia(const Value : WideString);
    procedure Setid_forma(const Value : Integer);
    procedure Setvalor(const Value : Double);
    procedure Setreferente(const Value : WideString);
    procedure Setid_servico(const Value : Integer);
    procedure Setnome_servico(const Value : WideString);
    procedure Setvalor_servico(const Value : Double);
    procedure Setid_produto(const Value : Integer);
    procedure Setnome_produto(const Value : WideString);
    procedure Setvalor_produto(const Value : Double);
    procedure Setgera_venda(const Value : WideString);
    procedure Setclick(const Value : Boolean);
    procedure Setid_vendedor(const Value : Integer);
    procedure Setnome_vendedor(const Value : WideString);
    procedure Setcodigo_protesto(const Value : Integer);
    procedure Setdias_protesto(const Value : Integer);
    procedure Setvalor_cobranca(const Value : Double);
    procedure Setid_empresas_boleto(const Value : Integer);
    procedure Setid_contas_fixas(const Value : Integer);
    procedure Setativo(const Value : Boolean);
    procedure Setobs(const Value : WideString);
    procedure Setdata_inicial_cobranca(const Value : Boolean);
    procedure Setalterar_valor_cobranca(const Value : Boolean);
    procedure Setinicio_cobranca(const Value : indefinido);
    procedure Setdata_cobranca(const Value : indefinido);
    procedure Setid_contador(const Value : Integer);
    procedure Setnome_contador(const Value : WideString);
    procedure Setpercentual_desconto_antecipacao(const Value : Double);
    procedure Setdias_antecipacao_desconto(const Value : Integer);
    procedure Setdesconto_valor(const Value : Boolean);

  public

    property id : Integer         read Fid    write Fid;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property nome_cliente : WideString         read Fnome_cliente    write Fnome_cliente;
    property dia : WideString         read Fdia    write Fdia;
    property id_forma : Integer         read Fid_forma    write Fid_forma;
    property valor : Double         read Fvalor    write Fvalor;
    property referente : WideString         read Freferente    write Freferente;
    property id_servico : Integer         read Fid_servico    write Fid_servico;
    property nome_servico : WideString         read Fnome_servico    write Fnome_servico;
    property valor_servico : Double         read Fvalor_servico    write Fvalor_servico;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property nome_produto : WideString         read Fnome_produto    write Fnome_produto;
    property valor_produto : Double         read Fvalor_produto    write Fvalor_produto;
    property gera_venda : WideString         read Fgera_venda    write Fgera_venda;
    property click : Boolean         read Fclick    write Fclick;
    property id_vendedor : Integer         read Fid_vendedor    write Fid_vendedor;
    property nome_vendedor : WideString         read Fnome_vendedor    write Fnome_vendedor;
    property codigo_protesto : Integer         read Fcodigo_protesto    write Fcodigo_protesto;
    property dias_protesto : Integer         read Fdias_protesto    write Fdias_protesto;
    property valor_cobranca : Double         read Fvalor_cobranca    write Fvalor_cobranca;
    property id_empresas_boleto : Integer         read Fid_empresas_boleto    write Fid_empresas_boleto;
    property id_contas_fixas : Integer         read Fid_contas_fixas    write Fid_contas_fixas;
    property ativo : Boolean         read Fativo    write Fativo;
    property obs : WideString         read Fobs    write Fobs;
    property data_inicial_cobranca : Boolean         read Fdata_inicial_cobranca    write Fdata_inicial_cobranca;
    property alterar_valor_cobranca : Boolean         read Falterar_valor_cobranca    write Falterar_valor_cobranca;
    property inicio_cobranca : indefinido         read Finicio_cobranca    write Finicio_cobranca;
    property data_cobranca : indefinido         read Fdata_cobranca    write Fdata_cobranca;
    property id_contador : Integer         read Fid_contador    write Fid_contador;
    property nome_contador : WideString         read Fnome_contador    write Fnome_contador;
    property percentual_desconto_antecipacao : Double         read Fpercentual_desconto_antecipacao    write Fpercentual_desconto_antecipacao;
    property dias_antecipacao_desconto : Integer         read Fdias_antecipacao_desconto    write Fdias_antecipacao_desconto;
    property desconto_valor : Boolean         read Fdesconto_valor    write Fdesconto_valor;

  end;

var
  Frm_ViewERPcontarecebercustodia : TFrm_ViewERPcontarecebercustodia; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 33; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].referente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_servico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_servico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_servico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gera_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_vendedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_vendedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].codigo_protesto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dias_protesto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_cobranca); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresas_boleto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_contas_fixas); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ativo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_inicial_cobranca); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].alterar_valor_cobranca); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].inicio_cobranca); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_cobranca); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_contador); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_contador); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].percentual_desconto_antecipacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dias_antecipacao_desconto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].desconto_valor); 
    end; 
end; 

procedure TFrm_ViewERPcontarecebercustodia.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.nome_cliente := Edit_nome_cliente.text;
      FController.Model.dia := Edit_dia.text;
      FController.Model.id_forma := Edit_id_forma.text;
      FController.Model.valor := Edit_valor.text;
      FController.Model.referente := Edit_referente.text;
      FController.Model.id_servico := Edit_id_servico.text;
      FController.Model.nome_servico := Edit_nome_servico.text;
      FController.Model.valor_servico := Edit_valor_servico.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.nome_produto := Edit_nome_produto.text;
      FController.Model.valor_produto := Edit_valor_produto.text;
      FController.Model.gera_venda := Edit_gera_venda.text;
      FController.Model.click := Edit_click.text;
      FController.Model.id_vendedor := Edit_id_vendedor.text;
      FController.Model.nome_vendedor := Edit_nome_vendedor.text;
      FController.Model.codigo_protesto := Edit_codigo_protesto.text;
      FController.Model.dias_protesto := Edit_dias_protesto.text;
      FController.Model.valor_cobranca := Edit_valor_cobranca.text;
      FController.Model.id_empresas_boleto := Edit_id_empresas_boleto.text;
      FController.Model.id_contas_fixas := Edit_id_contas_fixas.text;
      FController.Model.ativo := Edit_ativo.text;
      FController.Model.obs := Edit_obs.text;
      FController.Model.data_inicial_cobranca := Edit_data_inicial_cobranca.text;
      FController.Model.alterar_valor_cobranca := Edit_alterar_valor_cobranca.text;
      FController.Model.inicio_cobranca := Edit_inicio_cobranca.text;
      FController.Model.data_cobranca := Edit_data_cobranca.text;
      FController.Model.id_contador := Edit_id_contador.text;
      FController.Model.nome_contador := Edit_nome_contador.text;
      FController.Model.percentual_desconto_antecipacao := Edit_percentual_desconto_antecipacao.text;
      FController.Model.dias_antecipacao_desconto := Edit_dias_antecipacao_desconto.text;
      FController.Model.desconto_valor := Edit_desconto_valor.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPcontarecebercustodia.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPcontarecebercustodia.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPcontarecebercustodia.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPcontarecebercustodia.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPcontarecebercustodia.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPcontarecebercustodia.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPcontarecebercustodia.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 33;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := nome_cliente;  
     Grid.Cells[inttostr(i),0] := dia;  
     Grid.Cells[inttostr(i),0] := id_forma;  
     Grid.Cells[inttostr(i),0] := valor;  
     Grid.Cells[inttostr(i),0] := referente;  
     Grid.Cells[inttostr(i),0] := id_servico;  
     Grid.Cells[inttostr(i),0] := nome_servico;  
     Grid.Cells[inttostr(i),0] := valor_servico;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := nome_produto;  
     Grid.Cells[inttostr(i),0] := valor_produto;  
     Grid.Cells[inttostr(i),0] := gera_venda;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := id_vendedor;  
     Grid.Cells[inttostr(i),0] := nome_vendedor;  
     Grid.Cells[inttostr(i),0] := codigo_protesto;  
     Grid.Cells[inttostr(i),0] := dias_protesto;  
     Grid.Cells[inttostr(i),0] := valor_cobranca;  
     Grid.Cells[inttostr(i),0] := id_empresas_boleto;  
     Grid.Cells[inttostr(i),0] := id_contas_fixas;  
     Grid.Cells[inttostr(i),0] := ativo;  
     Grid.Cells[inttostr(i),0] := obs;  
     Grid.Cells[inttostr(i),0] := data_inicial_cobranca;  
     Grid.Cells[inttostr(i),0] := alterar_valor_cobranca;  
     Grid.Cells[inttostr(i),0] := inicio_cobranca;  
     Grid.Cells[inttostr(i),0] := data_cobranca;  
     Grid.Cells[inttostr(i),0] := id_contador;  
     Grid.Cells[inttostr(i),0] := nome_contador;  
     Grid.Cells[inttostr(i),0] := percentual_desconto_antecipacao;  
     Grid.Cells[inttostr(i),0] := dias_antecipacao_desconto;  
     Grid.Cells[inttostr(i),0] := desconto_valor;  
end;

procedure TFrm_ViewERPcontarecebercustodia.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPcontarecebercustodia.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPcontarecebercustodia.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_cliente := Grid.Cells[1,Grid.row];
    FController.Model.nome_cliente := Grid.Cells[2,Grid.row];
    FController.Model.dia := Grid.Cells[3,Grid.row];
    FController.Model.id_forma := Grid.Cells[4,Grid.row];
    FController.Model.valor := Grid.Cells[5,Grid.row];
    FController.Model.referente := Grid.Cells[6,Grid.row];
    FController.Model.id_servico := Grid.Cells[7,Grid.row];
    FController.Model.nome_servico := Grid.Cells[8,Grid.row];
    FController.Model.valor_servico := Grid.Cells[9,Grid.row];
    FController.Model.id_produto := Grid.Cells[10,Grid.row];
    FController.Model.nome_produto := Grid.Cells[11,Grid.row];
    FController.Model.valor_produto := Grid.Cells[12,Grid.row];
    FController.Model.gera_venda := Grid.Cells[13,Grid.row];
    FController.Model.click := Grid.Cells[14,Grid.row];
    FController.Model.id_vendedor := Grid.Cells[15,Grid.row];
    FController.Model.nome_vendedor := Grid.Cells[16,Grid.row];
    FController.Model.codigo_protesto := Grid.Cells[17,Grid.row];
    FController.Model.dias_protesto := Grid.Cells[18,Grid.row];
    FController.Model.valor_cobranca := Grid.Cells[19,Grid.row];
    FController.Model.id_empresas_boleto := Grid.Cells[20,Grid.row];
    FController.Model.id_contas_fixas := Grid.Cells[21,Grid.row];
    FController.Model.ativo := Grid.Cells[22,Grid.row];
    FController.Model.obs := Grid.Cells[23,Grid.row];
    FController.Model.data_inicial_cobranca := Grid.Cells[24,Grid.row];
    FController.Model.alterar_valor_cobranca := Grid.Cells[25,Grid.row];
    FController.Model.inicio_cobranca := Grid.Cells[26,Grid.row];
    FController.Model.data_cobranca := Grid.Cells[27,Grid.row];
    FController.Model.id_contador := Grid.Cells[28,Grid.row];
    FController.Model.nome_contador := Grid.Cells[29,Grid.row];
    FController.Model.percentual_desconto_antecipacao := Grid.Cells[30,Grid.row];
    FController.Model.dias_antecipacao_desconto := Grid.Cells[31,Grid.row];
    FController.Model.desconto_valor := Grid.Cells[32,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPcontarecebercustodia.LimparTela;  
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

procedure TFrm_ViewERPcontarecebercustodia.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontarecebercustodia.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontarecebercustodia.Setnome_cliente(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontarecebercustodia.Setdia(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontarecebercustodia.Setid_forma(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontarecebercustodia.Setvalor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontarecebercustodia.Setreferente(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontarecebercustodia.Setid_servico(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontarecebercustodia.Setnome_servico(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontarecebercustodia.Setvalor_servico(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontarecebercustodia.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontarecebercustodia.Setnome_produto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontarecebercustodia.Setvalor_produto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontarecebercustodia.Setgera_venda(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontarecebercustodia.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontarecebercustodia.Setid_vendedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontarecebercustodia.Setnome_vendedor(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontarecebercustodia.Setcodigo_protesto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontarecebercustodia.Setdias_protesto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontarecebercustodia.Setvalor_cobranca(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontarecebercustodia.Setid_empresas_boleto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontarecebercustodia.Setid_contas_fixas(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontarecebercustodia.Setativo(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontarecebercustodia.Setobs(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontarecebercustodia.Setdata_inicial_cobranca(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontarecebercustodia.Setalterar_valor_cobranca(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontarecebercustodia.Setinicio_cobranca(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontarecebercustodia.Setdata_cobranca(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontarecebercustodia.Setid_contador(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontarecebercustodia.Setnome_contador(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontarecebercustodia.Setpercentual_desconto_antecipacao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontarecebercustodia.Setdias_antecipacao_desconto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontarecebercustodia.Setdesconto_valor(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
