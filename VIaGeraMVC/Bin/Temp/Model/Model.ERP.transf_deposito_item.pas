unit Model.ERP.transf_deposito;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPtransfdeposito = class(TModelBase)

private
    Fid : Integer;
    Fid_transf_deposito : Integer;
    Fid_produto_origem : Integer;
    Fnome_produto : WideString;
    Ftipo : indefinido;
    Fquantidade : Double;
    Fid_grade : Integer;
    Fcor_grade : indefinido;
    Ftam_grade : indefinido;
    Fgerado : indefinido;
    Fid_empresa : Integer;
    Fid_produto_destino : Integer;
    Fcancelado : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_transf_deposito(const Value: Integer);
    procedure Setid_produto_origem(const Value: Integer);
    procedure Setnome_produto(const Value: WideString);
    procedure Settipo(const Value: indefinido);
    procedure Setquantidade(const Value: Double);
    procedure Setid_grade(const Value: Integer);
    procedure Setcor_grade(const Value: indefinido);
    procedure Settam_grade(const Value: indefinido);
    procedure Setgerado(const Value: indefinido);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_produto_destino(const Value: Integer);
    procedure Setcancelado(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_transf_deposito     : Integer read Fid_transf_deposito write Setid_transf_deposito;
    property id_produto_origem     : Integer read Fid_produto_origem write Setid_produto_origem;
    property nome_produto     : WideString read Fnome_produto write Setnome_produto;
    property tipo     : indefinido read Ftipo write Settipo;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property id_grade     : Integer read Fid_grade write Setid_grade;
    property cor_grade     : indefinido read Fcor_grade write Setcor_grade;
    property tam_grade     : indefinido read Ftam_grade write Settam_grade;
    property gerado     : indefinido read Fgerado write Setgerado;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_produto_destino     : Integer read Fid_produto_destino write Setid_produto_destino;
    property cancelado     : indefinido read Fcancelado write Setcancelado;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPtransfdeposito.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPtransfdeposito) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPtransfdeposito(Model).id;
Self.Fid_transf_deposito         := TModelERPtransfdeposito(Model).id_transf_deposito;
Self.Fid_produto_origem         := TModelERPtransfdeposito(Model).id_produto_origem;
Self.Fnome_produto         := TModelERPtransfdeposito(Model).nome_produto;
Self.Ftipo         := TModelERPtransfdeposito(Model).tipo;
Self.Fquantidade         := TModelERPtransfdeposito(Model).quantidade;
Self.Fid_grade         := TModelERPtransfdeposito(Model).id_grade;
Self.Fcor_grade         := TModelERPtransfdeposito(Model).cor_grade;
Self.Ftam_grade         := TModelERPtransfdeposito(Model).tam_grade;
Self.Fgerado         := TModelERPtransfdeposito(Model).gerado;
Self.Fid_empresa         := TModelERPtransfdeposito(Model).id_empresa;
Self.Fid_produto_destino         := TModelERPtransfdeposito(Model).id_produto_destino;
Self.Fcancelado         := TModelERPtransfdeposito(Model).cancelado;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPtransfdeposito.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPtransfdeposito.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPtransfdeposito.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPtransfdeposito.Setid_transf_deposito(const Value: Boolean);   
begin                
  Fid_transf_deposito := Value;   
end;                 

procedure TModelERPtransfdeposito.Setid_produto_origem(const Value: Boolean);   
begin                
  Fid_produto_origem := Value;   
end;                 

procedure TModelERPtransfdeposito.Setnome_produto(const Value: Boolean);   
begin                
  Fnome_produto := Value;   
end;                 

procedure TModelERPtransfdeposito.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPtransfdeposito.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPtransfdeposito.Setid_grade(const Value: Boolean);   
begin                
  Fid_grade := Value;   
end;                 

procedure TModelERPtransfdeposito.Setcor_grade(const Value: Boolean);   
begin                
  Fcor_grade := Value;   
end;                 

procedure TModelERPtransfdeposito.Settam_grade(const Value: Boolean);   
begin                
  Ftam_grade := Value;   
end;                 

procedure TModelERPtransfdeposito.Setgerado(const Value: Boolean);   
begin                
  Fgerado := Value;   
end;                 

procedure TModelERPtransfdeposito.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPtransfdeposito.Setid_produto_destino(const Value: Boolean);   
begin                
  Fid_produto_destino := Value;   
end;                 

procedure TModelERPtransfdeposito.Setcancelado(const Value: Boolean);   
begin                
  Fcancelado := Value;   
end;                 


end.
