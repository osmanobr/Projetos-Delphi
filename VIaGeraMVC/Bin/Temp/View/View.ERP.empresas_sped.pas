
unit View.ERP.empresas_relatorios;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.empresas_relatorios, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPempresasrelatorios = class(TForm) 
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
    FController : TControllerERPempresasrelatorios; 
    Fid : Integer;
    Fibge : Integer;
    Fporta : WideString;
    Fsuframa : WideString;
    Ferro : Integer;
    Fatividade : Integer;
    Fperfil : Integer;
    Fcartao1 : WideString;
    Fcartao2 : WideString;
    Fcartao3 : WideString;
    Fcartao4 : WideString;
    Fcartao5 : WideString;
    Fcartao6 : WideString;
    Fcod_cartao1 : WideString;
    Fcod_cartao2 : WideString;
    Fcod_cartao3 : WideString;
    Fcod_cartao4 : WideString;
    Fcod_cartao5 : WideString;
    Fcod_cartao6 : WideString;
    Fcod_forn1 : WideString;
    Fcod_forn2 : WideString;
    Fcod_forn3 : WideString;
    Fcod_forn4 : WideString;
    Fcod_forn5 : WideString;
    Fcod_forn6 : WideString;
    Fregistro_1010_3 : Boolean;
    Fregistro_1010_4 : Boolean;
    Fregistro_1010_5 : Boolean;
    Fregistro_1010_7 : Boolean;
    Fregistro_1010_9 : Boolean;
    Fregime : WideString;
    Fsaida : Boolean;
    Fgera_cartao : Boolean;
    Funificar_cartao : Boolean;
    Ficms_dia : WideString;
    Ficms_codigo_receita : WideString;
    Ficms_numero_processo : WideString;
    Ficms_descricao_processo : WideString;
    Ficms_aliquota_ecf_1 : Double;
    Ficms_aliquota_ecf_2 : Double;
    Ficms_aliquota_ecf_3 : Double;
    Ficms_aliquota_ecf_4 : Double;
    Ficms_aliquota_ecf_5 : Double;
    Ficms_aliquota_ecf_6 : Double;
    Ficms_usuario_ecf : Integer;
    Ficms_cfoptrib : WideString;
    Ficms_cfopsub : WideString;
    Ficms_cfopins : WideString;
    Ficms_blocok : Boolean;
    Ficms_inventario : Boolean;
    Ficms_zera : Boolean;
    Ficms_dominio : Boolean;
    Ficms_gera_ipi : Boolean;
    Fenergia_codigo : Integer;
    Fenergia_descricao : WideString;
    Fenergia_ncm : Integer;
    Fenergia_aliquota : Double;
    Fplanocontas_tributado : WideString;
    Fplanocontas_substituicao_tributaria : WideString;
    Fplanocontas_isento : WideString;
    Fplanocontas_nao_incidencia : WideString;
    Fplanocontas_tributado_e_pauta_fiscal : WideString;
    Fplanocontas_planocontaspadrao : WideString;
    Fplanocontas_planocontaspadraoentrada : WideString;
    Ftipogeracaopiscofins : Integer;
    Flucroreal : Boolean;
    Ftipoatividade : Integer;
    Fcfop_nao_gera_credito_c170 : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setibge(const Value : Integer);
    procedure Setporta(const Value : WideString);
    procedure Setsuframa(const Value : WideString);
    procedure Seterro(const Value : Integer);
    procedure Setatividade(const Value : Integer);
    procedure Setperfil(const Value : Integer);
    procedure Setcartao1(const Value : WideString);
    procedure Setcartao2(const Value : WideString);
    procedure Setcartao3(const Value : WideString);
    procedure Setcartao4(const Value : WideString);
    procedure Setcartao5(const Value : WideString);
    procedure Setcartao6(const Value : WideString);
    procedure Setcod_cartao1(const Value : WideString);
    procedure Setcod_cartao2(const Value : WideString);
    procedure Setcod_cartao3(const Value : WideString);
    procedure Setcod_cartao4(const Value : WideString);
    procedure Setcod_cartao5(const Value : WideString);
    procedure Setcod_cartao6(const Value : WideString);
    procedure Setcod_forn1(const Value : WideString);
    procedure Setcod_forn2(const Value : WideString);
    procedure Setcod_forn3(const Value : WideString);
    procedure Setcod_forn4(const Value : WideString);
    procedure Setcod_forn5(const Value : WideString);
    procedure Setcod_forn6(const Value : WideString);
    procedure Setregistro_1010_3(const Value : Boolean);
    procedure Setregistro_1010_4(const Value : Boolean);
    procedure Setregistro_1010_5(const Value : Boolean);
    procedure Setregistro_1010_7(const Value : Boolean);
    procedure Setregistro_1010_9(const Value : Boolean);
    procedure Setregime(const Value : WideString);
    procedure Setsaida(const Value : Boolean);
    procedure Setgera_cartao(const Value : Boolean);
    procedure Setunificar_cartao(const Value : Boolean);
    procedure Seticms_dia(const Value : WideString);
    procedure Seticms_codigo_receita(const Value : WideString);
    procedure Seticms_numero_processo(const Value : WideString);
    procedure Seticms_descricao_processo(const Value : WideString);
    procedure Seticms_aliquota_ecf_1(const Value : Double);
    procedure Seticms_aliquota_ecf_2(const Value : Double);
    procedure Seticms_aliquota_ecf_3(const Value : Double);
    procedure Seticms_aliquota_ecf_4(const Value : Double);
    procedure Seticms_aliquota_ecf_5(const Value : Double);
    procedure Seticms_aliquota_ecf_6(const Value : Double);
    procedure Seticms_usuario_ecf(const Value : Integer);
    procedure Seticms_cfoptrib(const Value : WideString);
    procedure Seticms_cfopsub(const Value : WideString);
    procedure Seticms_cfopins(const Value : WideString);
    procedure Seticms_blocok(const Value : Boolean);
    procedure Seticms_inventario(const Value : Boolean);
    procedure Seticms_zera(const Value : Boolean);
    procedure Seticms_dominio(const Value : Boolean);
    procedure Seticms_gera_ipi(const Value : Boolean);
    procedure Setenergia_codigo(const Value : Integer);
    procedure Setenergia_descricao(const Value : WideString);
    procedure Setenergia_ncm(const Value : Integer);
    procedure Setenergia_aliquota(const Value : Double);
    procedure Setplanocontas_tributado(const Value : WideString);
    procedure Setplanocontas_substituicao_tributaria(const Value : WideString);
    procedure Setplanocontas_isento(const Value : WideString);
    procedure Setplanocontas_nao_incidencia(const Value : WideString);
    procedure Setplanocontas_tributado_e_pauta_fiscal(const Value : WideString);
    procedure Setplanocontas_planocontaspadrao(const Value : WideString);
    procedure Setplanocontas_planocontaspadraoentrada(const Value : WideString);
    procedure Settipogeracaopiscofins(const Value : Integer);
    procedure Setlucroreal(const Value : Boolean);
    procedure Settipoatividade(const Value : Integer);
    procedure Setcfop_nao_gera_credito_c170(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property ibge : Integer         read Fibge    write Fibge;
    property porta : WideString         read Fporta    write Fporta;
    property suframa : WideString         read Fsuframa    write Fsuframa;
    property erro : Integer         read Ferro    write Ferro;
    property atividade : Integer         read Fatividade    write Fatividade;
    property perfil : Integer         read Fperfil    write Fperfil;
    property cartao1 : WideString         read Fcartao1    write Fcartao1;
    property cartao2 : WideString         read Fcartao2    write Fcartao2;
    property cartao3 : WideString         read Fcartao3    write Fcartao3;
    property cartao4 : WideString         read Fcartao4    write Fcartao4;
    property cartao5 : WideString         read Fcartao5    write Fcartao5;
    property cartao6 : WideString         read Fcartao6    write Fcartao6;
    property cod_cartao1 : WideString         read Fcod_cartao1    write Fcod_cartao1;
    property cod_cartao2 : WideString         read Fcod_cartao2    write Fcod_cartao2;
    property cod_cartao3 : WideString         read Fcod_cartao3    write Fcod_cartao3;
    property cod_cartao4 : WideString         read Fcod_cartao4    write Fcod_cartao4;
    property cod_cartao5 : WideString         read Fcod_cartao5    write Fcod_cartao5;
    property cod_cartao6 : WideString         read Fcod_cartao6    write Fcod_cartao6;
    property cod_forn1 : WideString         read Fcod_forn1    write Fcod_forn1;
    property cod_forn2 : WideString         read Fcod_forn2    write Fcod_forn2;
    property cod_forn3 : WideString         read Fcod_forn3    write Fcod_forn3;
    property cod_forn4 : WideString         read Fcod_forn4    write Fcod_forn4;
    property cod_forn5 : WideString         read Fcod_forn5    write Fcod_forn5;
    property cod_forn6 : WideString         read Fcod_forn6    write Fcod_forn6;
    property registro_1010_3 : Boolean         read Fregistro_1010_3    write Fregistro_1010_3;
    property registro_1010_4 : Boolean         read Fregistro_1010_4    write Fregistro_1010_4;
    property registro_1010_5 : Boolean         read Fregistro_1010_5    write Fregistro_1010_5;
    property registro_1010_7 : Boolean         read Fregistro_1010_7    write Fregistro_1010_7;
    property registro_1010_9 : Boolean         read Fregistro_1010_9    write Fregistro_1010_9;
    property regime : WideString         read Fregime    write Fregime;
    property saida : Boolean         read Fsaida    write Fsaida;
    property gera_cartao : Boolean         read Fgera_cartao    write Fgera_cartao;
    property unificar_cartao : Boolean         read Funificar_cartao    write Funificar_cartao;
    property icms_dia : WideString         read Ficms_dia    write Ficms_dia;
    property icms_codigo_receita : WideString         read Ficms_codigo_receita    write Ficms_codigo_receita;
    property icms_numero_processo : WideString         read Ficms_numero_processo    write Ficms_numero_processo;
    property icms_descricao_processo : WideString         read Ficms_descricao_processo    write Ficms_descricao_processo;
    property icms_aliquota_ecf_1 : Double         read Ficms_aliquota_ecf_1    write Ficms_aliquota_ecf_1;
    property icms_aliquota_ecf_2 : Double         read Ficms_aliquota_ecf_2    write Ficms_aliquota_ecf_2;
    property icms_aliquota_ecf_3 : Double         read Ficms_aliquota_ecf_3    write Ficms_aliquota_ecf_3;
    property icms_aliquota_ecf_4 : Double         read Ficms_aliquota_ecf_4    write Ficms_aliquota_ecf_4;
    property icms_aliquota_ecf_5 : Double         read Ficms_aliquota_ecf_5    write Ficms_aliquota_ecf_5;
    property icms_aliquota_ecf_6 : Double         read Ficms_aliquota_ecf_6    write Ficms_aliquota_ecf_6;
    property icms_usuario_ecf : Integer         read Ficms_usuario_ecf    write Ficms_usuario_ecf;
    property icms_cfoptrib : WideString         read Ficms_cfoptrib    write Ficms_cfoptrib;
    property icms_cfopsub : WideString         read Ficms_cfopsub    write Ficms_cfopsub;
    property icms_cfopins : WideString         read Ficms_cfopins    write Ficms_cfopins;
    property icms_blocok : Boolean         read Ficms_blocok    write Ficms_blocok;
    property icms_inventario : Boolean         read Ficms_inventario    write Ficms_inventario;
    property icms_zera : Boolean         read Ficms_zera    write Ficms_zera;
    property icms_dominio : Boolean         read Ficms_dominio    write Ficms_dominio;
    property icms_gera_ipi : Boolean         read Ficms_gera_ipi    write Ficms_gera_ipi;
    property energia_codigo : Integer         read Fenergia_codigo    write Fenergia_codigo;
    property energia_descricao : WideString         read Fenergia_descricao    write Fenergia_descricao;
    property energia_ncm : Integer         read Fenergia_ncm    write Fenergia_ncm;
    property energia_aliquota : Double         read Fenergia_aliquota    write Fenergia_aliquota;
    property planocontas_tributado : WideString         read Fplanocontas_tributado    write Fplanocontas_tributado;
    property planocontas_substituicao_tributaria : WideString         read Fplanocontas_substituicao_tributaria    write Fplanocontas_substituicao_tributaria;
    property planocontas_isento : WideString         read Fplanocontas_isento    write Fplanocontas_isento;
    property planocontas_nao_incidencia : WideString         read Fplanocontas_nao_incidencia    write Fplanocontas_nao_incidencia;
    property planocontas_tributado_e_pauta_fiscal : WideString         read Fplanocontas_tributado_e_pauta_fiscal    write Fplanocontas_tributado_e_pauta_fiscal;
    property planocontas_planocontaspadrao : WideString         read Fplanocontas_planocontaspadrao    write Fplanocontas_planocontaspadrao;
    property planocontas_planocontaspadraoentrada : WideString         read Fplanocontas_planocontaspadraoentrada    write Fplanocontas_planocontaspadraoentrada;
    property tipogeracaopiscofins : Integer         read Ftipogeracaopiscofins    write Ftipogeracaopiscofins;
    property lucroreal : Boolean         read Flucroreal    write Flucroreal;
    property tipoatividade : Integer         read Ftipoatividade    write Ftipoatividade;
    property cfop_nao_gera_credito_c170 : indefinido         read Fcfop_nao_gera_credito_c170    write Fcfop_nao_gera_credito_c170;

  end;

var
  Frm_ViewERPempresasrelatorios : TFrm_ViewERPempresasrelatorios; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 68; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ibge); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].porta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].suframa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].erro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].atividade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].perfil); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cartao1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cartao2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cartao3); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cartao4); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cartao5); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cartao6); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cod_cartao1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cod_cartao2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cod_cartao3); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cod_cartao4); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cod_cartao5); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cod_cartao6); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cod_forn1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cod_forn2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cod_forn3); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cod_forn4); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cod_forn5); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cod_forn6); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].registro_1010_3); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].registro_1010_4); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].registro_1010_5); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].registro_1010_7); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].registro_1010_9); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].regime); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].saida); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gera_cartao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unificar_cartao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms_dia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms_codigo_receita); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms_numero_processo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms_descricao_processo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms_aliquota_ecf_1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms_aliquota_ecf_2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms_aliquota_ecf_3); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms_aliquota_ecf_4); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms_aliquota_ecf_5); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms_aliquota_ecf_6); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms_usuario_ecf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms_cfoptrib); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms_cfopsub); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms_cfopins); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms_blocok); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms_inventario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms_zera); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms_dominio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms_gera_ipi); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].energia_codigo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].energia_descricao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].energia_ncm); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].energia_aliquota); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].planocontas_tributado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].planocontas_substituicao_tributaria); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].planocontas_isento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].planocontas_nao_incidencia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].planocontas_tributado_e_pauta_fiscal); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].planocontas_planocontaspadrao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].planocontas_planocontaspadraoentrada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipogeracaopiscofins); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].lucroreal); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipoatividade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cfop_nao_gera_credito_c170); 
    end; 
