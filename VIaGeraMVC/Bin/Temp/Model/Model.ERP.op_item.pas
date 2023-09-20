unit Model.ERP.op;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPop = class(TModelBase)

private
    Fid : Integer;
    Fid_op : Integer;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Fquantidade : Double;
    Fquantidade_perdas : Double;
    Fquantidade_boas : Double;
    Funidade : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_op(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setnome_produto(const Value: WideString);
    procedure Setquantidade(const Value: Double);
    procedure Setquantidade_perdas(const Value: Double);
    procedure Setquantidade_boas(const Value: Double);
    procedure Setunidade(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_op     : Integer read Fid_op write Setid_op;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property nome_produto     : WideString read Fnome_produto write Setnome_produto;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property quantidade_perdas     : Double read Fquantidade_perdas write Setquantidade_perdas;
    property quantidade_boas     : Double read Fquantidade_boas write Setquantidade_boas;
    property unidade     : indefinido read Funidade write Setunidade;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPop.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPop) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPop(Model).id;
Self.Fid_op         := TModelERPop(Model).id_op;
Self.Fid_produto         := TModelERPop(Model).id_produto;
Self.Fnome_produto         := TModelERPop(Model).nome_produto;
Self.Fquantidade         := TModelERPop(Model).quantidade;
Self.Fquantidade_perdas         := TModelERPop(Model).quantidade_perdas;
Self.Fquantidade_boas         := TModelERPop(Model).quantidade_boas;
Self.Funidade         := TModelERPop(Model).unidade;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPop.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPop.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPop.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPop.Setid_op(const Value: Boolean);   
begin                
  Fid_op := Value;   
end;                 

procedure TModelERPop.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPop.Setnome_produto(const Value: Boolean);   
begin                
  Fnome_produto := Value;   
end;                 

procedure TModelERPop.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPop.Setquantidade_perdas(const Value: Boolean);   
begin                
  Fquantidade_perdas := Value;   
end;                 

procedure TModelERPop.Setquantidade_boas(const Value: Boolean);   
begin                
  Fquantidade_boas := Value;   
end;                 

procedure TModelERPop.Setunidade(const Value: Boolean);   
begin                
  Funidade := Value;   
end;                 


end.
