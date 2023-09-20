unit Model.ERP.veiculo_plano_acessorio;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPveiculoplanoacessorio = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_cliente : Integer;
    Fplaca : indefinido;
    Fdescricao_modelo : WideString;
    Fkm : indefinido;
    Fcor : indefinido;
    Fnome_cliente : indefinido;
    Frenavam : indefinido;
    Ftprod : Integer;
    Ftpcar : Integer;
    Fuf : WideString;
    Ftara : Integer;
    Fcapkg : Integer;
    Fcapm3 : Integer;
    Fprop_cnpjcpf : WideString;
    Fprop_rntc : WideString;
    Fprop_nome : WideString;
    Fprop_ie : WideString;
    Fprop_uf : WideString;
    Fprop_tpprop : Integer;
    Ffabricante : WideString;
    Fano_fabricacao : WideString;
    Fano_modelo : WideString;
    Fcombustivel : WideString;
    Falienado : Boolean;
    Frastreador : Boolean;
    Fempresa_rastreamento : Integer;
    Fcodigo_fipe : WideString;
    Fvalor_fipe : Double;
    Ftipo_veiculo : WideString;
    Fchassis : WideString;
    Fobs : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setplaca(const Value: indefinido);
    procedure Setdescricao_modelo(const Value: WideString);
    procedure Setkm(const Value: indefinido);
    procedure Setcor(const Value: indefinido);
    procedure Setnome_cliente(const Value: indefinido);
    procedure Setrenavam(const Value: indefinido);
    procedure Settprod(const Value: Integer);
    procedure Settpcar(const Value: Integer);
    procedure Setuf(const Value: WideString);
    procedure Settara(const Value: Integer);
    procedure Setcapkg(const Value: Integer);
    procedure Setcapm3(const Value: Integer);
    procedure Setprop_cnpjcpf(const Value: WideString);
    procedure Setprop_rntc(const Value: WideString);
    procedure Setprop_nome(const Value: WideString);
    procedure Setprop_ie(const Value: WideString);
    procedure Setprop_uf(const Value: WideString);
    procedure Setprop_tpprop(const Value: Integer);
    procedure Setfabricante(const Value: WideString);
    procedure Setano_fabricacao(const Value: WideString);
    procedure Setano_modelo(const Value: WideString);
    procedure Setcombustivel(const Value: WideString);
    procedure Setalienado(const Value: Boolean);
    procedure Setrastreador(const Value: Boolean);
    procedure Setempresa_rastreamento(const Value: Integer);
    procedure Setcodigo_fipe(const Value: WideString);
    procedure Setvalor_fipe(const Value: Double);
    procedure Settipo_veiculo(const Value: WideString);
    procedure Setchassis(const Value: WideString);
    procedure Setobs(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property placa     : indefinido read Fplaca write Setplaca;
    property descricao_modelo     : WideString read Fdescricao_modelo write Setdescricao_modelo;
    property km     : indefinido read Fkm write Setkm;
    property cor     : indefinido read Fcor write Setcor;
    property nome_cliente     : indefinido read Fnome_cliente write Setnome_cliente;
    property renavam     : indefinido read Frenavam write Setrenavam;
    property tprod     : Integer read Ftprod write Settprod;
    property tpcar     : Integer read Ftpcar write Settpcar;
    property uf     : WideString read Fuf write Setuf;
    property tara     : Integer read Ftara write Settara;
    property capkg     : Integer read Fcapkg write Setcapkg;
    property capm3     : Integer read Fcapm3 write Setcapm3;
    property prop_cnpjcpf     : WideString read Fprop_cnpjcpf write Setprop_cnpjcpf;
    property prop_rntc     : WideString read Fprop_rntc write Setprop_rntc;
    property prop_nome     : WideString read Fprop_nome write Setprop_nome;
    property prop_ie     : WideString read Fprop_ie write Setprop_ie;
    property prop_uf     : WideString read Fprop_uf write Setprop_uf;
    property prop_tpprop     : Integer read Fprop_tpprop write Setprop_tpprop;
    property fabricante     : WideString read Ffabricante write Setfabricante;
    property ano_fabricacao     : WideString read Fano_fabricacao write Setano_fabricacao;
    property ano_modelo     : WideString read Fano_modelo write Setano_modelo;
    property combustivel     : WideString read Fcombustivel write Setcombustivel;
    property alienado     : Boolean read Falienado write Setalienado;
    property rastreador     : Boolean read Frastreador write Setrastreador;
    property empresa_rastreamento     : Integer read Fempresa_rastreamento write Setempresa_rastreamento;
    property codigo_fipe     : WideString read Fcodigo_fipe write Setcodigo_fipe;
    property valor_fipe     : Double read Fvalor_fipe write Setvalor_fipe;
    property tipo_veiculo     : WideString read Ftipo_veiculo write Settipo_veiculo;
    property chassis     : WideString read Fchassis write Setchassis;
    property obs     : indefinido read Fobs write Setobs;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPveiculoplanoacessorio.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPveiculoplanoacessorio) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPveiculoplanoacessorio(Model).id;
