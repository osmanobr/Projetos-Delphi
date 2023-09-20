unit Model.ERP.maquinas_agricolas;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPmaquinasagricolas = class(TModelBase)

private
    Fid : Integer;
    Fid_mdfe : Integer;
    Fcod_mun : Integer;
    Fnome_mun : WideString;
    Finf_chave : WideString;
    Ftipo : WideString;
    Fvalor : Double;
    Fpeso : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_mdfe(const Value: Integer);
    procedure Setcod_mun(const Value: Integer);
    procedure Setnome_mun(const Value: WideString);
    procedure Setinf_chave(const Value: WideString);
    procedure Settipo(const Value: WideString);
    procedure Setvalor(const Value: Double);
    procedure Setpeso(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_mdfe     : Integer read Fid_mdfe write Setid_mdfe;
    property cod_mun     : Integer read Fcod_mun write Setcod_mun;
    property nome_mun     : WideString read Fnome_mun write Setnome_mun;
    property inf_chave     : WideString read Finf_chave write Setinf_chave;
    property tipo     : WideString read Ftipo write Settipo;
    property valor     : Double read Fvalor write Setvalor;
    property peso     : Double read Fpeso write Setpeso;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPmaquinasagricolas.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPmaquinasagricolas) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPmaquinasagricolas(Model).id;
Self.Fid_mdfe         := TModelERPmaquinasagricolas(Model).id_mdfe;
Self.Fcod_mun         := TModelERPmaquinasagricolas(Model).cod_mun;
Self.Fnome_mun         := TModelERPmaquinasagricolas(Model).nome_mun;
Self.Finf_chave         := TModelERPmaquinasagricolas(Model).inf_chave;
Self.Ftipo         := TModelERPmaquinasagricolas(Model).tipo;
Self.Fvalor         := TModelERPmaquinasagricolas(Model).valor;
Self.Fpeso         := TModelERPmaquinasagricolas(Model).peso;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPmaquinasagricolas.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPmaquinasagricolas.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPmaquinasagricolas.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPmaquinasagricolas.Setid_mdfe(const Value: Boolean);   
begin                
  Fid_mdfe := Value;   
end;                 

procedure TModelERPmaquinasagricolas.Setcod_mun(const Value: Boolean);   
begin                
  Fcod_mun := Value;   
end;                 

procedure TModelERPmaquinasagricolas.Setnome_mun(const Value: Boolean);   
begin                
  Fnome_mun := Value;   
end;                 

procedure TModelERPmaquinasagricolas.Setinf_chave(const Value: Boolean);   
begin                
  Finf_chave := Value;   
end;                 

procedure TModelERPmaquinasagricolas.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPmaquinasagricolas.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 

procedure TModelERPmaquinasagricolas.Setpeso(const Value: Boolean);   
begin                
  Fpeso := Value;   
end;                 


end.