end; 

procedure TFrm_ViewERPempresasrelatorios.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.ibge := Edit_ibge.text;
      FController.Model.porta := Edit_porta.text;
      FController.Model.suframa := Edit_suframa.text;
      FController.Model.erro := Edit_erro.text;
      FController.Model.atividade := Edit_atividade.text;
      FController.Model.perfil := Edit_perfil.text;
      FController.Model.cartao1 := Edit_cartao1.text;
      FController.Model.cartao2 := Edit_cartao2.text;
      FController.Model.cartao3 := Edit_cartao3.text;
      FController.Model.cartao4 := Edit_cartao4.text;
      FController.Model.cartao5 := Edit_cartao5.text;
      FController.Model.cartao6 := Edit_cartao6.text;
      FController.Model.cod_cartao1 := Edit_cod_cartao1.text;
      FController.Model.cod_cartao2 := Edit_cod_cartao2.text;
      FController.Model.cod_cartao3 := Edit_cod_cartao3.text;
      FController.Model.cod_cartao4 := Edit_cod_cartao4.text;
      FController.Model.cod_cartao5 := Edit_cod_cartao5.text;
      FController.Model.cod_cartao6 := Edit_cod_cartao6.text;
      FController.Model.cod_forn1 := Edit_cod_forn1.text;
      FController.Model.cod_forn2 := Edit_cod_forn2.text;
      FController.Model.cod_forn3 := Edit_cod_forn3.text;
      FController.Model.cod_forn4 := Edit_cod_forn4.text;
      FController.Model.cod_forn5 := Edit_cod_forn5.text;
      FController.Model.cod_forn6 := Edit_cod_forn6.text;
      FController.Model.registro_1010_3 := Edit_registro_1010_3.text;
      FController.Model.registro_1010_4 := Edit_registro_1010_4.text;
      FController.Model.registro_1010_5 := Edit_registro_1010_5.text;
      FController.Model.registro_1010_7 := Edit_registro_1010_7.text;
      FController.Model.registro_1010_9 := Edit_registro_1010_9.text;
      FController.Model.regime := Edit_regime.text;
      FController.Model.saida := Edit_saida.text;
      FController.Model.gera_cartao := Edit_gera_cartao.text;
      FController.Model.unificar_cartao := Edit_unificar_cartao.text;
      FController.Model.icms_dia := Edit_icms_dia.text;
      FController.Model.icms_codigo_receita := Edit_icms_codigo_receita.text;
      FController.Model.icms_numero_processo := Edit_icms_numero_processo.text;
      FController.Model.icms_descricao_processo := Edit_icms_descricao_processo.text;
      FController.Model.icms_aliquota_ecf_1 := Edit_icms_aliquota_ecf_1.text;
      FController.Model.icms_aliquota_ecf_2 := Edit_icms_aliquota_ecf_2.text;
      FController.Model.icms_aliquota_ecf_3 := Edit_icms_aliquota_ecf_3.text;
      FController.Model.icms_aliquota_ecf_4 := Edit_icms_aliquota_ecf_4.text;
      FController.Model.icms_aliquota_ecf_5 := Edit_icms_aliquota_ecf_5.text;
      FController.Model.icms_aliquota_ecf_6 := Edit_icms_aliquota_ecf_6.text;
      FController.Model.icms_usuario_ecf := Edit_icms_usuario_ecf.text;
      FController.Model.icms_cfoptrib := Edit_icms_cfoptrib.text;
      FController.Model.icms_cfopsub := Edit_icms_cfopsub.text;
      FController.Model.icms_cfopins := Edit_icms_cfopins.text;
      FController.Model.icms_blocok := Edit_icms_blocok.text;
      FController.Model.icms_inventario := Edit_icms_inventario.text;
      FController.Model.icms_zera := Edit_icms_zera.text;
      FController.Model.icms_dominio := Edit_icms_dominio.text;
      FController.Model.icms_gera_ipi := Edit_icms_gera_ipi.text;
      FController.Model.energia_codigo := Edit_energia_codigo.text;
      FController.Model.energia_descricao := Edit_energia_descricao.text;
      FController.Model.energia_ncm := Edit_energia_ncm.text;
      FController.Model.energia_aliquota := Edit_energia_aliquota.text;
      FController.Model.planocontas_tributado := Edit_planocontas_tributado.text;
      FController.Model.planocontas_substituicao_tributaria := Edit_planocontas_substituicao_tributaria.text;
      FController.Model.planocontas_isento := Edit_planocontas_isento.text;
      FController.Model.planocontas_nao_incidencia := Edit_planocontas_nao_incidencia.text;
      FController.Model.planocontas_tributado_e_pauta_fiscal := Edit_planocontas_tributado_e_pauta_fiscal.text;
      FController.Model.planocontas_planocontaspadrao := Edit_planocontas_planocontaspadrao.text;
      FController.Model.planocontas_planocontaspadraoentrada := Edit_planocontas_planocontaspadraoentrada.text;
      FController.Model.tipogeracaopiscofins := Edit_tipogeracaopiscofins.text;
      FController.Model.lucroreal := Edit_lucroreal.text;
      FController.Model.tipoatividade := Edit_tipoatividade.text;
      FController.Model.cfop_nao_gera_credito_c170 := Edit_cfop_nao_gera_credito_c170.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPempresasrelatorios.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPempresasrelatorios.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPempresasrelatorios.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPempresasrelatorios.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPempresasrelatorios.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPempresasrelatorios.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPempresasrelatorios.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 68;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := ibge;  
     Grid.Cells[inttostr(i),0] := porta;  
     Grid.Cells[inttostr(i),0] := suframa;  
     Grid.Cells[inttostr(i),0] := erro;  
     Grid.Cells[inttostr(i),0] := atividade;  
     Grid.Cells[inttostr(i),0] := perfil;  
     Grid.Cells[inttostr(i),0] := cartao1;  
     Grid.Cells[inttostr(i),0] := cartao2;  
     Grid.Cells[inttostr(i),0] := cartao3;  
     Grid.Cells[inttostr(i),0] := cartao4;  
     Grid.Cells[inttostr(i),0] := cartao5;  
     Grid.Cells[inttostr(i),0] := cartao6;  
     Grid.Cells[inttostr(i),0] := cod_cartao1;  
     Grid.Cells[inttostr(i),0] := cod_cartao2;  
     Grid.Cells[inttostr(i),0] := cod_cartao3;  
     Grid.Cells[inttostr(i),0] := cod_cartao4;  
     Grid.Cells[inttostr(i),0] := cod_cartao5;  
     Grid.Cells[inttostr(i),0] := cod_cartao6;  
     Grid.Cells[inttostr(i),0] := cod_forn1;  
     Grid.Cells[inttostr(i),0] := cod_forn2;  
     Grid.Cells[inttostr(i),0] := cod_forn3;  
     Grid.Cells[inttostr(i),0] := cod_forn4;  
     Grid.Cells[inttostr(i),0] := cod_forn5;  
     Grid.Cells[inttostr(i),0] := cod_forn6;  
     Grid.Cells[inttostr(i),0] := registro_1010_3;  
     Grid.Cells[inttostr(i),0] := registro_1010_4;  
     Grid.Cells[inttostr(i),0] := registro_1010_5;  
     Grid.Cells[inttostr(i),0] := registro_1010_7;  
     Grid.Cells[inttostr(i),0] := registro_1010_9;  
     Grid.Cells[inttostr(i),0] := regime;  
     Grid.Cells[inttostr(i),0] := saida;  
     Grid.Cells[inttostr(i),0] := gera_cartao;  
     Grid.Cells[inttostr(i),0] := unificar_cartao;  
     Grid.Cells[inttostr(i),0] := icms_dia;  
     Grid.Cells[inttostr(i),0] := icms_codigo_receita;  
     Grid.Cells[inttostr(i),0] := icms_numero_processo;  
     Grid.Cells[inttostr(i),0] := icms_descricao_processo;  
     Grid.Cells[inttostr(i),0] := icms_aliquota_ecf_1;  
     Grid.Cells[inttostr(i),0] := icms_aliquota_ecf_2;  
     Grid.Cells[inttostr(i),0] := icms_aliquota_ecf_3;  
     Grid.Cells[inttostr(i),0] := icms_aliquota_ecf_4;  
     Grid.Cells[inttostr(i),0] := icms_aliquota_ecf_5;  
     Grid.Cells[inttostr(i),0] := icms_aliquota_ecf_6;  
     Grid.Cells[inttostr(i),0] := icms_usuario_ecf;  
     Grid.Cells[inttostr(i),0] := icms_cfoptrib;  
     Grid.Cells[inttostr(i),0] := icms_cfopsub;  
     Grid.Cells[inttostr(i),0] := icms_cfopins;  
     Grid.Cells[inttostr(i),0] := icms_blocok;  
     Grid.Cells[inttostr(i),0] := icms_inventario;  
     Grid.Cells[inttostr(i),0] := icms_zera;  
     Grid.Cells[inttostr(i),0] := icms_dominio;  
     Grid.Cells[inttostr(i),0] := icms_gera_ipi;  
     Grid.Cells[inttostr(i),0] := energia_codigo;  
     Grid.Cells[inttostr(i),0] := energia_descricao;  
     Grid.Cells[inttostr(i),0] := energia_ncm;  
     Grid.Cells[inttostr(i),0] := energia_aliquota;  
     Grid.Cells[inttostr(i),0] := planocontas_tributado;  
     Grid.Cells[inttostr(i),0] := planocontas_substituicao_tributaria;  
     Grid.Cells[inttostr(i),0] := planocontas_isento;  
     Grid.Cells[inttostr(i),0] := planocontas_nao_incidencia;  
     Grid.Cells[inttostr(i),0] := planocontas_tributado_e_pauta_fiscal;  
     Grid.Cells[inttostr(i),0] := planocontas_planocontaspadrao;  
     Grid.Cells[inttostr(i),0] := planocontas_planocontaspadraoentrada;  
     Grid.Cells[inttostr(i),0] := tipogeracaopiscofins;  
     Grid.Cells[inttostr(i),0] := lucroreal;  
     Grid.Cells[inttostr(i),0] := tipoatividade;  
     Grid.Cells[inttostr(i),0] := cfop_nao_gera_credito_c170;  
