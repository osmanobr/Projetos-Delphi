unit Model.ERP.empresas_relatorios;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPempresasrelatorios = class(TModelBase)

private
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

    procedure Setid(const Value: Integer);
    procedure Setibge(const Value: Integer);
    procedure Setporta(const Value: WideString);
    procedure Setsuframa(const Value: WideString);
    procedure Seterro(const Value: Integer);
    procedure Setatividade(const Value: Integer);
    procedure Setperfil(const Value: Integer);
    procedure Setcartao1(const Value: WideString);
    procedure Setcartao2(const Value: WideString);
    procedure Setcartao3(const Value: WideString);
    procedure Setcartao4(const Value: WideString);
    procedure Setcartao5(const Value: WideString);
    procedure Setcartao6(const Value: WideString);
    procedure Setcod_cartao1(const Value: WideString);
    procedure Setcod_cartao2(const Value: WideString);
    procedure Setcod_cartao3(const Value: WideString);
    procedure Setcod_cartao4(const Value: WideString);
    procedure Setcod_cartao5(const Value: WideString);
    procedure Setcod_cartao6(const Value: WideString);
    procedure Setcod_forn1(const Value: WideString);
    procedure Setcod_forn2(const Value: WideString);
    procedure Setcod_forn3(const Value: WideString);
    procedure Setcod_forn4(const Value: WideString);
    procedure Setcod_forn5(const Value: WideString);
    procedure Setcod_forn6(const Value: WideString);
    procedure Setregistro_1010_3(const Value: Boolean);
    procedure Setregistro_1010_4(const Value: Boolean);
    procedure Setregistro_1010_5(const Value: Boolean);
    procedure Setregistro_1010_7(const Value: Boolean);
    procedure Setregistro_1010_9(const Value: Boolean);
    procedure Setregime(const Value: WideString);
    procedure Setsaida(const Value: Boolean);
    procedure Setgera_cartao(const Value: Boolean);
    procedure Setunificar_cartao(const Value: Boolean);
    procedure Seticms_dia(const Value: WideString);
    procedure Seticms_codigo_receita(const Value: WideString);
    procedure Seticms_numero_processo(const Value: WideString);
    procedure Seticms_descricao_processo(const Value: WideString);
    procedure Seticms_aliquota_ecf_1(const Value: Double);
    procedure Seticms_aliquota_ecf_2(const Value: Double);
    procedure Seticms_aliquota_ecf_3(const Value: Double);
    procedure Seticms_aliquota_ecf_4(const Value: Double);
    procedure Seticms_aliquota_ecf_5(const Value: Double);
    procedure Seticms_aliquota_ecf_6(const Value: Double);
    procedure Seticms_usuario_ecf(const Value: Integer);
    procedure Seticms_cfoptrib(const Value: WideString);
    procedure Seticms_cfopsub(const Value: WideString);
    procedure Seticms_cfopins(const Value: WideString);
    procedure Seticms_blocok(const Value: Boolean);
    procedure Seticms_inventario(const Value: Boolean);
    procedure Seticms_zera(const Value: Boolean);
    procedure Seticms_dominio(const Value: Boolean);
    procedure Seticms_gera_ipi(const Value: Boolean);
    procedure Setenergia_codigo(const Value: Integer);
    procedure Setenergia_descricao(const Value: WideString);
    procedure Setenergia_ncm(const Value: Integer);
    procedure Setenergia_aliquota(const Value: Double);
    procedure Setplanocontas_tributado(const Value: WideString);
    procedure Setplanocontas_substituicao_tributaria(const Value: WideString);
    procedure Setplanocontas_isento(const Value: WideString);
    procedure Setplanocontas_nao_incidencia(const Value: WideString);
    procedure Setplanocontas_tributado_e_pauta_fiscal(const Value: WideString);
    procedure Setplanocontas_planocontaspadrao(const Value: WideString);
    procedure Setplanocontas_planocontaspadraoentrada(const Value: WideString);
    procedure Settipogeracaopiscofins(const Value: Integer);
    procedure Setlucroreal(const Value: Boolean);
    procedure Settipoatividade(const Value: Integer);
    procedure Setcfop_nao_gera_credito_c170(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property ibge     : Integer read Fibge write Setibge;
    property porta     : WideString read Fporta write Setporta;
    property suframa     : WideString read Fsuframa write Setsuframa;
    property erro     : Integer read Ferro write Seterro;
    property atividade     : Integer read Fatividade write Setatividade;
    property perfil     : Integer read Fperfil write Setperfil;
    property cartao1     : WideString read Fcartao1 write Setcartao1;
    property cartao2     : WideString read Fcartao2 write Setcartao2;
    property cartao3     : WideString read Fcartao3 write Setcartao3;
    property cartao4     : WideString read Fcartao4 write Setcartao4;
    property cartao5     : WideString read Fcartao5 write Setcartao5;
    property cartao6     : WideString read Fcartao6 write Setcartao6;
    property cod_cartao1     : WideString read Fcod_cartao1 write Setcod_cartao1;
    property cod_cartao2     : WideString read Fcod_cartao2 write Setcod_cartao2;
    property cod_cartao3     : WideString read Fcod_cartao3 write Setcod_cartao3;
    property cod_cartao4     : WideString read Fcod_cartao4 write Setcod_cartao4;
    property cod_cartao5     : WideString read Fcod_cartao5 write Setcod_cartao5;
    property cod_cartao6     : WideString read Fcod_cartao6 write Setcod_cartao6;
    property cod_forn1     : WideString read Fcod_forn1 write Setcod_forn1;
    property cod_forn2     : WideString read Fcod_forn2 write Setcod_forn2;
    property cod_forn3     : WideString read Fcod_forn3 write Setcod_forn3;
    property cod_forn4     : WideString read Fcod_forn4 write Setcod_forn4;
    property cod_forn5     : WideString read Fcod_forn5 write Setcod_forn5;
    property cod_forn6     : WideString read Fcod_forn6 write Setcod_forn6;
    property registro_1010_3     : Boolean read Fregistro_1010_3 write Setregistro_1010_3;
    property registro_1010_4     : Boolean read Fregistro_1010_4 write Setregistro_1010_4;
    property registro_1010_5     : Boolean read Fregistro_1010_5 write Setregistro_1010_5;
    property registro_1010_7     : Boolean read Fregistro_1010_7 write Setregistro_1010_7;
    property registro_1010_9     : Boolean read Fregistro_1010_9 write Setregistro_1010_9;
    property regime     : WideString read Fregime write Setregime;
    property saida     : Boolean read Fsaida write Setsaida;
    property gera_cartao     : Boolean read Fgera_cartao write Setgera_cartao;
    property unificar_cartao     : Boolean read Funificar_cartao write Setunificar_cartao;
    property icms_dia     : WideString read Ficms_dia write Seticms_dia;
    property icms_codigo_receita     : WideString read Ficms_codigo_receita write Seticms_codigo_receita;
    property icms_numero_processo     : WideString read Ficms_numero_processo write Seticms_numero_processo;
    property icms_descricao_processo     : WideString read Ficms_descricao_processo write Seticms_descricao_processo;
    property icms_aliquota_ecf_1     : Double read Ficms_aliquota_ecf_1 write Seticms_aliquota_ecf_1;
    property icms_aliquota_ecf_2     : Double read Ficms_aliquota_ecf_2 write Seticms_aliquota_ecf_2;
    property icms_aliquota_ecf_3     : Double read Ficms_aliquota_ecf_3 write Seticms_aliquota_ecf_3;
    property icms_aliquota_ecf_4     : Double read Ficms_aliquota_ecf_4 write Seticms_aliquota_ecf_4;
    property icms_aliquota_ecf_5     : Double read Ficms_aliquota_ecf_5 write Seticms_aliquota_ecf_5;
    property icms_aliquota_ecf_6     : Double read Ficms_aliquota_ecf_6 write Seticms_aliquota_ecf_6;
    property icms_usuario_ecf     : Integer read Ficms_usuario_ecf write Seticms_usuario_ecf;
    property icms_cfoptrib     : WideString read Ficms_cfoptrib write Seticms_cfoptrib;
    property icms_cfopsub     : WideString read Ficms_cfopsub write Seticms_cfopsub;
    property icms_cfopins     : WideString read Ficms_cfopins write Seticms_cfopins;
    property icms_blocok     : Boolean read Ficms_blocok write Seticms_blocok;
    property icms_inventario     : Boolean read Ficms_inventario write Seticms_inventario;
    property icms_zera     : Boolean read Ficms_zera write Seticms_zera;
    property icms_dominio     : Boolean read Ficms_dominio write Seticms_dominio;
    property icms_gera_ipi     : Boolean read Ficms_gera_ipi write Seticms_gera_ipi;
    property energia_codigo     : Integer read Fenergia_codigo write Setenergia_codigo;
    property energia_descricao     : WideString read Fenergia_descricao write Setenergia_descricao;
    property energia_ncm     : Integer read Fenergia_ncm write Setenergia_ncm;
    property energia_aliquota     : Double read Fenergia_aliquota write Setenergia_aliquota;
    property planocontas_tributado     : WideString read Fplanocontas_tributado write Setplanocontas_tributado;
    property planocontas_substituicao_tributaria     : WideString read Fplanocontas_substituicao_tributaria write Setplanocontas_substituicao_tributaria;
    property planocontas_isento     : WideString read Fplanocontas_isento write Setplanocontas_isento;
    property planocontas_nao_incidencia     : WideString read Fplanocontas_nao_incidencia write Setplanocontas_nao_incidencia;
    property planocontas_tributado_e_pauta_fiscal     : WideString read Fplanocontas_tributado_e_pauta_fiscal write Setplanocontas_tributado_e_pauta_fiscal;
    property planocontas_planocontaspadrao     : WideString read Fplanocontas_planocontaspadrao write Setplanocontas_planocontaspadrao;
    property planocontas_planocontaspadraoentrada     : WideString read Fplanocontas_planocontaspadraoentrada write Setplanocontas_planocontaspadraoentrada;
    property tipogeracaopiscofins     : Integer read Ftipogeracaopiscofins write Settipogeracaopiscofins;
    property lucroreal     : Boolean read Flucroreal write Setlucroreal;
    property tipoatividade     : Integer read Ftipoatividade write Settipoatividade;
    property cfop_nao_gera_credito_c170     : indefinido read Fcfop_nao_gera_credito_c170 write Setcfop_nao_gera_credito_c170;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPempresasrelatorios.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPempresasrelatorios) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPempresasrelatorios(Model).id;
