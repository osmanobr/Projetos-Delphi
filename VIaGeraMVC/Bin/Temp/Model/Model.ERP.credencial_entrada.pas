unit Model.ERP.credencial_classe;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcredencialclasse = class(TModelBase)

private
    Fid : Integer;
    Fid_credencial : Integer;
    Fid_cliente : Integer;
    Fid_dependente : Integer;
    Fcredencial : Integer;
    Fentrada : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_credencial(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setid_dependente(const Value: Integer);
    procedure Setcredencial(const Value: Integer);
    procedure Setentrada(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_credencial     : Integer read Fid_credencial write Setid_credencial;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property id_dependente     : Integer read Fid_dependente write Setid_dependente;
    property credencial     : Integer read Fcredencial write Setcredencial;
    property entrada     : indefinido read Fentrada write Setentrada;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcredencialclasse.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcredencialclasse) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcredencialclasse(Model).id;
Self.Fid_credencial         := TModelERPcredencialclasse(Model).id_credencial;
Self.Fid_cliente         := TModelERPcredencialclasse(Model).id_cliente;
Self.Fid_dependente         := TModelERPcredencialclasse(Model).id_dependente;
Self.Fcredencial         := TModelERPcredencialclasse(Model).credencial;
Self.Fentrada         := TModelERPcredencialclasse(Model).entrada;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcredencialclasse.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcredencialclasse.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcredencialclasse.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcredencialclasse.Setid_credencial(const Value: Boolean);   
begin                
  Fid_credencial := Value;   
end;                 

procedure TModelERPcredencialclasse.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPcredencialclasse.Setid_dependente(const Value: Boolean);   
begin                
  Fid_dependente := Value;   
end;                 

procedure TModelERPcredencialclasse.Setcredencial(const Value: Boolean);   
begin                
  Fcredencial := Value;   
end;                 

procedure TModelERPcredencialclasse.Setentrada(const Value: Boolean);   
begin                
  Fentrada := Value;   
end;                 


end.
