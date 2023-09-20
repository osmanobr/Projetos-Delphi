unit Model.ERP.conta_receber_ocorrencia;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcontareceberocorrencia = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_remessa : Integer;
    Fid_conta_receber : Integer;
    Fclick : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_remessa(const Value: Integer);
    procedure Setid_conta_receber(const Value: Integer);
    procedure Setclick(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_remessa     : Integer read Fid_remessa write Setid_remessa;
    property id_conta_receber     : Integer read Fid_conta_receber write Setid_conta_receber;
    property click     : Boolean read Fclick write Setclick;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcontareceberocorrencia.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcontareceberocorrencia) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcontareceberocorrencia(Model).id;
Self.Fid_empresa         := TModelERPcontareceberocorrencia(Model).id_empresa;
Self.Fid_remessa         := TModelERPcontareceberocorrencia(Model).id_remessa;
Self.Fid_conta_receber         := TModelERPcontareceberocorrencia(Model).id_conta_receber;
Self.Fclick         := TModelERPcontareceberocorrencia(Model).click;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcontareceberocorrencia.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcontareceberocorrencia.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcontareceberocorrencia.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcontareceberocorrencia.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPcontareceberocorrencia.Setid_remessa(const Value: Boolean);   
begin                
  Fid_remessa := Value;   
end;                 

procedure TModelERPcontareceberocorrencia.Setid_conta_receber(const Value: Boolean);   
begin                
  Fid_conta_receber := Value;   
end;                 

procedure TModelERPcontareceberocorrencia.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 


end.