Self.Fid_empresa         := TModelERPveiculoplanoacessorio(Model).id_empresa;
Self.Fid_cliente         := TModelERPveiculoplanoacessorio(Model).id_cliente;
Self.Fplaca         := TModelERPveiculoplanoacessorio(Model).placa;
Self.Fdescricao_modelo         := TModelERPveiculoplanoacessorio(Model).descricao_modelo;
Self.Fkm         := TModelERPveiculoplanoacessorio(Model).km;
Self.Fcor         := TModelERPveiculoplanoacessorio(Model).cor;
Self.Fnome_cliente         := TModelERPveiculoplanoacessorio(Model).nome_cliente;
Self.Frenavam         := TModelERPveiculoplanoacessorio(Model).renavam;
Self.Ftprod         := TModelERPveiculoplanoacessorio(Model).tprod;
Self.Ftpcar         := TModelERPveiculoplanoacessorio(Model).tpcar;
Self.Fuf         := TModelERPveiculoplanoacessorio(Model).uf;
Self.Ftara         := TModelERPveiculoplanoacessorio(Model).tara;
Self.Fcapkg         := TModelERPveiculoplanoacessorio(Model).capkg;
Self.Fcapm3         := TModelERPveiculoplanoacessorio(Model).capm3;
Self.Fprop_cnpjcpf         := TModelERPveiculoplanoacessorio(Model).prop_cnpjcpf;
Self.Fprop_rntc         := TModelERPveiculoplanoacessorio(Model).prop_rntc;
Self.Fprop_nome         := TModelERPveiculoplanoacessorio(Model).prop_nome;
Self.Fprop_ie         := TModelERPveiculoplanoacessorio(Model).prop_ie;
Self.Fprop_uf         := TModelERPveiculoplanoacessorio(Model).prop_uf;
Self.Fprop_tpprop         := TModelERPveiculoplanoacessorio(Model).prop_tpprop;
Self.Ffabricante         := TModelERPveiculoplanoacessorio(Model).fabricante;
Self.Fano_fabricacao         := TModelERPveiculoplanoacessorio(Model).ano_fabricacao;
Self.Fano_modelo         := TModelERPveiculoplanoacessorio(Model).ano_modelo;
Self.Fcombustivel         := TModelERPveiculoplanoacessorio(Model).combustivel;
Self.Falienado         := TModelERPveiculoplanoacessorio(Model).alienado;
Self.Frastreador         := TModelERPveiculoplanoacessorio(Model).rastreador;
Self.Fempresa_rastreamento         := TModelERPveiculoplanoacessorio(Model).empresa_rastreamento;
Self.Fcodigo_fipe         := TModelERPveiculoplanoacessorio(Model).codigo_fipe;
Self.Fvalor_fipe         := TModelERPveiculoplanoacessorio(Model).valor_fipe;
Self.Ftipo_veiculo         := TModelERPveiculoplanoacessorio(Model).tipo_veiculo;
Self.Fchassis         := TModelERPveiculoplanoacessorio(Model).chassis;
Self.Fobs         := TModelERPveiculoplanoacessorio(Model).obs;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPveiculoplanoacessorio.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPveiculoplanoacessorio.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPveiculoplanoacessorio.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPveiculoplanoacessorio.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPveiculoplanoacessorio.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPveiculoplanoacessorio.Setplaca(const Value: Boolean);   
begin                
  Fplaca := Value;   
end;                 

procedure TModelERPveiculoplanoacessorio.Setdescricao_modelo(const Value: Boolean);   
begin                
  Fdescricao_modelo := Value;   
