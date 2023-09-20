unit Model.ERP.receita_agroprodutos;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPreceitaagroprodutos = class(TModelBase)

private
    Fid : Integer;
    Fid_cli : Integer;
    Fid_for : Integer;
    Fdata_emissao : indefinido;
    Fnro_doc : WideString;
    Fcorrespondente : WideString;
    Fvalor : Double;
    Fdata_pgto : indefinido;
    Fobs : indefinido;
    Fcpf : WideString;
    Fcnpj : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_cli(const Value: Integer);
    procedure Setid_for(const Value: Integer);
    procedure Setdata_emissao(const Value: indefinido);
    procedure Setnro_doc(const Value: WideString);
    procedure Setcorrespondente(const Value: WideString);
    procedure Setvalor(const Value: Double);
    procedure Setdata_pgto(const Value: indefinido);
    procedure Setobs(const Value: indefinido);
    procedure Setcpf(const Value: WideString);
    procedure Setcnpj(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_cli     : Integer read Fid_cli write Setid_cli;
    property id_for     : Integer read Fid_for write Setid_for;
    property data_emissao     : indefinido read Fdata_emissao write Setdata_emissao;
    property nro_doc     : WideString read Fnro_doc write Setnro_doc;
    property correspondente     : WideString read Fcorrespondente write Setcorrespondente;
    property valor     : Double read Fvalor write Setvalor;
    property data_pgto     : indefinido read Fdata_pgto write Setdata_pgto;
    property obs     : indefinido read Fobs write Setobs;
    property cpf     : WideString read Fcpf write Setcpf;
    property cnpj     : WideString read Fcnpj write Setcnpj;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPreceitaagroprodutos.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPreceitaagroprodutos) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPreceitaagroprodutos(Model).id;
Self.Fid_cli         := TModelERPreceitaagroprodutos(Model).id_cli;
Self.Fid_for         := TModelERPreceitaagroprodutos(Model).id_for;
Self.Fdata_emissao         := TModelERPreceitaagroprodutos(Model).data_emissao;
Self.Fnro_doc         := TModelERPreceitaagroprodutos(Model).nro_doc;
Self.Fcorrespondente         := TModelERPreceitaagroprodutos(Model).correspondente;
Self.Fvalor         := TModelERPreceitaagroprodutos(Model).valor;
Self.Fdata_pgto         := TModelERPreceitaagroprodutos(Model).data_pgto;
Self.Fobs         := TModelERPreceitaagroprodutos(Model).obs;
Self.Fcpf         := TModelERPreceitaagroprodutos(Model).cpf;
Self.Fcnpj         := TModelERPreceitaagroprodutos(Model).cnpj;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPreceitaagroprodutos.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPreceitaagroprodutos.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPreceitaagroprodutos.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPreceitaagroprodutos.Setid_cli(const Value: Boolean);   
begin                
  Fid_cli := Value;   
end;                 

procedure TModelERPreceitaagroprodutos.Setid_for(const Value: Boolean);   
begin                
  Fid_for := Value;   
end;                 

procedure TModelERPreceitaagroprodutos.Setdata_emissao(const Value: Boolean);   
begin                
  Fdata_emissao := Value;   
end;                 

procedure TModelERPreceitaagroprodutos.Setnro_doc(const Value: Boolean);   
begin                
  Fnro_doc := Value;   
end;                 

procedure TModelERPreceitaagroprodutos.Setcorrespondente(const Value: Boolean);   
begin                
  Fcorrespondente := Value;   
end;                 

procedure TModelERPreceitaagroprodutos.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 

procedure TModelERPreceitaagroprodutos.Setdata_pgto(const Value: Boolean);   
begin                
  Fdata_pgto := Value;   
end;                 

procedure TModelERPreceitaagroprodutos.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 

procedure TModelERPreceitaagroprodutos.Setcpf(const Value: Boolean);   
begin                
  Fcpf := Value;   
end;                 

procedure TModelERPreceitaagroprodutos.Setcnpj(const Value: Boolean);   
begin                
  Fcnpj := Value;   
end;                 


end.