Self.Fibge         := TModelERPempresasrelatorios(Model).ibge;
Self.Fporta         := TModelERPempresasrelatorios(Model).porta;
Self.Fsuframa         := TModelERPempresasrelatorios(Model).suframa;
Self.Ferro         := TModelERPempresasrelatorios(Model).erro;
Self.Fatividade         := TModelERPempresasrelatorios(Model).atividade;
Self.Fperfil         := TModelERPempresasrelatorios(Model).perfil;
Self.Fcartao1         := TModelERPempresasrelatorios(Model).cartao1;
Self.Fcartao2         := TModelERPempresasrelatorios(Model).cartao2;
Self.Fcartao3         := TModelERPempresasrelatorios(Model).cartao3;
Self.Fcartao4         := TModelERPempresasrelatorios(Model).cartao4;
Self.Fcartao5         := TModelERPempresasrelatorios(Model).cartao5;
Self.Fcartao6         := TModelERPempresasrelatorios(Model).cartao6;
Self.Fcod_cartao1         := TModelERPempresasrelatorios(Model).cod_cartao1;
Self.Fcod_cartao2         := TModelERPempresasrelatorios(Model).cod_cartao2;
Self.Fcod_cartao3         := TModelERPempresasrelatorios(Model).cod_cartao3;
Self.Fcod_cartao4         := TModelERPempresasrelatorios(Model).cod_cartao4;
Self.Fcod_cartao5         := TModelERPempresasrelatorios(Model).cod_cartao5;
Self.Fcod_cartao6         := TModelERPempresasrelatorios(Model).cod_cartao6;
Self.Fcod_forn1         := TModelERPempresasrelatorios(Model).cod_forn1;
Self.Fcod_forn2         := TModelERPempresasrelatorios(Model).cod_forn2;
Self.Fcod_forn3         := TModelERPempresasrelatorios(Model).cod_forn3;
Self.Fcod_forn4         := TModelERPempresasrelatorios(Model).cod_forn4;
Self.Fcod_forn5         := TModelERPempresasrelatorios(Model).cod_forn5;
Self.Fcod_forn6         := TModelERPempresasrelatorios(Model).cod_forn6;
Self.Fregistro_1010_3         := TModelERPempresasrelatorios(Model).registro_1010_3;
Self.Fregistro_1010_4         := TModelERPempresasrelatorios(Model).registro_1010_4;
Self.Fregistro_1010_5         := TModelERPempresasrelatorios(Model).registro_1010_5;
Self.Fregistro_1010_7         := TModelERPempresasrelatorios(Model).registro_1010_7;
Self.Fregistro_1010_9         := TModelERPempresasrelatorios(Model).registro_1010_9;
Self.Fregime         := TModelERPempresasrelatorios(Model).regime;
Self.Fsaida         := TModelERPempresasrelatorios(Model).saida;
Self.Fgera_cartao         := TModelERPempresasrelatorios(Model).gera_cartao;
Self.Funificar_cartao         := TModelERPempresasrelatorios(Model).unificar_cartao;
Self.Ficms_dia         := TModelERPempresasrelatorios(Model).icms_dia;
Self.Ficms_codigo_receita         := TModelERPempresasrelatorios(Model).icms_codigo_receita;
Self.Ficms_numero_processo         := TModelERPempresasrelatorios(Model).icms_numero_processo;
Self.Ficms_descricao_processo         := TModelERPempresasrelatorios(Model).icms_descricao_processo;
Self.Ficms_aliquota_ecf_1         := TModelERPempresasrelatorios(Model).icms_aliquota_ecf_1;
Self.Ficms_aliquota_ecf_2         := TModelERPempresasrelatorios(Model).icms_aliquota_ecf_2;
Self.Ficms_aliquota_ecf_3         := TModelERPempresasrelatorios(Model).icms_aliquota_ecf_3;
Self.Ficms_aliquota_ecf_4         := TModelERPempresasrelatorios(Model).icms_aliquota_ecf_4;
Self.Ficms_aliquota_ecf_5         := TModelERPempresasrelatorios(Model).icms_aliquota_ecf_5;
Self.Ficms_aliquota_ecf_6         := TModelERPempresasrelatorios(Model).icms_aliquota_ecf_6;
Self.Ficms_usuario_ecf         := TModelERPempresasrelatorios(Model).icms_usuario_ecf;
Self.Ficms_cfoptrib         := TModelERPempresasrelatorios(Model).icms_cfoptrib;
Self.Ficms_cfopsub         := TModelERPempresasrelatorios(Model).icms_cfopsub;
Self.Ficms_cfopins         := TModelERPempresasrelatorios(Model).icms_cfopins;
Self.Ficms_blocok         := TModelERPempresasrelatorios(Model).icms_blocok;
Self.Ficms_inventario         := TModelERPempresasrelatorios(Model).icms_inventario;
Self.Ficms_zera         := TModelERPempresasrelatorios(Model).icms_zera;
Self.Ficms_dominio         := TModelERPempresasrelatorios(Model).icms_dominio;
Self.Ficms_gera_ipi         := TModelERPempresasrelatorios(Model).icms_gera_ipi;
Self.Fenergia_codigo         := TModelERPempresasrelatorios(Model).energia_codigo;
Self.Fenergia_descricao         := TModelERPempresasrelatorios(Model).energia_descricao;
Self.Fenergia_ncm         := TModelERPempresasrelatorios(Model).energia_ncm;
Self.Fenergia_aliquota         := TModelERPempresasrelatorios(Model).energia_aliquota;
Self.Fplanocontas_tributado         := TModelERPempresasrelatorios(Model).planocontas_tributado;
Self.Fplanocontas_substituicao_tributaria         := TModelERPempresasrelatorios(Model).planocontas_substituicao_tributaria;
Self.Fplanocontas_isento         := TModelERPempresasrelatorios(Model).planocontas_isento;
Self.Fplanocontas_nao_incidencia         := TModelERPempresasrelatorios(Model).planocontas_nao_incidencia;
Self.Fplanocontas_tributado_e_pauta_fiscal         := TModelERPempresasrelatorios(Model).planocontas_tributado_e_pauta_fiscal;
Self.Fplanocontas_planocontaspadrao         := TModelERPempresasrelatorios(Model).planocontas_planocontaspadrao;
Self.Fplanocontas_planocontaspadraoentrada         := TModelERPempresasrelatorios(Model).planocontas_planocontaspadraoentrada;
Self.Ftipogeracaopiscofins         := TModelERPempresasrelatorios(Model).tipogeracaopiscofins;
Self.Flucroreal         := TModelERPempresasrelatorios(Model).lucroreal;
Self.Ftipoatividade         := TModelERPempresasrelatorios(Model).tipoatividade;
Self.Fcfop_nao_gera_credito_c170         := TModelERPempresasrelatorios(Model).cfop_nao_gera_credito_c170;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPempresasrelatorios.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPempresasrelatorios.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPempresasrelatorios.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setibge(const Value: Boolean);   
begin                
  Fibge := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setporta(const Value: Boolean);   
