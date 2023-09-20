unit Model.ERP.acerto_insumo_item;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPacertoinsumoitem = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_acerto : Integer;
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
    procedure Setid_acerto(const Value: Integer);
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
    property id_acerto     : Integer read Fid_acerto write Setid_acerto;
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
 function TModelERPacertoinsumoitem.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPacertoinsumoitem) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPacertoinsumoitem(Model).id;
Self.Fid_empresa         := TModelERPacertoinsumoitem(Model).id_empresa;
Self.Fid_acerto         := TModelERPacertoinsumoitem(Model).id_acerto;
Self.Fid_produto         := TModelERPacertoinsumoitem(Model).id_produto;
Self.Fnome_produto         := TModelERPacertoinsumoitem(Model).nome_produto;
Self.Ftipo         := TModelERPacertoinsumoitem(Model).tipo;
Self.Fquantidade         := TModelERPacertoinsumoitem(Model).quantidade;
Self.Fid_grade         := TModelERPacertoinsumoitem(Model).id_grade;
Self.Fcor_grade         := TModelERPacertoinsumoitem(Model).cor_grade;
Self.Ftam_grade         := TModelERPacertoinsumoitem(Model).tam_grade;
Self.Fgerado         := TModelERPacertoinsumoitem(Model).gerado;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPacertoinsumoitem.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPacertoinsumoitem.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPacertoinsumoitem.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPacertoinsumoitem.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPacertoinsumoitem.Setid_acerto(const Value: Boolean);   
begin                
  Fid_acerto := Value;   
end;                 

procedure TModelERPacertoinsumoitem.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPacertoinsumoitem.Setnome_produto(const Value: Boolean);   
begin                
  Fnome_produto := Value;   
end;                 

procedure TModelERPacertoinsumoitem.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPacertoinsumoitem.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPacertoinsumoitem.Setid_grade(const Value: Boolean);   
begin                
  Fid_grade := Value;   
end;                 

procedure TModelERPacertoinsumoitem.Setcor_grade(const Value: Boolean);   
begin                
  Fcor_grade := Value;   
end;                 

procedure TModelERPacertoinsumoitem.Settam_grade(const Value: Boolean);   
begin                
  Ftam_grade := Value;   
end;                 

procedure TModelERPacertoinsumoitem.Setgerado(const Value: Boolean);   
begin                
  Fgerado := Value;   
end;                 


end.
