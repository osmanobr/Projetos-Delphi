unit Model.ERP.fornecedor;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPfornecedor = class(TModelBase)

private
    Fid : Integer;
    Fnome : WideString;
    Fid_fornecedor : Integer;

    procedure Setid(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setid_fornecedor(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property nome     : WideString read Fnome write Setnome;
    property id_fornecedor     : Integer read Fid_fornecedor write Setid_fornecedor;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPfornecedor.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPfornecedor) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPfornecedor(Model).id;
Self.Fnome         := TModelERPfornecedor(Model).nome;
Self.Fid_fornecedor         := TModelERPfornecedor(Model).id_fornecedor;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPfornecedor.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPfornecedor.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPfornecedor.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPfornecedor.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPfornecedor.Setid_fornecedor(const Value: Boolean);   
begin                
  Fid_fornecedor := Value;   
end;                 


end.
