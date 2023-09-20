unit Model.ERP.cheques_emitidos_excluidos;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPchequesemitidosexcluidos = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fnome : WideString;
    Fuf : WideString;
    Fclick : Boolean;
    Fidibge : WideString;
    Fiduf : WideString;
    Fpais : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setuf(const Value: WideString);
    procedure Setclick(const Value: Boolean);
    procedure Setidibge(const Value: WideString);
    procedure Setiduf(const Value: WideString);
    procedure Setpais(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property nome     : WideString read Fnome write Setnome;
    property uf     : WideString read Fuf write Setuf;
    property click     : Boolean read Fclick write Setclick;
    property idibge     : WideString read Fidibge write Setidibge;
    property iduf     : WideString read Fiduf write Setiduf;
    property pais     : WideString read Fpais write Setpais;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPchequesemitidosexcluidos.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPchequesemitidosexcluidos) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPchequesemitidosexcluidos(Model).id;
Self.Fid_empresa         := TModelERPchequesemitidosexcluidos(Model).id_empresa;
Self.Fnome         := TModelERPchequesemitidosexcluidos(Model).nome;
Self.Fuf         := TModelERPchequesemitidosexcluidos(Model).uf;
Self.Fclick         := TModelERPchequesemitidosexcluidos(Model).click;
Self.Fidibge         := TModelERPchequesemitidosexcluidos(Model).idibge;
Self.Fiduf         := TModelERPchequesemitidosexcluidos(Model).iduf;
Self.Fpais         := TModelERPchequesemitidosexcluidos(Model).pais;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPchequesemitidosexcluidos.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPchequesemitidosexcluidos.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPchequesemitidosexcluidos.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPchequesemitidosexcluidos.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPchequesemitidosexcluidos.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPchequesemitidosexcluidos.Setuf(const Value: Boolean);   
begin                
  Fuf := Value;   
end;                 

procedure TModelERPchequesemitidosexcluidos.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPchequesemitidosexcluidos.Setidibge(const Value: Boolean);   
begin                
  Fidibge := Value;   
end;                 

procedure TModelERPchequesemitidosexcluidos.Setiduf(const Value: Boolean);   
begin                
  Fiduf := Value;   
end;                 

procedure TModelERPchequesemitidosexcluidos.Setpais(const Value: Boolean);   
begin                
  Fpais := Value;   
end;                 


end.
