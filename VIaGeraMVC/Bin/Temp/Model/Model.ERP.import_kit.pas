unit Model.ERP.import_estoque;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPimportestoque = class(TModelBase)

private
    Fpai : Integer;
    Ffilho : Integer;
    Fquantidade : Double;
    Fvalor : Double;

    procedure Setpai(const Value: Integer);
    procedure Setfilho(const Value: Integer);
    procedure Setquantidade(const Value: Double);
    procedure Setvalor(const Value: Double);

public
    property pai     : Integer read Fpai write Setpai;
    property filho     : Integer read Ffilho write Setfilho;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property valor     : Double read Fvalor write Setvalor;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPimportestoque.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPimportestoque) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fpai         := TModelERPimportestoque(Model).pai;
Self.Ffilho         := TModelERPimportestoque(Model).filho;
Self.Fquantidade         := TModelERPimportestoque(Model).quantidade;
Self.Fvalor         := TModelERPimportestoque(Model).valor;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPimportestoque.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPimportestoque.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPimportestoque.Setpai(const Value: Boolean);   
begin                
  Fpai := Value;   
end;                 

procedure TModelERPimportestoque.Setfilho(const Value: Boolean);   
begin                
  Ffilho := Value;   
end;                 

procedure TModelERPimportestoque.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPimportestoque.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 


end.