end;                 

procedure TModelERPveiculoplanoacessorio.Setkm(const Value: Boolean);   
begin                
  Fkm := Value;   
end;                 

procedure TModelERPveiculoplanoacessorio.Setcor(const Value: Boolean);   
begin                
  Fcor := Value;   
end;                 

procedure TModelERPveiculoplanoacessorio.Setnome_cliente(const Value: Boolean);   
begin                
  Fnome_cliente := Value;   
end;                 

procedure TModelERPveiculoplanoacessorio.Setrenavam(const Value: Boolean);   
begin                
  Frenavam := Value;   
end;                 

procedure TModelERPveiculoplanoacessorio.Settprod(const Value: Boolean);   
begin                
  Ftprod := Value;   
end;                 

procedure TModelERPveiculoplanoacessorio.Settpcar(const Value: Boolean);   
begin                
  Ftpcar := Value;   
end;                 

procedure TModelERPveiculoplanoacessorio.Setuf(const Value: Boolean);   
begin                
  Fuf := Value;   
end;                 

procedure TModelERPveiculoplanoacessorio.Settara(const Value: Boolean);   
begin                
  Ftara := Value;   
end;                 

procedure TModelERPveiculoplanoacessorio.Setcapkg(const Value: Boolean);   
begin                
  Fcapkg := Value;   
end;                 

procedure TModelERPveiculoplanoacessorio.Setcapm3(const Value: Boolean);   
begin                
  Fcapm3 := Value;   
end;                 

procedure TModelERPveiculoplanoacessorio.Setprop_cnpjcpf(const Value: Boolean);   
begin                
  Fprop_cnpjcpf := Value;   
end;                 

procedure TModelERPveiculoplanoacessorio.Setprop_rntc(const Value: Boolean);   
begin                
  Fprop_rntc := Value;   
end;                 

procedure TModelERPveiculoplanoacessorio.Setprop_nome(const Value: Boolean);   
begin                
  Fprop_nome := Value;   
end;                 

procedure TModelERPveiculoplanoacessorio.Setprop_ie(const Value: Boolean);   
begin                
  Fprop_ie := Value;   
end;                 

procedure TModelERPveiculoplanoacessorio.Setprop_uf(const Value: Boolean);   
begin                
  Fprop_uf := Value;   
end;                 

procedure TModelERPveiculoplanoacessorio.Setprop_tpprop(const Value: Boolean);   
begin                
  Fprop_tpprop := Value;   
end;                 

procedure TModelERPveiculoplanoacessorio.Setfabricante(const Value: Boolean);   
begin                
  Ffabricante := Value;   
end;                 

procedure TModelERPveiculoplanoacessorio.Setano_fabricacao(const Value: Boolean);   
begin                
  Fano_fabricacao := Value;   
end;                 

procedure TModelERPveiculoplanoacessorio.Setano_modelo(const Value: Boolean);   
begin                
  Fano_modelo := Value;   
end;                 

procedure TModelERPveiculoplanoacessorio.Setcombustivel(const Value: Boolean);   
begin                
  Fcombustivel := Value;   
end;                 

procedure TModelERPveiculoplanoacessorio.Setalienado(const Value: Boolean);   
begin                
  Falienado := Value;   
end;                 

procedure TModelERPveiculoplanoacessorio.Setrastreador(const Value: Boolean);   
begin                
  Frastreador := Value;   
end;                 

procedure TModelERPveiculoplanoacessorio.Setempresa_rastreamento(const Value: Boolean);   
begin                
  Fempresa_rastreamento := Value;   
end;                 

procedure TModelERPveiculoplanoacessorio.Setcodigo_fipe(const Value: Boolean);   
begin                
  Fcodigo_fipe := Value;   
end;                 

procedure TModelERPveiculoplanoacessorio.Setvalor_fipe(const Value: Boolean);   
begin                
  Fvalor_fipe := Value;   
end;                 

procedure TModelERPveiculoplanoacessorio.Settipo_veiculo(const Value: Boolean);   
begin                
  Ftipo_veiculo := Value;   
end;                 

procedure TModelERPveiculoplanoacessorio.Setchassis(const Value: Boolean);   
begin                
  Fchassis := Value;   
end;                 

procedure TModelERPveiculoplanoacessorio.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 


end.
