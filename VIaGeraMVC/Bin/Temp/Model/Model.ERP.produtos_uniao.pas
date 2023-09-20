unit Model.ERP.produtos_lote_itens;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPprodutosloteitens = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_usuario : Integer;
    Fdata : TDateTime;
    Fmotivo : indefinido;
    Fprod_antigo : Integer;
    Fquantidade_antigo : Double;
    Fprod_novo : Integer;
    Fquantidade_novo : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_usuario(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setmotivo(const Value: indefinido);
    procedure Setprod_antigo(const Value: Integer);
    procedure Setquantidade_antigo(const Value: Double);
    procedure Setprod_novo(const Value: Integer);
    procedure Setquantidade_novo(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property data     : TDateTime read Fdata write Setdata;
    property motivo     : indefinido read Fmotivo write Setmotivo;
    property prod_antigo     : Integer read Fprod_antigo write Setprod_antigo;
    property quantidade_antigo     : Double read Fquantidade_antigo write Setquantidade_antigo;
    property prod_novo     : Integer read Fprod_novo write Setprod_novo;
    property quantidade_novo     : Double read Fquantidade_novo write Setquantidade_novo;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPprodutosloteitens.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPprodutosloteitens) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPprodutosloteitens(Model).id;
Self.Fid_empresa         := TModelERPprodutosloteitens(Model).id_empresa;
Self.Fid_usuario         := TModelERPprodutosloteitens(Model).id_usuario;
Self.Fdata         := TModelERPprodutosloteitens(Model).data;
Self.Fmotivo         := TModelERPprodutosloteitens(Model).motivo;
Self.Fprod_antigo         := TModelERPprodutosloteitens(Model).prod_antigo;
Self.Fquantidade_antigo         := TModelERPprodutosloteitens(Model).quantidade_antigo;
Self.Fprod_novo         := TModelERPprodutosloteitens(Model).prod_novo;
Self.Fquantidade_novo         := TModelERPprodutosloteitens(Model).quantidade_novo;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPprodutosloteitens.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPprodutosloteitens.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPprodutosloteitens.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPprodutosloteitens.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPprodutosloteitens.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPprodutosloteitens.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPprodutosloteitens.Setmotivo(const Value: Boolean);   
begin                
  Fmotivo := Value;   
end;                 

procedure TModelERPprodutosloteitens.Setprod_antigo(const Value: Boolean);   
begin                
  Fprod_antigo := Value;   
end;                 

procedure TModelERPprodutosloteitens.Setquantidade_antigo(const Value: Boolean);   
begin                
  Fquantidade_antigo := Value;   
end;                 

procedure TModelERPprodutosloteitens.Setprod_novo(const Value: Boolean);   
begin                
  Fprod_novo := Value;   
end;                 

procedure TModelERPprodutosloteitens.Setquantidade_novo(const Value: Boolean);   
begin                
  Fquantidade_novo := Value;   
end;                 


end.
