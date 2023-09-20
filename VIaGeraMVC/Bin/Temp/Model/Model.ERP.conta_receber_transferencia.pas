unit Model.ERP.conta_receber_remessa;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcontareceberremessa = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata : TDateTime;
    Fmotivo : WideString;
    Fid_usuario : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setmotivo(const Value: WideString);
    procedure Setid_usuario(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property data     : TDateTime read Fdata write Setdata;
    property motivo     : WideString read Fmotivo write Setmotivo;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcontareceberremessa.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcontareceberremessa) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcontareceberremessa(Model).id;
Self.Fid_empresa         := TModelERPcontareceberremessa(Model).id_empresa;
Self.Fdata         := TModelERPcontareceberremessa(Model).data;
Self.Fmotivo         := TModelERPcontareceberremessa(Model).motivo;
Self.Fid_usuario         := TModelERPcontareceberremessa(Model).id_usuario;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcontareceberremessa.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcontareceberremessa.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcontareceberremessa.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcontareceberremessa.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPcontareceberremessa.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPcontareceberremessa.Setmotivo(const Value: Boolean);   
begin                
  Fmotivo := Value;   
end;                 

procedure TModelERPcontareceberremessa.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 


end.
