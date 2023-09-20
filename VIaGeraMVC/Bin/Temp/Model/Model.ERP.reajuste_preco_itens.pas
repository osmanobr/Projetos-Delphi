unit Model.ERP.reajuste;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPreajuste = class(TModelBase)

private
    Fid : Integer;
    Fpreco_venda_antigo : Double;
    Fpreco_venda_atual : Double;
    Fpercentual_aplicado : Double;
    Fid_reajuste : Integer;
    Fid_produto : Integer;
    Fcancelado : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setpreco_venda_antigo(const Value: Double);
    procedure Setpreco_venda_atual(const Value: Double);
    procedure Setpercentual_aplicado(const Value: Double);
    procedure Setid_reajuste(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setcancelado(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property preco_venda_antigo     : Double read Fpreco_venda_antigo write Setpreco_venda_antigo;
    property preco_venda_atual     : Double read Fpreco_venda_atual write Setpreco_venda_atual;
    property percentual_aplicado     : Double read Fpercentual_aplicado write Setpercentual_aplicado;
    property id_reajuste     : Integer read Fid_reajuste write Setid_reajuste;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property cancelado     : Boolean read Fcancelado write Setcancelado;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPreajuste.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPreajuste) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPreajuste(Model).id;
Self.Fpreco_venda_antigo         := TModelERPreajuste(Model).preco_venda_antigo;
Self.Fpreco_venda_atual         := TModelERPreajuste(Model).preco_venda_atual;
Self.Fpercentual_aplicado         := TModelERPreajuste(Model).percentual_aplicado;
Self.Fid_reajuste         := TModelERPreajuste(Model).id_reajuste;
Self.Fid_produto         := TModelERPreajuste(Model).id_produto;
Self.Fcancelado         := TModelERPreajuste(Model).cancelado;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPreajuste.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPreajuste.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPreajuste.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPreajuste.Setpreco_venda_antigo(const Value: Boolean);   
begin                
  Fpreco_venda_antigo := Value;   
end;                 

procedure TModelERPreajuste.Setpreco_venda_atual(const Value: Boolean);   
begin                
  Fpreco_venda_atual := Value;   
end;                 

procedure TModelERPreajuste.Setpercentual_aplicado(const Value: Boolean);   
begin                
  Fpercentual_aplicado := Value;   
end;                 

procedure TModelERPreajuste.Setid_reajuste(const Value: Boolean);   
begin                
  Fid_reajuste := Value;   
end;                 

procedure TModelERPreajuste.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPreajuste.Setcancelado(const Value: Boolean);   
begin                
  Fcancelado := Value;   
end;                 


end.
