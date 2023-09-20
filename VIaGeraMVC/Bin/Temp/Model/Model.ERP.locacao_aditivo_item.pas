unit Model.ERP.locacao_aditivo;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPlocacaoaditivo = class(TModelBase)

private
    Fid : Integer;
    Fid_locacaoaditivo : Integer;
    Fid_equipamento : Integer;
    Fpatrimonio : WideString;
    Fnome_equipamento : WideString;
    Ftipo : WideString;
    Fquantidade : Double;
    Fvalor_unitario : Double;
    Fvalor_garantia : Double;
    Fvalor_total : Double;
    Fobs : indefinido;
    Fclick : Boolean;
    Funidade : WideString;
    Fdata_troca : TDateTime;
    Fativo : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_locacaoaditivo(const Value: Integer);
    procedure Setid_equipamento(const Value: Integer);
    procedure Setpatrimonio(const Value: WideString);
    procedure Setnome_equipamento(const Value: WideString);
    procedure Settipo(const Value: WideString);
    procedure Setquantidade(const Value: Double);
    procedure Setvalor_unitario(const Value: Double);
    procedure Setvalor_garantia(const Value: Double);
    procedure Setvalor_total(const Value: Double);
    procedure Setobs(const Value: indefinido);
    procedure Setclick(const Value: Boolean);
    procedure Setunidade(const Value: WideString);
    procedure Setdata_troca(const Value: TDateTime);
    procedure Setativo(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_locacaoaditivo     : Integer read Fid_locacaoaditivo write Setid_locacaoaditivo;
    property id_equipamento     : Integer read Fid_equipamento write Setid_equipamento;
    property patrimonio     : WideString read Fpatrimonio write Setpatrimonio;
    property nome_equipamento     : WideString read Fnome_equipamento write Setnome_equipamento;
    property tipo     : WideString read Ftipo write Settipo;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property valor_unitario     : Double read Fvalor_unitario write Setvalor_unitario;
    property valor_garantia     : Double read Fvalor_garantia write Setvalor_garantia;
    property valor_total     : Double read Fvalor_total write Setvalor_total;
    property obs     : indefinido read Fobs write Setobs;
    property click     : Boolean read Fclick write Setclick;
    property unidade     : WideString read Funidade write Setunidade;
    property data_troca     : TDateTime read Fdata_troca write Setdata_troca;
    property ativo     : WideString read Fativo write Setativo;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPlocacaoaditivo.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPlocacaoaditivo) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPlocacaoaditivo(Model).id;
Self.Fid_locacaoaditivo         := TModelERPlocacaoaditivo(Model).id_locacaoaditivo;
Self.Fid_equipamento         := TModelERPlocacaoaditivo(Model).id_equipamento;
Self.Fpatrimonio         := TModelERPlocacaoaditivo(Model).patrimonio;
Self.Fnome_equipamento         := TModelERPlocacaoaditivo(Model).nome_equipamento;
Self.Ftipo         := TModelERPlocacaoaditivo(Model).tipo;
Self.Fquantidade         := TModelERPlocacaoaditivo(Model).quantidade;
Self.Fvalor_unitario         := TModelERPlocacaoaditivo(Model).valor_unitario;
Self.Fvalor_garantia         := TModelERPlocacaoaditivo(Model).valor_garantia;
Self.Fvalor_total         := TModelERPlocacaoaditivo(Model).valor_total;
Self.Fobs         := TModelERPlocacaoaditivo(Model).obs;
Self.Fclick         := TModelERPlocacaoaditivo(Model).click;
Self.Funidade         := TModelERPlocacaoaditivo(Model).unidade;
Self.Fdata_troca         := TModelERPlocacaoaditivo(Model).data_troca;
Self.Fativo         := TModelERPlocacaoaditivo(Model).ativo;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPlocacaoaditivo.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPlocacaoaditivo.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPlocacaoaditivo.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPlocacaoaditivo.Setid_locacaoaditivo(const Value: Boolean);   
begin                
  Fid_locacaoaditivo := Value;   
end;                 

procedure TModelERPlocacaoaditivo.Setid_equipamento(const Value: Boolean);   
begin                
  Fid_equipamento := Value;   
end;                 

procedure TModelERPlocacaoaditivo.Setpatrimonio(const Value: Boolean);   
begin                
  Fpatrimonio := Value;   
end;                 

procedure TModelERPlocacaoaditivo.Setnome_equipamento(const Value: Boolean);   
begin                
  Fnome_equipamento := Value;   
end;                 

procedure TModelERPlocacaoaditivo.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPlocacaoaditivo.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPlocacaoaditivo.Setvalor_unitario(const Value: Boolean);   
begin                
  Fvalor_unitario := Value;   
end;                 

procedure TModelERPlocacaoaditivo.Setvalor_garantia(const Value: Boolean);   
begin                
  Fvalor_garantia := Value;   
end;                 

procedure TModelERPlocacaoaditivo.Setvalor_total(const Value: Boolean);   
begin                
  Fvalor_total := Value;   
end;                 

procedure TModelERPlocacaoaditivo.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 

procedure TModelERPlocacaoaditivo.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPlocacaoaditivo.Setunidade(const Value: Boolean);   
begin                
  Funidade := Value;   
end;                 

procedure TModelERPlocacaoaditivo.Setdata_troca(const Value: Boolean);   
begin                
  Fdata_troca := Value;   
end;                 

procedure TModelERPlocacaoaditivo.Setativo(const Value: Boolean);   
begin                
  Fativo := Value;   
end;                 


end.
