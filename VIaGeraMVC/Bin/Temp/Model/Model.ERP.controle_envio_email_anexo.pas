unit Model.ERP.controle_envio_email;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcontroleenvioemail = class(TModelBase)

private
    Fid : Integer;
    Fid_email : Integer;
    Fextensao : WideString;
    Fanexo : indefinido;
    Fclick : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_email(const Value: Integer);
    procedure Setextensao(const Value: WideString);
    procedure Setanexo(const Value: indefinido);
    procedure Setclick(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_email     : Integer read Fid_email write Setid_email;
    property extensao     : WideString read Fextensao write Setextensao;
    property anexo     : indefinido read Fanexo write Setanexo;
    property click     : Boolean read Fclick write Setclick;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcontroleenvioemail.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcontroleenvioemail) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcontroleenvioemail(Model).id;
Self.Fid_email         := TModelERPcontroleenvioemail(Model).id_email;
Self.Fextensao         := TModelERPcontroleenvioemail(Model).extensao;
Self.Fanexo         := TModelERPcontroleenvioemail(Model).anexo;
Self.Fclick         := TModelERPcontroleenvioemail(Model).click;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcontroleenvioemail.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcontroleenvioemail.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcontroleenvioemail.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcontroleenvioemail.Setid_email(const Value: Boolean);   
begin                
  Fid_email := Value;   
end;                 

procedure TModelERPcontroleenvioemail.Setextensao(const Value: Boolean);   
begin                
  Fextensao := Value;   
end;                 

procedure TModelERPcontroleenvioemail.Setanexo(const Value: Boolean);   
begin                
  Fanexo := Value;   
end;                 

procedure TModelERPcontroleenvioemail.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 


end.
