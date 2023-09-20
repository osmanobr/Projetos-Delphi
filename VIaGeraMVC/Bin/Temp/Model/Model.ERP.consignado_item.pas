unit Model.ERP.consignado;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPconsignado = class(TModelBase)

private
    Fid : Integer;
    Fid_consignado : Integer;
    Fid_produto : Integer;
    Fproduto : WideString;
    Fquantidade : Double;
    Fvalor : Double;
    Fdata_devolucao : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_consignado(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setproduto(const Value: WideString);
    procedure Setquantidade(const Value: Double);
    procedure Setvalor(const Value: Double);
    procedure Setdata_devolucao(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_consignado     : Integer read Fid_consignado write Setid_consignado;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property produto     : WideString read Fproduto write Setproduto;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property valor     : Double read Fvalor write Setvalor;
    property data_devolucao     : indefinido read Fdata_devolucao write Setdata_devolucao;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPconsignado.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPconsignado) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPconsignado(Model).id;
Self.Fid_consignado         := TModelERPconsignado(Model).id_consignado;
Self.Fid_produto         := TModelERPconsignado(Model).id_produto;
Self.Fproduto         := TModelERPconsignado(Model).produto;
Self.Fquantidade         := TModelERPconsignado(Model).quantidade;
Self.Fvalor         := TModelERPconsignado(Model).valor;
Self.Fdata_devolucao         := TModelERPconsignado(Model).data_devolucao;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPconsignado.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPconsignado.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPconsignado.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPconsignado.Setid_consignado(const Value: Boolean);   
begin                
  Fid_consignado := Value;   
end;                 

procedure TModelERPconsignado.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPconsignado.Setproduto(const Value: Boolean);   
begin                
  Fproduto := Value;   
end;                 

procedure TModelERPconsignado.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPconsignado.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 

procedure TModelERPconsignado.Setdata_devolucao(const Value: Boolean);   
begin                
  Fdata_devolucao := Value;   
end;                 


end.
