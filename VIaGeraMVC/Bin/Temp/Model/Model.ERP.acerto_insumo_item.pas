unit Model.ERP.acerto_insumo;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPacertoinsumo = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_acerto_insumo : Integer;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Ftipo : WideString;
    Fquantidade : Double;
    Fid_grade : Integer;
    Fcor_grade : WideString;
    Ftam_grade : WideString;
    Fgerado : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_acerto_insumo(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setnome_produto(const Value: WideString);
    procedure Settipo(const Value: WideString);
    procedure Setquantidade(const Value: Double);
    procedure Setid_grade(const Value: Integer);
    procedure Setcor_grade(const Value: WideString);
    procedure Settam_grade(const Value: WideString);
    procedure Setgerado(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_acerto_insumo     : Integer read Fid_acerto_insumo write Setid_acerto_insumo;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property nome_produto     : WideString read Fnome_produto write Setnome_produto;
    property tipo     : WideString read Ftipo write Settipo;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property id_grade     : Integer read Fid_grade write Setid_grade;
    property cor_grade     : WideString read Fcor_grade write Setcor_grade;
    property tam_grade     : WideString read Ftam_grade write Settam_grade;
    property gerado     : WideString read Fgerado write Setgerado;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPacertoinsumo.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPacertoinsumo) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPacertoinsumo(Model).id;
Self.Fid_empresa         := TModelERPacertoinsumo(Model).id_empresa;
Self.Fid_acerto_insumo         := TModelERPacertoinsumo(Model).id_acerto_insumo;
Self.Fid_produto         := TModelERPacertoinsumo(Model).id_produto;
Self.Fnome_produto         := TModelERPacertoinsumo(Model).nome_produto;
Self.Ftipo         := TModelERPacertoinsumo(Model).tipo;
Self.Fquantidade         := TModelERPacertoinsumo(Model).quantidade;
Self.Fid_grade         := TModelERPacertoinsumo(Model).id_grade;
Self.Fcor_grade         := TModelERPacertoinsumo(Model).cor_grade;
Self.Ftam_grade         := TModelERPacertoinsumo(Model).tam_grade;
Self.Fgerado         := TModelERPacertoinsumo(Model).gerado;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPacertoinsumo.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPacertoinsumo.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPacertoinsumo.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPacertoinsumo.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPacertoinsumo.Setid_acerto_insumo(const Value: Boolean);   
begin                
  Fid_acerto_insumo := Value;   
end;                 

procedure TModelERPacertoinsumo.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPacertoinsumo.Setnome_produto(const Value: Boolean);   
begin                
  Fnome_produto := Value;   
end;                 

procedure TModelERPacertoinsumo.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPacertoinsumo.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPacertoinsumo.Setid_grade(const Value: Boolean);   
begin                
  Fid_grade := Value;   
end;                 

procedure TModelERPacertoinsumo.Setcor_grade(const Value: Boolean);   
begin                
  Fcor_grade := Value;   
end;                 

procedure TModelERPacertoinsumo.Settam_grade(const Value: Boolean);   
begin                
  Ftam_grade := Value;   
end;                 

procedure TModelERPacertoinsumo.Setgerado(const Value: Boolean);   
begin                
  Fgerado := Value;   
end;                 


end.
