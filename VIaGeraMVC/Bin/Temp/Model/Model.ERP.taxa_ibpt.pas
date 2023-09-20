unit Model.ERP.tanque;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPtanque = class(TModelBase)

private
    Fid : Integer;
    Fncm : indefinido;
    Fex : Integer;
    Ftabela : Integer;
    Faliqnacional : Double;
    Faliqinternacional : Double;
    Fdescricao : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setncm(const Value: indefinido);
    procedure Setex(const Value: Integer);
    procedure Settabela(const Value: Integer);
    procedure Setaliqnacional(const Value: Double);
    procedure Setaliqinternacional(const Value: Double);
    procedure Setdescricao(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property ncm     : indefinido read Fncm write Setncm;
    property ex     : Integer read Fex write Setex;
    property tabela     : Integer read Ftabela write Settabela;
    property aliqnacional     : Double read Faliqnacional write Setaliqnacional;
    property aliqinternacional     : Double read Faliqinternacional write Setaliqinternacional;
    property descricao     : indefinido read Fdescricao write Setdescricao;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPtanque.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPtanque) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPtanque(Model).id;
Self.Fncm         := TModelERPtanque(Model).ncm;
Self.Fex         := TModelERPtanque(Model).ex;
Self.Ftabela         := TModelERPtanque(Model).tabela;
Self.Faliqnacional         := TModelERPtanque(Model).aliqnacional;
Self.Faliqinternacional         := TModelERPtanque(Model).aliqinternacional;
Self.Fdescricao         := TModelERPtanque(Model).descricao;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPtanque.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPtanque.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPtanque.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPtanque.Setncm(const Value: Boolean);   
begin                
  Fncm := Value;   
end;                 

procedure TModelERPtanque.Setex(const Value: Boolean);   
begin                
  Fex := Value;   
end;                 

procedure TModelERPtanque.Settabela(const Value: Boolean);   
begin                
  Ftabela := Value;   
end;                 

procedure TModelERPtanque.Setaliqnacional(const Value: Boolean);   
begin                
  Faliqnacional := Value;   
end;                 

procedure TModelERPtanque.Setaliqinternacional(const Value: Boolean);   
begin                
  Faliqinternacional := Value;   
end;                 

procedure TModelERPtanque.Setdescricao(const Value: Boolean);   
begin                
  Fdescricao := Value;   
end;                 


end.
