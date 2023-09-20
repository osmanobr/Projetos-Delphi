unit Model.ERP.bombas;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPbombas = class(TModelBase)

private
    Fid : Integer;
    Fid_pecas : Integer;
    Fid_produto : Integer;
    Fnome_interno : WideString;
    Fnome : WideString;
    Fpercentual : Double;
    Fpeso : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_pecas(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setnome_interno(const Value: WideString);
    procedure Setnome(const Value: WideString);
    procedure Setpercentual(const Value: Double);
    procedure Setpeso(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_pecas     : Integer read Fid_pecas write Setid_pecas;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property nome_interno     : WideString read Fnome_interno write Setnome_interno;
    property nome     : WideString read Fnome write Setnome;
    property percentual     : Double read Fpercentual write Setpercentual;
    property peso     : Double read Fpeso write Setpeso;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPbombas.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPbombas) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPbombas(Model).id;
Self.Fid_pecas         := TModelERPbombas(Model).id_pecas;
Self.Fid_produto         := TModelERPbombas(Model).id_produto;
Self.Fnome_interno         := TModelERPbombas(Model).nome_interno;
Self.Fnome         := TModelERPbombas(Model).nome;
Self.Fpercentual         := TModelERPbombas(Model).percentual;
Self.Fpeso         := TModelERPbombas(Model).peso;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPbombas.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPbombas.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPbombas.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPbombas.Setid_pecas(const Value: Boolean);   
begin                
  Fid_pecas := Value;   
end;                 

procedure TModelERPbombas.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPbombas.Setnome_interno(const Value: Boolean);   
begin                
  Fnome_interno := Value;   
end;                 

procedure TModelERPbombas.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPbombas.Setpercentual(const Value: Boolean);   
begin                
  Fpercentual := Value;   
end;                 

procedure TModelERPbombas.Setpeso(const Value: Boolean);   
begin                
  Fpeso := Value;   
end;                 


end.
