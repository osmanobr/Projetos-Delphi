unit Model.ERP.comissao_venda_servico;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcomissaovendaservico = class(TModelBase)

private
    Fid : Integer;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Fid_insumo : Integer;
    Fnome_insumo : WideString;
    Fquantidade : Double;
    Funidade : WideString;
    Fmaodeobra : Double;
    Fmaquinario : Double;
    Foutros : Double;
    Fobs : indefinido;
    Fcomissao : Double;
    Fpreco_custo : Double;
    Fid_conta : WideString;
    Fativo : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setnome_produto(const Value: WideString);
    procedure Setid_insumo(const Value: Integer);
    procedure Setnome_insumo(const Value: WideString);
    procedure Setquantidade(const Value: Double);
    procedure Setunidade(const Value: WideString);
    procedure Setmaodeobra(const Value: Double);
    procedure Setmaquinario(const Value: Double);
    procedure Setoutros(const Value: Double);
    procedure Setobs(const Value: indefinido);
    procedure Setcomissao(const Value: Double);
    procedure Setpreco_custo(const Value: Double);
    procedure Setid_conta(const Value: WideString);
    procedure Setativo(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property nome_produto     : WideString read Fnome_produto write Setnome_produto;
    property id_insumo     : Integer read Fid_insumo write Setid_insumo;
    property nome_insumo     : WideString read Fnome_insumo write Setnome_insumo;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property unidade     : WideString read Funidade write Setunidade;
    property maodeobra     : Double read Fmaodeobra write Setmaodeobra;
    property maquinario     : Double read Fmaquinario write Setmaquinario;
    property outros     : Double read Foutros write Setoutros;
    property obs     : indefinido read Fobs write Setobs;
    property comissao     : Double read Fcomissao write Setcomissao;
    property preco_custo     : Double read Fpreco_custo write Setpreco_custo;
    property id_conta     : WideString read Fid_conta write Setid_conta;
    property ativo     : indefinido read Fativo write Setativo;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcomissaovendaservico.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcomissaovendaservico) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcomissaovendaservico(Model).id;
Self.Fid_produto         := TModelERPcomissaovendaservico(Model).id_produto;
Self.Fnome_produto         := TModelERPcomissaovendaservico(Model).nome_produto;
Self.Fid_insumo         := TModelERPcomissaovendaservico(Model).id_insumo;
Self.Fnome_insumo         := TModelERPcomissaovendaservico(Model).nome_insumo;
Self.Fquantidade         := TModelERPcomissaovendaservico(Model).quantidade;
Self.Funidade         := TModelERPcomissaovendaservico(Model).unidade;
Self.Fmaodeobra         := TModelERPcomissaovendaservico(Model).maodeobra;
Self.Fmaquinario         := TModelERPcomissaovendaservico(Model).maquinario;
Self.Foutros         := TModelERPcomissaovendaservico(Model).outros;
Self.Fobs         := TModelERPcomissaovendaservico(Model).obs;
Self.Fcomissao         := TModelERPcomissaovendaservico(Model).comissao;
Self.Fpreco_custo         := TModelERPcomissaovendaservico(Model).preco_custo;
Self.Fid_conta         := TModelERPcomissaovendaservico(Model).id_conta;
Self.Fativo         := TModelERPcomissaovendaservico(Model).ativo;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcomissaovendaservico.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcomissaovendaservico.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcomissaovendaservico.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcomissaovendaservico.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPcomissaovendaservico.Setnome_produto(const Value: Boolean);   
begin                
  Fnome_produto := Value;   
end;                 

procedure TModelERPcomissaovendaservico.Setid_insumo(const Value: Boolean);   
begin                
  Fid_insumo := Value;   
end;                 

procedure TModelERPcomissaovendaservico.Setnome_insumo(const Value: Boolean);   
begin                
  Fnome_insumo := Value;   
end;                 

procedure TModelERPcomissaovendaservico.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPcomissaovendaservico.Setunidade(const Value: Boolean);   
begin                
  Funidade := Value;   
end;                 

procedure TModelERPcomissaovendaservico.Setmaodeobra(const Value: Boolean);   
begin                
  Fmaodeobra := Value;   
end;                 

procedure TModelERPcomissaovendaservico.Setmaquinario(const Value: Boolean);   
begin                
  Fmaquinario := Value;   
end;                 

procedure TModelERPcomissaovendaservico.Setoutros(const Value: Boolean);   
begin                
  Foutros := Value;   
end;                 

procedure TModelERPcomissaovendaservico.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 

procedure TModelERPcomissaovendaservico.Setcomissao(const Value: Boolean);   
begin                
  Fcomissao := Value;   
end;                 

procedure TModelERPcomissaovendaservico.Setpreco_custo(const Value: Boolean);   
begin                
  Fpreco_custo := Value;   
end;                 

procedure TModelERPcomissaovendaservico.Setid_conta(const Value: Boolean);   
begin                
  Fid_conta := Value;   
end;                 

procedure TModelERPcomissaovendaservico.Setativo(const Value: Boolean);   
begin                
  Fativo := Value;   
end;                 


end.
