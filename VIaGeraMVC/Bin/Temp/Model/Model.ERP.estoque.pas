unit Model.ERP.estimativa_obra_item;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPestimativaobraitem = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata : TDateTime;
    Festoque : WideString;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Foperacao : WideString;
    Fid_operacao : Integer;
    Fquantidade : Double;
    Fnota : WideString;
    Ftipo : WideString;
    Fquantidade_atual : Double;
    Festoque_atual : Double;
    Fquantidade_empresa_terceiro : Double;
    Fquantidade_terceiro_empresa : Double;
    Fqtd_caixa : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setestoque(const Value: WideString);
    procedure Setid_produto(const Value: Integer);
    procedure Setnome_produto(const Value: WideString);
    procedure Setoperacao(const Value: WideString);
    procedure Setid_operacao(const Value: Integer);
    procedure Setquantidade(const Value: Double);
    procedure Setnota(const Value: WideString);
    procedure Settipo(const Value: WideString);
    procedure Setquantidade_atual(const Value: Double);
    procedure Setestoque_atual(const Value: Double);
    procedure Setquantidade_empresa_terceiro(const Value: Double);
    procedure Setquantidade_terceiro_empresa(const Value: Double);
    procedure Setqtd_caixa(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property data     : TDateTime read Fdata write Setdata;
    property estoque     : WideString read Festoque write Setestoque;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property nome_produto     : WideString read Fnome_produto write Setnome_produto;
    property operacao     : WideString read Foperacao write Setoperacao;
    property id_operacao     : Integer read Fid_operacao write Setid_operacao;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property nota     : WideString read Fnota write Setnota;
    property tipo     : WideString read Ftipo write Settipo;
    property quantidade_atual     : Double read Fquantidade_atual write Setquantidade_atual;
    property estoque_atual     : Double read Festoque_atual write Setestoque_atual;
    property quantidade_empresa_terceiro     : Double read Fquantidade_empresa_terceiro write Setquantidade_empresa_terceiro;
    property quantidade_terceiro_empresa     : Double read Fquantidade_terceiro_empresa write Setquantidade_terceiro_empresa;
    property qtd_caixa     : Double read Fqtd_caixa write Setqtd_caixa;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPestimativaobraitem.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPestimativaobraitem) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPestimativaobraitem(Model).id;
Self.Fid_empresa         := TModelERPestimativaobraitem(Model).id_empresa;
Self.Fdata         := TModelERPestimativaobraitem(Model).data;
Self.Festoque         := TModelERPestimativaobraitem(Model).estoque;
Self.Fid_produto         := TModelERPestimativaobraitem(Model).id_produto;
Self.Fnome_produto         := TModelERPestimativaobraitem(Model).nome_produto;
Self.Foperacao         := TModelERPestimativaobraitem(Model).operacao;
Self.Fid_operacao         := TModelERPestimativaobraitem(Model).id_operacao;
Self.Fquantidade         := TModelERPestimativaobraitem(Model).quantidade;
Self.Fnota         := TModelERPestimativaobraitem(Model).nota;
Self.Ftipo         := TModelERPestimativaobraitem(Model).tipo;
Self.Fquantidade_atual         := TModelERPestimativaobraitem(Model).quantidade_atual;
Self.Festoque_atual         := TModelERPestimativaobraitem(Model).estoque_atual;
Self.Fquantidade_empresa_terceiro         := TModelERPestimativaobraitem(Model).quantidade_empresa_terceiro;
Self.Fquantidade_terceiro_empresa         := TModelERPestimativaobraitem(Model).quantidade_terceiro_empresa;
Self.Fqtd_caixa         := TModelERPestimativaobraitem(Model).qtd_caixa;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPestimativaobraitem.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPestimativaobraitem.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPestimativaobraitem.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPestimativaobraitem.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPestimativaobraitem.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPestimativaobraitem.Setestoque(const Value: Boolean);   
begin                
  Festoque := Value;   
end;                 

procedure TModelERPestimativaobraitem.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPestimativaobraitem.Setnome_produto(const Value: Boolean);   
begin                
  Fnome_produto := Value;   
end;                 

procedure TModelERPestimativaobraitem.Setoperacao(const Value: Boolean);   
begin                
  Foperacao := Value;   
end;                 

procedure TModelERPestimativaobraitem.Setid_operacao(const Value: Boolean);   
begin                
  Fid_operacao := Value;   
end;                 

procedure TModelERPestimativaobraitem.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPestimativaobraitem.Setnota(const Value: Boolean);   
begin                
  Fnota := Value;   
end;                 

procedure TModelERPestimativaobraitem.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPestimativaobraitem.Setquantidade_atual(const Value: Boolean);   
begin                
  Fquantidade_atual := Value;   
end;                 

procedure TModelERPestimativaobraitem.Setestoque_atual(const Value: Boolean);   
begin                
  Festoque_atual := Value;   
end;                 

procedure TModelERPestimativaobraitem.Setquantidade_empresa_terceiro(const Value: Boolean);   
begin                
  Fquantidade_empresa_terceiro := Value;   
end;                 

procedure TModelERPestimativaobraitem.Setquantidade_terceiro_empresa(const Value: Boolean);   
begin                
  Fquantidade_terceiro_empresa := Value;   
end;                 

procedure TModelERPestimativaobraitem.Setqtd_caixa(const Value: Boolean);   
begin                
  Fqtd_caixa := Value;   
end;                 


end.
