unit Model.ERP.import_clientes_consumidor;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPimportclientesconsumidor = class(TModelBase)

private
    Fid : Integer;
    Fid_cliente : Integer;
    Fnome : WideString;
    Fdata_aniversario : indefinido;
    Fcpf : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setdata_aniversario(const Value: indefinido);
    procedure Setcpf(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property nome     : WideString read Fnome write Setnome;
    property data_aniversario     : indefinido read Fdata_aniversario write Setdata_aniversario;
    property cpf     : WideString read Fcpf write Setcpf;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPimportclientesconsumidor.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPimportclientesconsumidor) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPimportclientesconsumidor(Model).id;
Self.Fid_cliente         := TModelERPimportclientesconsumidor(Model).id_cliente;
Self.Fnome         := TModelERPimportclientesconsumidor(Model).nome;
Self.Fdata_aniversario         := TModelERPimportclientesconsumidor(Model).data_aniversario;
Self.Fcpf         := TModelERPimportclientesconsumidor(Model).cpf;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPimportclientesconsumidor.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPimportclientesconsumidor.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPimportclientesconsumidor.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPimportclientesconsumidor.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPimportclientesconsumidor.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPimportclientesconsumidor.Setdata_aniversario(const Value: Boolean);   
begin                
  Fdata_aniversario := Value;   
end;                 

procedure TModelERPimportclientesconsumidor.Setcpf(const Value: Boolean);   
begin                
  Fcpf := Value;   
end;                 


end.
