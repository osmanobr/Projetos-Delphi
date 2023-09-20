unit Model.ERP.conta_receber_uniao;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcontareceberuniao = class(TModelBase)

private
    Fid : Integer;
    Fid_conta_receber : Integer;
    Fpendente : Boolean;
    Fvencimento : TDateTime;
    Fboleto : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_conta_receber(const Value: Integer);
    procedure Setpendente(const Value: Boolean);
    procedure Setvencimento(const Value: TDateTime);
    procedure Setboleto(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_conta_receber     : Integer read Fid_conta_receber write Setid_conta_receber;
    property pendente     : Boolean read Fpendente write Setpendente;
    property vencimento     : TDateTime read Fvencimento write Setvencimento;
    property boleto     : indefinido read Fboleto write Setboleto;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcontareceberuniao.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcontareceberuniao) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcontareceberuniao(Model).id;
Self.Fid_conta_receber         := TModelERPcontareceberuniao(Model).id_conta_receber;
Self.Fpendente         := TModelERPcontareceberuniao(Model).pendente;
Self.Fvencimento         := TModelERPcontareceberuniao(Model).vencimento;
Self.Fboleto         := TModelERPcontareceberuniao(Model).boleto;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcontareceberuniao.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcontareceberuniao.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcontareceberuniao.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcontareceberuniao.Setid_conta_receber(const Value: Boolean);   
begin                
  Fid_conta_receber := Value;   
end;                 

procedure TModelERPcontareceberuniao.Setpendente(const Value: Boolean);   
begin                
  Fpendente := Value;   
end;                 

procedure TModelERPcontareceberuniao.Setvencimento(const Value: Boolean);   
begin                
  Fvencimento := Value;   
end;                 

procedure TModelERPcontareceberuniao.Setboleto(const Value: Boolean);   
begin                
  Fboleto := Value;   
end;                 


end.
