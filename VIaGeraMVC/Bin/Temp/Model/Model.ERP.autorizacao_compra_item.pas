unit Model.ERP.autorizacao_compra;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPautorizacaocompra = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_autorizacao : Integer;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Fquantidade : Double;
    Fvl_unitario : Double;
    Fvl_total : Double;
    Fclick : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_autorizacao(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setnome_produto(const Value: WideString);
    procedure Setquantidade(const Value: Double);
    procedure Setvl_unitario(const Value: Double);
    procedure Setvl_total(const Value: Double);
    procedure Setclick(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_autorizacao     : Integer read Fid_autorizacao write Setid_autorizacao;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property nome_produto     : WideString read Fnome_produto write Setnome_produto;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property vl_unitario     : Double read Fvl_unitario write Setvl_unitario;
    property vl_total     : Double read Fvl_total write Setvl_total;
    property click     : Boolean read Fclick write Setclick;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPautorizacaocompra.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPautorizacaocompra) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPautorizacaocompra(Model).id;
Self.Fid_empresa         := TModelERPautorizacaocompra(Model).id_empresa;
Self.Fid_autorizacao         := TModelERPautorizacaocompra(Model).id_autorizacao;
Self.Fid_produto         := TModelERPautorizacaocompra(Model).id_produto;
Self.Fnome_produto         := TModelERPautorizacaocompra(Model).nome_produto;
Self.Fquantidade         := TModelERPautorizacaocompra(Model).quantidade;
Self.Fvl_unitario         := TModelERPautorizacaocompra(Model).vl_unitario;
Self.Fvl_total         := TModelERPautorizacaocompra(Model).vl_total;
Self.Fclick         := TModelERPautorizacaocompra(Model).click;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPautorizacaocompra.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPautorizacaocompra.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPautorizacaocompra.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPautorizacaocompra.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPautorizacaocompra.Setid_autorizacao(const Value: Boolean);   
begin                
  Fid_autorizacao := Value;   
end;                 

procedure TModelERPautorizacaocompra.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPautorizacaocompra.Setnome_produto(const Value: Boolean);   
begin                
  Fnome_produto := Value;   
end;                 

procedure TModelERPautorizacaocompra.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPautorizacaocompra.Setvl_unitario(const Value: Boolean);   
begin                
  Fvl_unitario := Value;   
end;                 

procedure TModelERPautorizacaocompra.Setvl_total(const Value: Boolean);   
begin                
  Fvl_total := Value;   
end;                 

procedure TModelERPautorizacaocompra.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 


end.
