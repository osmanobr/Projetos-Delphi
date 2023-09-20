unit Model.ERP.estimativa_obra_historico;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPestimativaobrahistorico = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_estimativa_obra : Integer;
    Fid_produto : Integer;
    Fid_almoxarifado : Integer;
    Fnome_produto : WideString;
    Fquantidade : Double;
    Funitario : Double;
    Ftotal : Double;
    Fquantidade_entregue : Double;
    Fconcluido : Boolean;
    Fcusto : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_estimativa_obra(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setid_almoxarifado(const Value: Integer);
    procedure Setnome_produto(const Value: WideString);
    procedure Setquantidade(const Value: Double);
    procedure Setunitario(const Value: Double);
    procedure Settotal(const Value: Double);
    procedure Setquantidade_entregue(const Value: Double);
    procedure Setconcluido(const Value: Boolean);
    procedure Setcusto(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_estimativa_obra     : Integer read Fid_estimativa_obra write Setid_estimativa_obra;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property id_almoxarifado     : Integer read Fid_almoxarifado write Setid_almoxarifado;
    property nome_produto     : WideString read Fnome_produto write Setnome_produto;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property unitario     : Double read Funitario write Setunitario;
    property total     : Double read Ftotal write Settotal;
    property quantidade_entregue     : Double read Fquantidade_entregue write Setquantidade_entregue;
    property concluido     : Boolean read Fconcluido write Setconcluido;
    property custo     : Double read Fcusto write Setcusto;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPestimativaobrahistorico.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPestimativaobrahistorico) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPestimativaobrahistorico(Model).id;
Self.Fid_empresa         := TModelERPestimativaobrahistorico(Model).id_empresa;
Self.Fid_estimativa_obra         := TModelERPestimativaobrahistorico(Model).id_estimativa_obra;
Self.Fid_produto         := TModelERPestimativaobrahistorico(Model).id_produto;
Self.Fid_almoxarifado         := TModelERPestimativaobrahistorico(Model).id_almoxarifado;
Self.Fnome_produto         := TModelERPestimativaobrahistorico(Model).nome_produto;
Self.Fquantidade         := TModelERPestimativaobrahistorico(Model).quantidade;
Self.Funitario         := TModelERPestimativaobrahistorico(Model).unitario;
Self.Ftotal         := TModelERPestimativaobrahistorico(Model).total;
Self.Fquantidade_entregue         := TModelERPestimativaobrahistorico(Model).quantidade_entregue;
Self.Fconcluido         := TModelERPestimativaobrahistorico(Model).concluido;
Self.Fcusto         := TModelERPestimativaobrahistorico(Model).custo;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPestimativaobrahistorico.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPestimativaobrahistorico.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPestimativaobrahistorico.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPestimativaobrahistorico.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPestimativaobrahistorico.Setid_estimativa_obra(const Value: Boolean);   
begin                
  Fid_estimativa_obra := Value;   
end;                 

procedure TModelERPestimativaobrahistorico.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPestimativaobrahistorico.Setid_almoxarifado(const Value: Boolean);   
begin                
  Fid_almoxarifado := Value;   
end;                 

procedure TModelERPestimativaobrahistorico.Setnome_produto(const Value: Boolean);   
begin                
  Fnome_produto := Value;   
end;                 

procedure TModelERPestimativaobrahistorico.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPestimativaobrahistorico.Setunitario(const Value: Boolean);   
begin                
  Funitario := Value;   
end;                 

procedure TModelERPestimativaobrahistorico.Settotal(const Value: Boolean);   
begin                
  Ftotal := Value;   
end;                 

procedure TModelERPestimativaobrahistorico.Setquantidade_entregue(const Value: Boolean);   
begin                
  Fquantidade_entregue := Value;   
end;                 

procedure TModelERPestimativaobrahistorico.Setconcluido(const Value: Boolean);   
begin                
  Fconcluido := Value;   
end;                 

procedure TModelERPestimativaobrahistorico.Setcusto(const Value: Boolean);   
begin                
  Fcusto := Value;   
end;                 


end.
