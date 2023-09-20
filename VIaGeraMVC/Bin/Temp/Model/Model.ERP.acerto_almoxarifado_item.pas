unit Model.ERP.acerto_almoxarifado;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPacertoalmoxarifado = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_acerto_almoxarifado : Integer;
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
    procedure Setid_acerto_almoxarifado(const Value: Integer);
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
    property id_acerto_almoxarifado     : Integer read Fid_acerto_almoxarifado write Setid_acerto_almoxarifado;
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
 function TModelERPacertoalmoxarifado.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPacertoalmoxarifado) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPacertoalmoxarifado(Model).id;
Self.Fid_empresa         := TModelERPacertoalmoxarifado(Model).id_empresa;
Self.Fid_acerto_almoxarifado         := TModelERPacertoalmoxarifado(Model).id_acerto_almoxarifado;
Self.Fid_produto         := TModelERPacertoalmoxarifado(Model).id_produto;
Self.Fnome_produto         := TModelERPacertoalmoxarifado(Model).nome_produto;
Self.Ftipo         := TModelERPacertoalmoxarifado(Model).tipo;
Self.Fquantidade         := TModelERPacertoalmoxarifado(Model).quantidade;
Self.Fid_grade         := TModelERPacertoalmoxarifado(Model).id_grade;
Self.Fcor_grade         := TModelERPacertoalmoxarifado(Model).cor_grade;
Self.Ftam_grade         := TModelERPacertoalmoxarifado(Model).tam_grade;
Self.Fgerado         := TModelERPacertoalmoxarifado(Model).gerado;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPacertoalmoxarifado.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPacertoalmoxarifado.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPacertoalmoxarifado.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPacertoalmoxarifado.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPacertoalmoxarifado.Setid_acerto_almoxarifado(const Value: Boolean);   
begin                
  Fid_acerto_almoxarifado := Value;   
end;                 

procedure TModelERPacertoalmoxarifado.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPacertoalmoxarifado.Setnome_produto(const Value: Boolean);   
begin                
  Fnome_produto := Value;   
end;                 

procedure TModelERPacertoalmoxarifado.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPacertoalmoxarifado.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPacertoalmoxarifado.Setid_grade(const Value: Boolean);   
begin                
  Fid_grade := Value;   
end;                 

procedure TModelERPacertoalmoxarifado.Setcor_grade(const Value: Boolean);   
begin                
  Fcor_grade := Value;   
end;                 

procedure TModelERPacertoalmoxarifado.Settam_grade(const Value: Boolean);   
begin                
  Ftam_grade := Value;   
end;                 

procedure TModelERPacertoalmoxarifado.Setgerado(const Value: Boolean);   
begin                
  Fgerado := Value;   
end;                 


end.
