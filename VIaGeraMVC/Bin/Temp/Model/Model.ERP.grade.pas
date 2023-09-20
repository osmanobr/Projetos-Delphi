unit Model.ERP.funcionario;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPfuncionario = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_produto : Integer;
    Fcor : WideString;
    Ftam : WideString;
    Fest_atu : Double;
    Fest_ent : Double;
    Fest_sai : Double;
    Fest_aceent : Double;
    Fest_acesai : Double;
    Fest_dev : Double;
    Freferencia : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setcor(const Value: WideString);
    procedure Settam(const Value: WideString);
    procedure Setest_atu(const Value: Double);
    procedure Setest_ent(const Value: Double);
    procedure Setest_sai(const Value: Double);
    procedure Setest_aceent(const Value: Double);
    procedure Setest_acesai(const Value: Double);
    procedure Setest_dev(const Value: Double);
    procedure Setreferencia(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property cor     : WideString read Fcor write Setcor;
    property tam     : WideString read Ftam write Settam;
    property est_atu     : Double read Fest_atu write Setest_atu;
    property est_ent     : Double read Fest_ent write Setest_ent;
    property est_sai     : Double read Fest_sai write Setest_sai;
    property est_aceent     : Double read Fest_aceent write Setest_aceent;
    property est_acesai     : Double read Fest_acesai write Setest_acesai;
    property est_dev     : Double read Fest_dev write Setest_dev;
    property referencia     : WideString read Freferencia write Setreferencia;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPfuncionario.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPfuncionario) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPfuncionario(Model).id;
Self.Fid_empresa         := TModelERPfuncionario(Model).id_empresa;
Self.Fid_produto         := TModelERPfuncionario(Model).id_produto;
Self.Fcor         := TModelERPfuncionario(Model).cor;
Self.Ftam         := TModelERPfuncionario(Model).tam;
Self.Fest_atu         := TModelERPfuncionario(Model).est_atu;
Self.Fest_ent         := TModelERPfuncionario(Model).est_ent;
Self.Fest_sai         := TModelERPfuncionario(Model).est_sai;
Self.Fest_aceent         := TModelERPfuncionario(Model).est_aceent;
Self.Fest_acesai         := TModelERPfuncionario(Model).est_acesai;
Self.Fest_dev         := TModelERPfuncionario(Model).est_dev;
Self.Freferencia         := TModelERPfuncionario(Model).referencia;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPfuncionario.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPfuncionario.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPfuncionario.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPfuncionario.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPfuncionario.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPfuncionario.Setcor(const Value: Boolean);   
begin                
  Fcor := Value;   
end;                 

procedure TModelERPfuncionario.Settam(const Value: Boolean);   
begin                
  Ftam := Value;   
end;                 

procedure TModelERPfuncionario.Setest_atu(const Value: Boolean);   
begin                
  Fest_atu := Value;   
end;                 

procedure TModelERPfuncionario.Setest_ent(const Value: Boolean);   
begin                
  Fest_ent := Value;   
end;                 

procedure TModelERPfuncionario.Setest_sai(const Value: Boolean);   
begin                
  Fest_sai := Value;   
end;                 

procedure TModelERPfuncionario.Setest_aceent(const Value: Boolean);   
begin                
  Fest_aceent := Value;   
end;                 

procedure TModelERPfuncionario.Setest_acesai(const Value: Boolean);   
begin                
  Fest_acesai := Value;   
end;                 

procedure TModelERPfuncionario.Setest_dev(const Value: Boolean);   
begin                
  Fest_dev := Value;   
end;                 

procedure TModelERPfuncionario.Setreferencia(const Value: Boolean);   
begin                
  Freferencia := Value;   
end;                 


end.
