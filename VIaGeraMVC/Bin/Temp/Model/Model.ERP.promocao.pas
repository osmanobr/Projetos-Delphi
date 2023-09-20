unit Model.ERP.produtos_uniao;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPprodutosuniao = class(TModelBase)

private
    Fid : Integer;
    Fdescricao : indefinido;
    Finicio_promocao : indefinido;
    Ffinal_promocao : indefinido;
    Fativo : Boolean;
    Fcancelado : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setdescricao(const Value: indefinido);
    procedure Setinicio_promocao(const Value: indefinido);
    procedure Setfinal_promocao(const Value: indefinido);
    procedure Setativo(const Value: Boolean);
    procedure Setcancelado(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property descricao     : indefinido read Fdescricao write Setdescricao;
    property inicio_promocao     : indefinido read Finicio_promocao write Setinicio_promocao;
    property final_promocao     : indefinido read Ffinal_promocao write Setfinal_promocao;
    property ativo     : Boolean read Fativo write Setativo;
    property cancelado     : Boolean read Fcancelado write Setcancelado;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPprodutosuniao.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPprodutosuniao) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPprodutosuniao(Model).id;
Self.Fdescricao         := TModelERPprodutosuniao(Model).descricao;
Self.Finicio_promocao         := TModelERPprodutosuniao(Model).inicio_promocao;
Self.Ffinal_promocao         := TModelERPprodutosuniao(Model).final_promocao;
Self.Fativo         := TModelERPprodutosuniao(Model).ativo;
Self.Fcancelado         := TModelERPprodutosuniao(Model).cancelado;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPprodutosuniao.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPprodutosuniao.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPprodutosuniao.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPprodutosuniao.Setdescricao(const Value: Boolean);   
begin                
  Fdescricao := Value;   
end;                 

procedure TModelERPprodutosuniao.Setinicio_promocao(const Value: Boolean);   
begin                
  Finicio_promocao := Value;   
end;                 

procedure TModelERPprodutosuniao.Setfinal_promocao(const Value: Boolean);   
begin                
  Ffinal_promocao := Value;   
end;                 

procedure TModelERPprodutosuniao.Setativo(const Value: Boolean);   
begin                
  Fativo := Value;   
end;                 

procedure TModelERPprodutosuniao.Setcancelado(const Value: Boolean);   
begin                
  Fcancelado := Value;   
end;                 


end.