begin                
  Fporta := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setsuframa(const Value: Boolean);   
begin                
  Fsuframa := Value;   
end;                 

procedure TModelERPempresasrelatorios.Seterro(const Value: Boolean);   
begin                
  Ferro := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setatividade(const Value: Boolean);   
begin                
  Fatividade := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setperfil(const Value: Boolean);   
begin                
  Fperfil := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setcartao1(const Value: Boolean);   
begin                
  Fcartao1 := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setcartao2(const Value: Boolean);   
begin                
  Fcartao2 := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setcartao3(const Value: Boolean);   
begin                
  Fcartao3 := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setcartao4(const Value: Boolean);   
begin                
  Fcartao4 := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setcartao5(const Value: Boolean);   
begin                
  Fcartao5 := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setcartao6(const Value: Boolean);   
begin                
  Fcartao6 := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setcod_cartao1(const Value: Boolean);   
begin                
  Fcod_cartao1 := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setcod_cartao2(const Value: Boolean);   
begin                
  Fcod_cartao2 := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setcod_cartao3(const Value: Boolean);   
begin                
  Fcod_cartao3 := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setcod_cartao4(const Value: Boolean);   
begin                
  Fcod_cartao4 := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setcod_cartao5(const Value: Boolean);   
