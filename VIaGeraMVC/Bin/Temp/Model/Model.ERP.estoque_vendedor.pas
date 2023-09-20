unit Model.ERP.estoque_terceiro;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPestoqueterceiro = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata : TDateTime;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Foperacao : WideString;
    Fid_vendedor : Integer;
    Fid_pedido : Integer;
    Fid_palm : Integer;
    Fid_devolucao : Integer;
    Fqtd_carga : Double;
    Fqtd_venda : Double;
    Fqtd_devolucao : Double;
    Fid_usuario : Integer;
    Fobservacao : WideString;
    Fclick : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setid_produto(const Value: Integer);
    procedure Setnome_produto(const Value: WideString);
    procedure Setoperacao(const Value: WideString);
    procedure Setid_vendedor(const Value: Integer);
    procedure Setid_pedido(const Value: Integer);
    procedure Setid_palm(const Value: Integer);
    procedure Setid_devolucao(const Value: Integer);
    procedure Setqtd_carga(const Value: Double);
    procedure Setqtd_venda(const Value: Double);
    procedure Setqtd_devolucao(const Value: Double);
    procedure Setid_usuario(const Value: Integer);
    procedure Setobservacao(const Value: WideString);
    procedure Setclick(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property data     : TDateTime read Fdata write Setdata;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property nome_produto     : WideString read Fnome_produto write Setnome_produto;
    property operacao     : WideString read Foperacao write Setoperacao;
    property id_vendedor     : Integer read Fid_vendedor write Setid_vendedor;
    property id_pedido     : Integer read Fid_pedido write Setid_pedido;
    property id_palm     : Integer read Fid_palm write Setid_palm;
    property id_devolucao     : Integer read Fid_devolucao write Setid_devolucao;
    property qtd_carga     : Double read Fqtd_carga write Setqtd_carga;
    property qtd_venda     : Double read Fqtd_venda write Setqtd_venda;
    property qtd_devolucao     : Double read Fqtd_devolucao write Setqtd_devolucao;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property observacao     : WideString read Fobservacao write Setobservacao;
    property click     : Boolean read Fclick write Setclick;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPestoqueterceiro.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPestoqueterceiro) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPestoqueterceiro(Model).id;
Self.Fid_empresa         := TModelERPestoqueterceiro(Model).id_empresa;
Self.Fdata         := TModelERPestoqueterceiro(Model).data;
Self.Fid_produto         := TModelERPestoqueterceiro(Model).id_produto;
Self.Fnome_produto         := TModelERPestoqueterceiro(Model).nome_produto;
Self.Foperacao         := TModelERPestoqueterceiro(Model).operacao;
Self.Fid_vendedor         := TModelERPestoqueterceiro(Model).id_vendedor;
Self.Fid_pedido         := TModelERPestoqueterceiro(Model).id_pedido;
Self.Fid_palm         := TModelERPestoqueterceiro(Model).id_palm;
Self.Fid_devolucao         := TModelERPestoqueterceiro(Model).id_devolucao;
Self.Fqtd_carga         := TModelERPestoqueterceiro(Model).qtd_carga;
Self.Fqtd_venda         := TModelERPestoqueterceiro(Model).qtd_venda;
Self.Fqtd_devolucao         := TModelERPestoqueterceiro(Model).qtd_devolucao;
Self.Fid_usuario         := TModelERPestoqueterceiro(Model).id_usuario;
Self.Fobservacao         := TModelERPestoqueterceiro(Model).observacao;
Self.Fclick         := TModelERPestoqueterceiro(Model).click;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPestoqueterceiro.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPestoqueterceiro.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPestoqueterceiro.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPestoqueterceiro.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPestoqueterceiro.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPestoqueterceiro.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPestoqueterceiro.Setnome_produto(const Value: Boolean);   
begin                
  Fnome_produto := Value;   
end;                 

procedure TModelERPestoqueterceiro.Setoperacao(const Value: Boolean);   
begin                
  Foperacao := Value;   
end;                 

procedure TModelERPestoqueterceiro.Setid_vendedor(const Value: Boolean);   
begin                
  Fid_vendedor := Value;   
end;                 

procedure TModelERPestoqueterceiro.Setid_pedido(const Value: Boolean);   
begin                
  Fid_pedido := Value;   
end;                 

procedure TModelERPestoqueterceiro.Setid_palm(const Value: Boolean);   
begin                
  Fid_palm := Value;   
end;                 

procedure TModelERPestoqueterceiro.Setid_devolucao(const Value: Boolean);   
begin                
  Fid_devolucao := Value;   
end;                 

procedure TModelERPestoqueterceiro.Setqtd_carga(const Value: Boolean);   
begin                
  Fqtd_carga := Value;   
end;                 

procedure TModelERPestoqueterceiro.Setqtd_venda(const Value: Boolean);   
begin                
  Fqtd_venda := Value;   
end;                 

procedure TModelERPestoqueterceiro.Setqtd_devolucao(const Value: Boolean);   
begin                
  Fqtd_devolucao := Value;   
end;                 

procedure TModelERPestoqueterceiro.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPestoqueterceiro.Setobservacao(const Value: Boolean);   
begin                
  Fobservacao := Value;   
end;                 

procedure TModelERPestoqueterceiro.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 


end.
