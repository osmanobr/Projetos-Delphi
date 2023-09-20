unit Model.ERP.conta_receber_web;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcontareceberweb = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fagencia : WideString;
    Fconta : WideString;
    Fgerente : WideString;
    Ffone : WideString;
    Fid_banco : Integer;
    Fclick : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setagencia(const Value: WideString);
    procedure Setconta(const Value: WideString);
    procedure Setgerente(const Value: WideString);
    procedure Setfone(const Value: WideString);
    procedure Setid_banco(const Value: Integer);
    procedure Setclick(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property agencia     : WideString read Fagencia write Setagencia;
    property conta     : WideString read Fconta write Setconta;
    property gerente     : WideString read Fgerente write Setgerente;
    property fone     : WideString read Ffone write Setfone;
    property id_banco     : Integer read Fid_banco write Setid_banco;
    property click     : Boolean read Fclick write Setclick;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcontareceberweb.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcontareceberweb) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcontareceberweb(Model).id;
Self.Fid_empresa         := TModelERPcontareceberweb(Model).id_empresa;
Self.Fagencia         := TModelERPcontareceberweb(Model).agencia;
Self.Fconta         := TModelERPcontareceberweb(Model).conta;
Self.Fgerente         := TModelERPcontareceberweb(Model).gerente;
Self.Ffone         := TModelERPcontareceberweb(Model).fone;
Self.Fid_banco         := TModelERPcontareceberweb(Model).id_banco;
Self.Fclick         := TModelERPcontareceberweb(Model).click;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcontareceberweb.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcontareceberweb.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcontareceberweb.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcontareceberweb.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPcontareceberweb.Setagencia(const Value: Boolean);   
begin                
  Fagencia := Value;   
end;                 

procedure TModelERPcontareceberweb.Setconta(const Value: Boolean);   
begin                
  Fconta := Value;   
end;                 

procedure TModelERPcontareceberweb.Setgerente(const Value: Boolean);   
begin                
  Fgerente := Value;   
end;                 

procedure TModelERPcontareceberweb.Setfone(const Value: Boolean);   
begin                
  Ffone := Value;   
end;                 

procedure TModelERPcontareceberweb.Setid_banco(const Value: Boolean);   
begin                
  Fid_banco := Value;   
end;                 

procedure TModelERPcontareceberweb.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 


end.