begin                
  Fcod_cartao5 := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setcod_cartao6(const Value: Boolean);   
begin                
  Fcod_cartao6 := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setcod_forn1(const Value: Boolean);   
begin                
  Fcod_forn1 := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setcod_forn2(const Value: Boolean);   
begin                
  Fcod_forn2 := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setcod_forn3(const Value: Boolean);   
begin                
  Fcod_forn3 := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setcod_forn4(const Value: Boolean);   
begin                
  Fcod_forn4 := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setcod_forn5(const Value: Boolean);   
begin                
  Fcod_forn5 := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setcod_forn6(const Value: Boolean);   
begin                
  Fcod_forn6 := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setregistro_1010_3(const Value: Boolean);   
begin                
  Fregistro_1010_3 := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setregistro_1010_4(const Value: Boolean);   
begin                
  Fregistro_1010_4 := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setregistro_1010_5(const Value: Boolean);   
begin                
  Fregistro_1010_5 := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setregistro_1010_7(const Value: Boolean);   
begin                
  Fregistro_1010_7 := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setregistro_1010_9(const Value: Boolean);   
begin                
  Fregistro_1010_9 := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setregime(const Value: Boolean);   
begin                
  Fregime := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setsaida(const Value: Boolean);   
