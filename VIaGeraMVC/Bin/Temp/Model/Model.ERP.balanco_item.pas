unit Model.ERP.balanco;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPbalanco = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_balanco : Integer;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Fquantidade : Double;
    Fid_grade : Integer;
    Fcor_grade : WideString;
    Ftam_grade : WideString;
    Fgerado : WideString;
    Fusuario_lancamento : Integer;
    Fusuario_fechamento : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_balanco(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setnome_produto(const Value: WideString);
    procedure Setquantidade(const Value: Double);
    procedure Setid_grade(const Value: Integer);
    procedure Setcor_grade(const Value: WideString);
    procedure Settam_grade(const Value: WideString);
    procedure Setgerado(const Value: WideString);
    procedure Setusuario_lancamento(const Value: Integer);
    procedure Setusuario_fechamento(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_balanco     : Integer read Fid_balanco write Setid_balanco;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property nome_produto     : WideString read Fnome_produto write Setnome_produto;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property id_grade     : Integer read Fid_grade write Setid_grade;
    property cor_grade     : WideString read Fcor_grade write Setcor_grade;
    property tam_grade     : WideString read Ftam_grade write Settam_grade;
    property gerado     : WideString read Fgerado write Setgerado;
    property usuario_lancamento     : Integer read Fusuario_lancamento write Setusuario_lancamento;
    property usuario_fechamento     : Integer read Fusuario_fechamento write Setusuario_fechamento;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPbalanco.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPbalanco) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPbalanco(Model).id;
Self.Fid_empresa         := TModelERPbalanco(Model).id_empresa;
Self.Fid_balanco         := TModelERPbalanco(Model).id_balanco;
Self.Fid_produto         := TModelERPbalanco(Model).id_produto;
Self.Fnome_produto         := TModelERPbalanco(Model).nome_produto;
Self.Fquantidade         := TModelERPbalanco(Model).quantidade;
Self.Fid_grade         := TModelERPbalanco(Model).id_grade;
Self.Fcor_grade         := TModelERPbalanco(Model).cor_grade;
Self.Ftam_grade         := TModelERPbalanco(Model).tam_grade;
Self.Fgerado         := TModelERPbalanco(Model).gerado;
Self.Fusuario_lancamento         := TModelERPbalanco(Model).usuario_lancamento;
Self.Fusuario_fechamento         := TModelERPbalanco(Model).usuario_fechamento;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPbalanco.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPbalanco.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPbalanco.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPbalanco.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPbalanco.Setid_balanco(const Value: Boolean);   
begin                
  Fid_balanco := Value;   
end;                 

procedure TModelERPbalanco.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPbalanco.Setnome_produto(const Value: Boolean);   
begin                
  Fnome_produto := Value;   
end;                 

procedure TModelERPbalanco.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPbalanco.Setid_grade(const Value: Boolean);   
begin                
  Fid_grade := Value;   
end;                 

procedure TModelERPbalanco.Setcor_grade(const Value: Boolean);   
begin                
  Fcor_grade := Value;   
end;                 

procedure TModelERPbalanco.Settam_grade(const Value: Boolean);   
begin                
  Ftam_grade := Value;   
end;                 

procedure TModelERPbalanco.Setgerado(const Value: Boolean);   
begin                
  Fgerado := Value;   
end;                 

procedure TModelERPbalanco.Setusuario_lancamento(const Value: Boolean);   
begin                
  Fusuario_lancamento := Value;   
end;                 

procedure TModelERPbalanco.Setusuario_fechamento(const Value: Boolean);   
begin                
  Fusuario_fechamento := Value;   
end;                 


end.
