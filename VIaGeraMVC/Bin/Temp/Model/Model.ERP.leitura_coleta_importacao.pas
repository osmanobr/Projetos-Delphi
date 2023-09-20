unit Model.ERP.leitura_coleta_foto_importacao;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPleituracoletafotoimportacao = class(TModelBase)

private
    Fid : Integer;
    Fid_coleta : Integer;
    Fid_apartamento : Integer;
    Fmedicao : Double;
    Fdatahora : indefinido;
    Fdata_importacao : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_coleta(const Value: Integer);
    procedure Setid_apartamento(const Value: Integer);
    procedure Setmedicao(const Value: Double);
    procedure Setdatahora(const Value: indefinido);
    procedure Setdata_importacao(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_coleta     : Integer read Fid_coleta write Setid_coleta;
    property id_apartamento     : Integer read Fid_apartamento write Setid_apartamento;
    property medicao     : Double read Fmedicao write Setmedicao;
    property datahora     : indefinido read Fdatahora write Setdatahora;
    property data_importacao     : indefinido read Fdata_importacao write Setdata_importacao;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPleituracoletafotoimportacao.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPleituracoletafotoimportacao) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPleituracoletafotoimportacao(Model).id;
Self.Fid_coleta         := TModelERPleituracoletafotoimportacao(Model).id_coleta;
Self.Fid_apartamento         := TModelERPleituracoletafotoimportacao(Model).id_apartamento;
Self.Fmedicao         := TModelERPleituracoletafotoimportacao(Model).medicao;
Self.Fdatahora         := TModelERPleituracoletafotoimportacao(Model).datahora;
Self.Fdata_importacao         := TModelERPleituracoletafotoimportacao(Model).data_importacao;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPleituracoletafotoimportacao.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPleituracoletafotoimportacao.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPleituracoletafotoimportacao.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPleituracoletafotoimportacao.Setid_coleta(const Value: Boolean);   
begin                
  Fid_coleta := Value;   
end;                 

procedure TModelERPleituracoletafotoimportacao.Setid_apartamento(const Value: Boolean);   
begin                
  Fid_apartamento := Value;   
end;                 

procedure TModelERPleituracoletafotoimportacao.Setmedicao(const Value: Boolean);   
begin                
  Fmedicao := Value;   
end;                 

procedure TModelERPleituracoletafotoimportacao.Setdatahora(const Value: Boolean);   
begin                
  Fdatahora := Value;   
end;                 

procedure TModelERPleituracoletafotoimportacao.Setdata_importacao(const Value: Boolean);   
begin                
  Fdata_importacao := Value;   
end;                 


end.