begin                
  Fsaida := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setgera_cartao(const Value: Boolean);   
begin                
  Fgera_cartao := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setunificar_cartao(const Value: Boolean);   
begin                
  Funificar_cartao := Value;   
end;                 

procedure TModelERPempresasrelatorios.Seticms_dia(const Value: Boolean);   
begin                
  Ficms_dia := Value;   
end;                 

procedure TModelERPempresasrelatorios.Seticms_codigo_receita(const Value: Boolean);   
begin                
  Ficms_codigo_receita := Value;   
end;                 

procedure TModelERPempresasrelatorios.Seticms_numero_processo(const Value: Boolean);   
begin                
  Ficms_numero_processo := Value;   
end;                 

procedure TModelERPempresasrelatorios.Seticms_descricao_processo(const Value: Boolean);   
begin                
  Ficms_descricao_processo := Value;   
end;                 

procedure TModelERPempresasrelatorios.Seticms_aliquota_ecf_1(const Value: Boolean);   
begin                
  Ficms_aliquota_ecf_1 := Value;   
end;                 

procedure TModelERPempresasrelatorios.Seticms_aliquota_ecf_2(const Value: Boolean);   
begin                
  Ficms_aliquota_ecf_2 := Value;   
end;                 

procedure TModelERPempresasrelatorios.Seticms_aliquota_ecf_3(const Value: Boolean);   
begin                
  Ficms_aliquota_ecf_3 := Value;   
