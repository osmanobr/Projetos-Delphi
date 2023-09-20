unit Model.ERP.mesa_lancamento;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPmesalancamento = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fnome : WideString;
    Fclick : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setclick(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property nome     : WideString read Fnome write Setnome;
    property click     : Boolean read Fclick write Setclick;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPmesalancamento.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPmesalancamento) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPmesalancamento(Model).id;
Self.Fid_empresa         := TModelERPmesalancamento(Model).id_empresa;
Self.Fnome         := TModelERPmesalancamento(Model).nome;
Self.Fclick         := TModelERPmesalancamento(Model).click;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPmesalancamento.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPmesalancamento.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPmesalancamento.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPmesalancamento.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPmesalancamento.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPmesalancamento.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 


end.
