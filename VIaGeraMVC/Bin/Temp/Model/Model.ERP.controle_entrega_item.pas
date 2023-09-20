unit Model.ERP.controle_contador_xml;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcontrolecontadorxml = class(TModelBase)

private
    Fid : Integer;
    Fid_controle_entrega : Integer;
    Fid_venda_item : Integer;
    Fquantidade_entregue : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_controle_entrega(const Value: Integer);
    procedure Setid_venda_item(const Value: Integer);
    procedure Setquantidade_entregue(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_controle_entrega     : Integer read Fid_controle_entrega write Setid_controle_entrega;
    property id_venda_item     : Integer read Fid_venda_item write Setid_venda_item;
    property quantidade_entregue     : Double read Fquantidade_entregue write Setquantidade_entregue;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcontrolecontadorxml.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcontrolecontadorxml) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcontrolecontadorxml(Model).id;
Self.Fid_controle_entrega         := TModelERPcontrolecontadorxml(Model).id_controle_entrega;
Self.Fid_venda_item         := TModelERPcontrolecontadorxml(Model).id_venda_item;
Self.Fquantidade_entregue         := TModelERPcontrolecontadorxml(Model).quantidade_entregue;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcontrolecontadorxml.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcontrolecontadorxml.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcontrolecontadorxml.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcontrolecontadorxml.Setid_controle_entrega(const Value: Boolean);   
begin                
  Fid_controle_entrega := Value;   
end;                 

procedure TModelERPcontrolecontadorxml.Setid_venda_item(const Value: Boolean);   
begin                
  Fid_venda_item := Value;   
end;                 

procedure TModelERPcontrolecontadorxml.Setquantidade_entregue(const Value: Boolean);   
begin                
  Fquantidade_entregue := Value;   
end;                 


end.
