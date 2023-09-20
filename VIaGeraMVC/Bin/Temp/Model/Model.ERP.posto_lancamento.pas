unit Model.ERP.posto_encerrante_vol_recebido;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPpostoencerrantevolrecebido = class(TModelBase)

private
    Fid : Integer;
    Fdata : TDateTime;
    Fid_caixa : Integer;
    Fid_usuario : Integer;
    Ftipo : indefinido;
    Fvalor : Double;
    Fobs : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setid_caixa(const Value: Integer);
    procedure Setid_usuario(const Value: Integer);
    procedure Settipo(const Value: indefinido);
    procedure Setvalor(const Value: Double);
    procedure Setobs(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property data     : TDateTime read Fdata write Setdata;
    property id_caixa     : Integer read Fid_caixa write Setid_caixa;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property tipo     : indefinido read Ftipo write Settipo;
    property valor     : Double read Fvalor write Setvalor;
    property obs     : indefinido read Fobs write Setobs;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPpostoencerrantevolrecebido.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPpostoencerrantevolrecebido) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPpostoencerrantevolrecebido(Model).id;
Self.Fdata         := TModelERPpostoencerrantevolrecebido(Model).data;
Self.Fid_caixa         := TModelERPpostoencerrantevolrecebido(Model).id_caixa;
Self.Fid_usuario         := TModelERPpostoencerrantevolrecebido(Model).id_usuario;
Self.Ftipo         := TModelERPpostoencerrantevolrecebido(Model).tipo;
Self.Fvalor         := TModelERPpostoencerrantevolrecebido(Model).valor;
Self.Fobs         := TModelERPpostoencerrantevolrecebido(Model).obs;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPpostoencerrantevolrecebido.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPpostoencerrantevolrecebido.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPpostoencerrantevolrecebido.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPpostoencerrantevolrecebido.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPpostoencerrantevolrecebido.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPpostoencerrantevolrecebido.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPpostoencerrantevolrecebido.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPpostoencerrantevolrecebido.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 

procedure TModelERPpostoencerrantevolrecebido.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 


end.
