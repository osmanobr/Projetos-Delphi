unit Model.ERP.paf_d;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPpafd = class(TModelBase)

private
    Ftipo : indefinido;
    Fnumero_dav : indefinido;
    Fdata_alteracao : TDateTime;
    Fhora_alteracao : indefinido;
    Fcodigo_produto : indefinido;
    Fdescricao : indefinido;
    Fquantidade : Double;
    Funidade : indefinido;
    Funitario : Double;
    Fdesconto : Double;
    Facrescimo : Double;
    Fvalor : Double;
    Ftrib : indefinido;
    Faliquota : Double;
    Fcancelamento : indefinido;
    Fdecimais_quantidade : Integer;
    Fdecimais_unitario : Integer;
    Ftipo_alteracao : indefinido;
    Fhash : indefinido;

    procedure Settipo(const Value: indefinido);
    procedure Setnumero_dav(const Value: indefinido);
    procedure Setdata_alteracao(const Value: TDateTime);
    procedure Sethora_alteracao(const Value: indefinido);
    procedure Setcodigo_produto(const Value: indefinido);
    procedure Setdescricao(const Value: indefinido);
    procedure Setquantidade(const Value: Double);
    procedure Setunidade(const Value: indefinido);
    procedure Setunitario(const Value: Double);
    procedure Setdesconto(const Value: Double);
    procedure Setacrescimo(const Value: Double);
    procedure Setvalor(const Value: Double);
    procedure Settrib(const Value: indefinido);
    procedure Setaliquota(const Value: Double);
    procedure Setcancelamento(const Value: indefinido);
    procedure Setdecimais_quantidade(const Value: Integer);
    procedure Setdecimais_unitario(const Value: Integer);
    procedure Settipo_alteracao(const Value: indefinido);
    procedure Sethash(const Value: indefinido);

public
    property tipo     : indefinido read Ftipo write Settipo;
    property numero_dav     : indefinido read Fnumero_dav write Setnumero_dav;
    property data_alteracao     : TDateTime read Fdata_alteracao write Setdata_alteracao;
    property hora_alteracao     : indefinido read Fhora_alteracao write Sethora_alteracao;
    property codigo_produto     : indefinido read Fcodigo_produto write Setcodigo_produto;
    property descricao     : indefinido read Fdescricao write Setdescricao;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property unidade     : indefinido read Funidade write Setunidade;
    property unitario     : Double read Funitario write Setunitario;
    property desconto     : Double read Fdesconto write Setdesconto;
    property acrescimo     : Double read Facrescimo write Setacrescimo;
    property valor     : Double read Fvalor write Setvalor;
    property trib     : indefinido read Ftrib write Settrib;
    property aliquota     : Double read Faliquota write Setaliquota;
    property cancelamento     : indefinido read Fcancelamento write Setcancelamento;
    property decimais_quantidade     : Integer read Fdecimais_quantidade write Setdecimais_quantidade;
    property decimais_unitario     : Integer read Fdecimais_unitario write Setdecimais_unitario;
    property tipo_alteracao     : indefinido read Ftipo_alteracao write Settipo_alteracao;
    property hash     : indefinido read Fhash write Sethash;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPpafd.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPpafd) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Ftipo         := TModelERPpafd(Model).tipo;
Self.Fnumero_dav         := TModelERPpafd(Model).numero_dav;
Self.Fdata_alteracao         := TModelERPpafd(Model).data_alteracao;
Self.Fhora_alteracao         := TModelERPpafd(Model).hora_alteracao;
Self.Fcodigo_produto         := TModelERPpafd(Model).codigo_produto;
Self.Fdescricao         := TModelERPpafd(Model).descricao;
Self.Fquantidade         := TModelERPpafd(Model).quantidade;
Self.Funidade         := TModelERPpafd(Model).unidade;
Self.Funitario         := TModelERPpafd(Model).unitario;
Self.Fdesconto         := TModelERPpafd(Model).desconto;
Self.Facrescimo         := TModelERPpafd(Model).acrescimo;
Self.Fvalor         := TModelERPpafd(Model).valor;
Self.Ftrib         := TModelERPpafd(Model).trib;
Self.Faliquota         := TModelERPpafd(Model).aliquota;
Self.Fcancelamento         := TModelERPpafd(Model).cancelamento;
Self.Fdecimais_quantidade         := TModelERPpafd(Model).decimais_quantidade;
Self.Fdecimais_unitario         := TModelERPpafd(Model).decimais_unitario;
Self.Ftipo_alteracao         := TModelERPpafd(Model).tipo_alteracao;
Self.Fhash         := TModelERPpafd(Model).hash;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPpafd.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPpafd.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPpafd.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPpafd.Setnumero_dav(const Value: Boolean);   
begin                
  Fnumero_dav := Value;   
end;                 

procedure TModelERPpafd.Setdata_alteracao(const Value: Boolean);   
begin                
  Fdata_alteracao := Value;   
end;                 

procedure TModelERPpafd.Sethora_alteracao(const Value: Boolean);   
begin                
  Fhora_alteracao := Value;   
end;                 

procedure TModelERPpafd.Setcodigo_produto(const Value: Boolean);   
begin                
  Fcodigo_produto := Value;   
end;                 

procedure TModelERPpafd.Setdescricao(const Value: Boolean);   
begin                
  Fdescricao := Value;   
end;                 

procedure TModelERPpafd.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPpafd.Setunidade(const Value: Boolean);   
begin                
  Funidade := Value;   
end;                 

procedure TModelERPpafd.Setunitario(const Value: Boolean);   
begin                
  Funitario := Value;   
end;                 

procedure TModelERPpafd.Setdesconto(const Value: Boolean);   
begin                
  Fdesconto := Value;   
end;                 

procedure TModelERPpafd.Setacrescimo(const Value: Boolean);   
begin                
  Facrescimo := Value;   
end;                 

procedure TModelERPpafd.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 

procedure TModelERPpafd.Settrib(const Value: Boolean);   
begin                
  Ftrib := Value;   
end;                 

procedure TModelERPpafd.Setaliquota(const Value: Boolean);   
begin                
  Faliquota := Value;   
end;                 

procedure TModelERPpafd.Setcancelamento(const Value: Boolean);   
begin                
  Fcancelamento := Value;   
end;                 

procedure TModelERPpafd.Setdecimais_quantidade(const Value: Boolean);   
begin                
  Fdecimais_quantidade := Value;   
end;                 

procedure TModelERPpafd.Setdecimais_unitario(const Value: Boolean);   
begin                
  Fdecimais_unitario := Value;   
end;                 

procedure TModelERPpafd.Settipo_alteracao(const Value: Boolean);   
begin                
  Ftipo_alteracao := Value;   
end;                 

procedure TModelERPpafd.Sethash(const Value: Boolean);   
begin                
  Fhash := Value;   
end;                 


end.
