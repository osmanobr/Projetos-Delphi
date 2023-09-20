unit Model.ERP.impressora_fiscal;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPimpressorafiscal = class(TModelBase)

private
    Fnome : WideString;
    Ffisica : Boolean;
    Fcpf : WideString;
    Fdata_servico : TDateTime;
    Fdata_comissao : TDateTime;
    Fvalor_servico : Double;
    Fcomissao : Double;
    Fvalor_comissao : Double;
    Ffechado : Boolean;
    Fpago : WideString;
    Fid_empresa : Integer;
    Fcnpj : WideString;
    Fid : Integer;

    procedure Setnome(const Value: WideString);
    procedure Setfisica(const Value: Boolean);
    procedure Setcpf(const Value: WideString);
    procedure Setdata_servico(const Value: TDateTime);
    procedure Setdata_comissao(const Value: TDateTime);
    procedure Setvalor_servico(const Value: Double);
    procedure Setcomissao(const Value: Double);
    procedure Setvalor_comissao(const Value: Double);
    procedure Setfechado(const Value: Boolean);
    procedure Setpago(const Value: WideString);
    procedure Setid_empresa(const Value: Integer);
    procedure Setcnpj(const Value: WideString);
    procedure Setid(const Value: Integer);

public
    property nome     : WideString read Fnome write Setnome;
    property fisica     : Boolean read Ffisica write Setfisica;
    property cpf     : WideString read Fcpf write Setcpf;
    property data_servico     : TDateTime read Fdata_servico write Setdata_servico;
    property data_comissao     : TDateTime read Fdata_comissao write Setdata_comissao;
    property valor_servico     : Double read Fvalor_servico write Setvalor_servico;
    property comissao     : Double read Fcomissao write Setcomissao;
    property valor_comissao     : Double read Fvalor_comissao write Setvalor_comissao;
    property fechado     : Boolean read Ffechado write Setfechado;
    property pago     : WideString read Fpago write Setpago;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property cnpj     : WideString read Fcnpj write Setcnpj;
    property id     : Integer read Fid write Setid;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPimpressorafiscal.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPimpressorafiscal) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fnome         := TModelERPimpressorafiscal(Model).nome;
Self.Ffisica         := TModelERPimpressorafiscal(Model).fisica;
Self.Fcpf         := TModelERPimpressorafiscal(Model).cpf;
Self.Fdata_servico         := TModelERPimpressorafiscal(Model).data_servico;
Self.Fdata_comissao         := TModelERPimpressorafiscal(Model).data_comissao;
Self.Fvalor_servico         := TModelERPimpressorafiscal(Model).valor_servico;
Self.Fcomissao         := TModelERPimpressorafiscal(Model).comissao;
Self.Fvalor_comissao         := TModelERPimpressorafiscal(Model).valor_comissao;
Self.Ffechado         := TModelERPimpressorafiscal(Model).fechado;
Self.Fpago         := TModelERPimpressorafiscal(Model).pago;
Self.Fid_empresa         := TModelERPimpressorafiscal(Model).id_empresa;
Self.Fcnpj         := TModelERPimpressorafiscal(Model).cnpj;
Self.Fid         := TModelERPimpressorafiscal(Model).id;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPimpressorafiscal.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPimpressorafiscal.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPimpressorafiscal.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPimpressorafiscal.Setfisica(const Value: Boolean);   
begin                
  Ffisica := Value;   
end;                 

procedure TModelERPimpressorafiscal.Setcpf(const Value: Boolean);   
begin                
  Fcpf := Value;   
end;                 

procedure TModelERPimpressorafiscal.Setdata_servico(const Value: Boolean);   
begin                
  Fdata_servico := Value;   
end;                 

procedure TModelERPimpressorafiscal.Setdata_comissao(const Value: Boolean);   
begin                
  Fdata_comissao := Value;   
end;                 

procedure TModelERPimpressorafiscal.Setvalor_servico(const Value: Boolean);   
begin                
  Fvalor_servico := Value;   
end;                 

procedure TModelERPimpressorafiscal.Setcomissao(const Value: Boolean);   
begin                
  Fcomissao := Value;   
end;                 

procedure TModelERPimpressorafiscal.Setvalor_comissao(const Value: Boolean);   
begin                
  Fvalor_comissao := Value;   
end;                 

procedure TModelERPimpressorafiscal.Setfechado(const Value: Boolean);   
begin                
  Ffechado := Value;   
end;                 

procedure TModelERPimpressorafiscal.Setpago(const Value: Boolean);   
begin                
  Fpago := Value;   
end;                 

procedure TModelERPimpressorafiscal.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPimpressorafiscal.Setcnpj(const Value: Boolean);   
begin                
  Fcnpj := Value;   
end;                 

procedure TModelERPimpressorafiscal.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 


end.
