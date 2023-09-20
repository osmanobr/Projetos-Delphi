unit Model.ERP.bovino_pecas;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPbovinopecas = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fmarca : WideString;
    Fcaminho : WideString;
    Flista : WideString;
    Flista_automatica : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setmarca(const Value: WideString);
    procedure Setcaminho(const Value: WideString);
    procedure Setlista(const Value: WideString);
    procedure Setlista_automatica(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property marca     : WideString read Fmarca write Setmarca;
    property caminho     : WideString read Fcaminho write Setcaminho;
    property lista     : WideString read Flista write Setlista;
    property lista_automatica     : Boolean read Flista_automatica write Setlista_automatica;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPbovinopecas.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPbovinopecas) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPbovinopecas(Model).id;
Self.Fid_empresa         := TModelERPbovinopecas(Model).id_empresa;
Self.Fmarca         := TModelERPbovinopecas(Model).marca;
Self.Fcaminho         := TModelERPbovinopecas(Model).caminho;
Self.Flista         := TModelERPbovinopecas(Model).lista;
Self.Flista_automatica         := TModelERPbovinopecas(Model).lista_automatica;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPbovinopecas.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPbovinopecas.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPbovinopecas.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPbovinopecas.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPbovinopecas.Setmarca(const Value: Boolean);   
begin                
  Fmarca := Value;   
end;                 

procedure TModelERPbovinopecas.Setcaminho(const Value: Boolean);   
begin                
  Fcaminho := Value;   
end;                 

procedure TModelERPbovinopecas.Setlista(const Value: Boolean);   
begin                
  Flista := Value;   
end;                 

procedure TModelERPbovinopecas.Setlista_automatica(const Value: Boolean);   
begin                
  Flista_automatica := Value;   
end;                 


end.