end;                 

procedure TModelERPempresasrelatorios.Seticms_aliquota_ecf_4(const Value: Boolean);   
begin                
  Ficms_aliquota_ecf_4 := Value;   
end;                 

procedure TModelERPempresasrelatorios.Seticms_aliquota_ecf_5(const Value: Boolean);   
begin                
  Ficms_aliquota_ecf_5 := Value;   
end;                 

procedure TModelERPempresasrelatorios.Seticms_aliquota_ecf_6(const Value: Boolean);   
begin                
  Ficms_aliquota_ecf_6 := Value;   
end;                 

procedure TModelERPempresasrelatorios.Seticms_usuario_ecf(const Value: Boolean);   
begin                
  Ficms_usuario_ecf := Value;   
end;                 

procedure TModelERPempresasrelatorios.Seticms_cfoptrib(const Value: Boolean);   
begin                
  Ficms_cfoptrib := Value;   
end;                 

procedure TModelERPempresasrelatorios.Seticms_cfopsub(const Value: Boolean);   
begin                
  Ficms_cfopsub := Value;   
end;                 

procedure TModelERPempresasrelatorios.Seticms_cfopins(const Value: Boolean);   
begin                
  Ficms_cfopins := Value;   
end;                 

procedure TModelERPempresasrelatorios.Seticms_blocok(const Value: Boolean);   
begin                
  Ficms_blocok := Value;   
end;                 

procedure TModelERPempresasrelatorios.Seticms_inventario(const Value: Boolean);   
begin                
  Ficms_inventario := Value;   
end;                 

procedure TModelERPempresasrelatorios.Seticms_zera(const Value: Boolean);   
begin                
  Ficms_zera := Value;   
end;                 

procedure TModelERPempresasrelatorios.Seticms_dominio(const Value: Boolean);   
begin                
  Ficms_dominio := Value;   
end;                 

procedure TModelERPempresasrelatorios.Seticms_gera_ipi(const Value: Boolean);   
begin                
  Ficms_gera_ipi := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setenergia_codigo(const Value: Boolean);   
begin                
  Fenergia_codigo := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setenergia_descricao(const Value: Boolean);   
begin                
  Fenergia_descricao := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setenergia_ncm(const Value: Boolean);   
begin                
  Fenergia_ncm := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setenergia_aliquota(const Value: Boolean);   
begin                
  Fenergia_aliquota := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setplanocontas_tributado(const Value: Boolean);   
begin                
  Fplanocontas_tributado := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setplanocontas_substituicao_tributaria(const Value: Boolean);   
begin                
  Fplanocontas_substituicao_tributaria := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setplanocontas_isento(const Value: Boolean);   
begin                
  Fplanocontas_isento := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setplanocontas_nao_incidencia(const Value: Boolean);   
begin                
  Fplanocontas_nao_incidencia := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setplanocontas_tributado_e_pauta_fiscal(const Value: Boolean);   
begin                
  Fplanocontas_tributado_e_pauta_fiscal := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setplanocontas_planocontaspadrao(const Value: Boolean);   
begin                
  Fplanocontas_planocontaspadrao := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setplanocontas_planocontaspadraoentrada(const Value: Boolean);   
begin                
  Fplanocontas_planocontaspadraoentrada := Value;   
end;                 

procedure TModelERPempresasrelatorios.Settipogeracaopiscofins(const Value: Boolean);   
begin                
  Ftipogeracaopiscofins := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setlucroreal(const Value: Boolean);   
begin                
  Flucroreal := Value;   
end;                 

procedure TModelERPempresasrelatorios.Settipoatividade(const Value: Boolean);   
begin                
  Ftipoatividade := Value;   
end;                 

procedure TModelERPempresasrelatorios.Setcfop_nao_gera_credito_c170(const Value: Boolean);   
begin                
  Fcfop_nao_gera_credito_c170 := Value;   
end;                 


end.
