unit Model.ERP.leitura_apartamento;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPleituraapartamento = class(TModelBase)

private
    Fid : Integer;
    Fid_condominio : Integer;
    Fbloco : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_condominio(const Value: Integer);
    procedure Setbloco(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_condominio     : Integer read Fid_condominio write Setid_condominio;
    property bloco     : WideString read Fbloco write Setbloco;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPleituraapartamento.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPleituraapartamento) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPleituraapartamento(Model).id;
Self.Fid_condominio         := TModelERPleituraapartamento(Model).id_condominio;
Self.Fbloco         := TModelERPleituraapartamento(Model).bloco;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPleituraapartamento.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPleituraapartamento.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPleituraapartamento.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPleituraapartamento.Setid_condominio(const Value: Boolean);   
begin                
  Fid_condominio := Value;   
end;                 

procedure TModelERPleituraapartamento.Setbloco(const Value: Boolean);   
begin                
  Fbloco := Value;   
end;                 


end.
