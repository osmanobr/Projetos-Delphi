unit Model.ERP.contacorrente;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcontacorrente = class(TModelBase)

private
    Fid : Integer;
    Fnome : WideString;
    Fdia : Integer;
    Ftotal : Double;
    Fid_empresa : Integer;
    Fclick : Boolean;
    Fativo : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setdia(const Value: Integer);
    procedure Settotal(const Value: Double);
    procedure Setid_empresa(const Value: Integer);
    procedure Setclick(const Value: Boolean);
    procedure Setativo(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property nome     : WideString read Fnome write Setnome;
    property dia     : Integer read Fdia write Setdia;
    property total     : Double read Ftotal write Settotal;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property click     : Boolean read Fclick write Setclick;
    property ativo     : Boolean read Fativo write Setativo;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcontacorrente.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcontacorrente) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcontacorrente(Model).id;
Self.Fnome         := TModelERPcontacorrente(Model).nome;
Self.Fdia         := TModelERPcontacorrente(Model).dia;
Self.Ftotal         := TModelERPcontacorrente(Model).total;
Self.Fid_empresa         := TModelERPcontacorrente(Model).id_empresa;
Self.Fclick         := TModelERPcontacorrente(Model).click;
Self.Fativo         := TModelERPcontacorrente(Model).ativo;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcontacorrente.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcontacorrente.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcontacorrente.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcontacorrente.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPcontacorrente.Setdia(const Value: Boolean);   
begin                
  Fdia := Value;   
end;                 

procedure TModelERPcontacorrente.Settotal(const Value: Boolean);   
begin                
  Ftotal := Value;   
end;                 

procedure TModelERPcontacorrente.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPcontacorrente.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPcontacorrente.Setativo(const Value: Boolean);   
begin                
  Fativo := Value;   
end;                 


end.
