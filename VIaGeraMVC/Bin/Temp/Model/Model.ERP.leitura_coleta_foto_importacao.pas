unit Model.ERP.leitura_coleta_foto;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPleituracoletafoto = class(TModelBase)

private
    Fid : Integer;
    Fid_importacao : Integer;
    Fid_coleta : Integer;
    Ffoto : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_importacao(const Value: Integer);
    procedure Setid_coleta(const Value: Integer);
    procedure Setfoto(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_importacao     : Integer read Fid_importacao write Setid_importacao;
    property id_coleta     : Integer read Fid_coleta write Setid_coleta;
    property foto     : indefinido read Ffoto write Setfoto;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPleituracoletafoto.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPleituracoletafoto) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPleituracoletafoto(Model).id;
Self.Fid_importacao         := TModelERPleituracoletafoto(Model).id_importacao;
Self.Fid_coleta         := TModelERPleituracoletafoto(Model).id_coleta;
Self.Ffoto         := TModelERPleituracoletafoto(Model).foto;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPleituracoletafoto.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPleituracoletafoto.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPleituracoletafoto.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPleituracoletafoto.Setid_importacao(const Value: Boolean);   
begin                
  Fid_importacao := Value;   
end;                 

procedure TModelERPleituracoletafoto.Setid_coleta(const Value: Boolean);   
begin                
  Fid_coleta := Value;   
end;                 

procedure TModelERPleituracoletafoto.Setfoto(const Value: Boolean);   
begin                
  Ffoto := Value;   
end;                 


end.
