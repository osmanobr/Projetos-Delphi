unit Model.ERP.import_caixas;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPimportcaixas = class(TModelBase)

private
    Fid : Integer;
    Fuf : WideString;
    Fcodigo : WideString;
    Fnome : WideString;

    procedure Setid(const Value: Integer);
    procedure Setuf(const Value: WideString);
    procedure Setcodigo(const Value: WideString);
    procedure Setnome(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property uf     : WideString read Fuf write Setuf;
    property codigo     : WideString read Fcodigo write Setcodigo;
    property nome     : WideString read Fnome write Setnome;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPimportcaixas.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPimportcaixas) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPimportcaixas(Model).id;
Self.Fuf         := TModelERPimportcaixas(Model).uf;
Self.Fcodigo         := TModelERPimportcaixas(Model).codigo;
Self.Fnome         := TModelERPimportcaixas(Model).nome;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPimportcaixas.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPimportcaixas.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPimportcaixas.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPimportcaixas.Setuf(const Value: Boolean);   
begin                
  Fuf := Value;   
end;                 

procedure TModelERPimportcaixas.Setcodigo(const Value: Boolean);   
begin                
  Fcodigo := Value;   
end;                 

procedure TModelERPimportcaixas.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 


end.
