unit Model.ERP.motorista_documentos;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPmotoristadocumentos = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_funcionario : Integer;
    Fdata : TDateTime;
    Fsituacao : indefinido;
    Fdata_devolucao : TDateTime;
    Fobs : indefinido;
    Fclick : Boolean;
    Fnome_funcionario : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_funcionario(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setsituacao(const Value: indefinido);
    procedure Setdata_devolucao(const Value: TDateTime);
    procedure Setobs(const Value: indefinido);
    procedure Setclick(const Value: Boolean);
    procedure Setnome_funcionario(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_funcionario     : Integer read Fid_funcionario write Setid_funcionario;
    property data     : TDateTime read Fdata write Setdata;
    property situacao     : indefinido read Fsituacao write Setsituacao;
    property data_devolucao     : TDateTime read Fdata_devolucao write Setdata_devolucao;
    property obs     : indefinido read Fobs write Setobs;
    property click     : Boolean read Fclick write Setclick;
    property nome_funcionario     : indefinido read Fnome_funcionario write Setnome_funcionario;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPmotoristadocumentos.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPmotoristadocumentos) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPmotoristadocumentos(Model).id;
Self.Fid_empresa         := TModelERPmotoristadocumentos(Model).id_empresa;
Self.Fid_funcionario         := TModelERPmotoristadocumentos(Model).id_funcionario;
Self.Fdata         := TModelERPmotoristadocumentos(Model).data;
Self.Fsituacao         := TModelERPmotoristadocumentos(Model).situacao;
Self.Fdata_devolucao         := TModelERPmotoristadocumentos(Model).data_devolucao;
Self.Fobs         := TModelERPmotoristadocumentos(Model).obs;
Self.Fclick         := TModelERPmotoristadocumentos(Model).click;
Self.Fnome_funcionario         := TModelERPmotoristadocumentos(Model).nome_funcionario;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPmotoristadocumentos.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPmotoristadocumentos.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPmotoristadocumentos.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPmotoristadocumentos.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPmotoristadocumentos.Setid_funcionario(const Value: Boolean);   
begin                
  Fid_funcionario := Value;   
end;                 

procedure TModelERPmotoristadocumentos.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPmotoristadocumentos.Setsituacao(const Value: Boolean);   
begin                
  Fsituacao := Value;   
end;                 

procedure TModelERPmotoristadocumentos.Setdata_devolucao(const Value: Boolean);   
begin                
  Fdata_devolucao := Value;   
end;                 

procedure TModelERPmotoristadocumentos.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 

procedure TModelERPmotoristadocumentos.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPmotoristadocumentos.Setnome_funcionario(const Value: Boolean);   
begin                
  Fnome_funcionario := Value;   
end;                 


end.