end;

procedure TFrm_ViewERPempresasrelatorios.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPempresasrelatorios.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPempresasrelatorios.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.ibge := Grid.Cells[1,Grid.row];
    FController.Model.porta := Grid.Cells[2,Grid.row];
    FController.Model.suframa := Grid.Cells[3,Grid.row];
    FController.Model.erro := Grid.Cells[4,Grid.row];
    FController.Model.atividade := Grid.Cells[5,Grid.row];
    FController.Model.perfil := Grid.Cells[6,Grid.row];
    FController.Model.cartao1 := Grid.Cells[7,Grid.row];
    FController.Model.cartao2 := Grid.Cells[8,Grid.row];
    FController.Model.cartao3 := Grid.Cells[9,Grid.row];
    FController.Model.cartao4 := Grid.Cells[10,Grid.row];
    FController.Model.cartao5 := Grid.Cells[11,Grid.row];
    FController.Model.cartao6 := Grid.Cells[12,Grid.row];
    FController.Model.cod_cartao1 := Grid.Cells[13,Grid.row];
    FController.Model.cod_cartao2 := Grid.Cells[14,Grid.row];
    FController.Model.cod_cartao3 := Grid.Cells[15,Grid.row];
    FController.Model.cod_cartao4 := Grid.Cells[16,Grid.row];
    FController.Model.cod_cartao5 := Grid.Cells[17,Grid.row];
    FController.Model.cod_cartao6 := Grid.Cells[18,Grid.row];
    FController.Model.cod_forn1 := Grid.Cells[19,Grid.row];
    FController.Model.cod_forn2 := Grid.Cells[20,Grid.row];
    FController.Model.cod_forn3 := Grid.Cells[21,Grid.row];
    FController.Model.cod_forn4 := Grid.Cells[22,Grid.row];
    FController.Model.cod_forn5 := Grid.Cells[23,Grid.row];
    FController.Model.cod_forn6 := Grid.Cells[24,Grid.row];
    FController.Model.registro_1010_3 := Grid.Cells[25,Grid.row];
    FController.Model.registro_1010_4 := Grid.Cells[26,Grid.row];
    FController.Model.registro_1010_5 := Grid.Cells[27,Grid.row];
    FController.Model.registro_1010_7 := Grid.Cells[28,Grid.row];
    FController.Model.registro_1010_9 := Grid.Cells[29,Grid.row];
    FController.Model.regime := Grid.Cells[30,Grid.row];
    FController.Model.saida := Grid.Cells[31,Grid.row];
    FController.Model.gera_cartao := Grid.Cells[32,Grid.row];
    FController.Model.unificar_cartao := Grid.Cells[33,Grid.row];
    FController.Model.icms_dia := Grid.Cells[34,Grid.row];
    FController.Model.icms_codigo_receita := Grid.Cells[35,Grid.row];
    FController.Model.icms_numero_processo := Grid.Cells[36,Grid.row];
    FController.Model.icms_descricao_processo := Grid.Cells[37,Grid.row];
    FController.Model.icms_aliquota_ecf_1 := Grid.Cells[38,Grid.row];
    FController.Model.icms_aliquota_ecf_2 := Grid.Cells[39,Grid.row];
    FController.Model.icms_aliquota_ecf_3 := Grid.Cells[40,Grid.row];
    FController.Model.icms_aliquota_ecf_4 := Grid.Cells[41,Grid.row];
    FController.Model.icms_aliquota_ecf_5 := Grid.Cells[42,Grid.row];
    FController.Model.icms_aliquota_ecf_6 := Grid.Cells[43,Grid.row];
    FController.Model.icms_usuario_ecf := Grid.Cells[44,Grid.row];
    FController.Model.icms_cfoptrib := Grid.Cells[45,Grid.row];
    FController.Model.icms_cfopsub := Grid.Cells[46,Grid.row];
    FController.Model.icms_cfopins := Grid.Cells[47,Grid.row];
    FController.Model.icms_blocok := Grid.Cells[48,Grid.row];
    FController.Model.icms_inventario := Grid.Cells[49,Grid.row];
    FController.Model.icms_zera := Grid.Cells[50,Grid.row];
    FController.Model.icms_dominio := Grid.Cells[51,Grid.row];
    FController.Model.icms_gera_ipi := Grid.Cells[52,Grid.row];
    FController.Model.energia_codigo := Grid.Cells[53,Grid.row];
    FController.Model.energia_descricao := Grid.Cells[54,Grid.row];
    FController.Model.energia_ncm := Grid.Cells[55,Grid.row];
    FController.Model.energia_aliquota := Grid.Cells[56,Grid.row];
    FController.Model.planocontas_tributado := Grid.Cells[57,Grid.row];
    FController.Model.planocontas_substituicao_tributaria := Grid.Cells[58,Grid.row];
    FController.Model.planocontas_isento := Grid.Cells[59,Grid.row];
    FController.Model.planocontas_nao_incidencia := Grid.Cells[60,Grid.row];
    FController.Model.planocontas_tributado_e_pauta_fiscal := Grid.Cells[61,Grid.row];
    FController.Model.planocontas_planocontaspadrao := Grid.Cells[62,Grid.row];
    FController.Model.planocontas_planocontaspadraoentrada := Grid.Cells[63,Grid.row];
    FController.Model.tipogeracaopiscofins := Grid.Cells[64,Grid.row];
    FController.Model.lucroreal := Grid.Cells[65,Grid.row];
    FController.Model.tipoatividade := Grid.Cells[66,Grid.row];
    FController.Model.cfop_nao_gera_credito_c170 := Grid.Cells[67,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPempresasrelatorios.LimparTela;  
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

procedure TFrm_ViewERPempresasrelatorios.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setibge(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setporta(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setsuframa(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Seterro(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setatividade(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setperfil(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setcartao1(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setcartao2(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setcartao3(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setcartao4(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setcartao5(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setcartao6(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setcod_cartao1(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setcod_cartao2(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setcod_cartao3(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setcod_cartao4(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setcod_cartao5(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setcod_cartao6(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setcod_forn1(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setcod_forn2(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setcod_forn3(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setcod_forn4(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setcod_forn5(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setcod_forn6(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setregistro_1010_3(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setregistro_1010_4(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setregistro_1010_5(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setregistro_1010_7(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setregistro_1010_9(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setregime(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setsaida(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setgera_cartao(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setunificar_cartao(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Seticms_dia(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Seticms_codigo_receita(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Seticms_numero_processo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Seticms_descricao_processo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Seticms_aliquota_ecf_1(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Seticms_aliquota_ecf_2(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Seticms_aliquota_ecf_3(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Seticms_aliquota_ecf_4(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Seticms_aliquota_ecf_5(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Seticms_aliquota_ecf_6(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Seticms_usuario_ecf(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Seticms_cfoptrib(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Seticms_cfopsub(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Seticms_cfopins(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Seticms_blocok(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Seticms_inventario(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Seticms_zera(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Seticms_dominio(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Seticms_gera_ipi(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setenergia_codigo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setenergia_descricao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setenergia_ncm(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setenergia_aliquota(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setplanocontas_tributado(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setplanocontas_substituicao_tributaria(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setplanocontas_isento(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setplanocontas_nao_incidencia(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setplanocontas_tributado_e_pauta_fiscal(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setplanocontas_planocontaspadrao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setplanocontas_planocontaspadraoentrada(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Settipogeracaopiscofins(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setlucroreal(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Settipoatividade(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasrelatorios.Setcfop_nao_gera_credito_c170(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
