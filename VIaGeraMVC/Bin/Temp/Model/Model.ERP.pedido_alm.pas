unit Model.ERP.pdv_lancamento;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPpdvlancamento = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_cliente : Integer;
    Fid_obra : Integer;
    Fid_usuario : Integer;
    Fid_vendedor : Integer;
    Fdata_emissao : indefinido;
    Fdata_saida : indefinido;
    Fnome_cliente : indefinido;
    Fnome_obra : indefinido;
    Fprodutos : Double;
    Fdescontos : Double;
    Ftotal : Double;
    Fclick : Boolean;
    Fgerado : Boolean;
    Faberto : Boolean;
    Fvenda : Boolean;
    Fid_estimativa_obra : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setid_obra(const Value: Integer);
    procedure Setid_usuario(const Value: Integer);
    procedure Setid_vendedor(const Value: Integer);
    procedure Setdata_emissao(const Value: indefinido);
    procedure Setdata_saida(const Value: indefinido);
    procedure Setnome_cliente(const Value: indefinido);
    procedure Setnome_obra(const Value: indefinido);
    procedure Setprodutos(const Value: Double);
    procedure Setdescontos(const Value: Double);
    procedure Settotal(const Value: Double);
    procedure Setclick(const Value: Boolean);
    procedure Setgerado(const Value: Boolean);
    procedure Setaberto(const Value: Boolean);
    procedure Setvenda(const Value: Boolean);
    procedure Setid_estimativa_obra(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property id_obra     : Integer read Fid_obra write Setid_obra;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property id_vendedor     : Integer read Fid_vendedor write Setid_vendedor;
    property data_emissao     : indefinido read Fdata_emissao write Setdata_emissao;
    property data_saida     : indefinido read Fdata_saida write Setdata_saida;
    property nome_cliente     : indefinido read Fnome_cliente write Setnome_cliente;
    property nome_obra     : indefinido read Fnome_obra write Setnome_obra;
    property produtos     : Double read Fprodutos write Setprodutos;
    property descontos     : Double read Fdescontos write Setdescontos;
    property total     : Double read Ftotal write Settotal;
    property click     : Boolean read Fclick write Setclick;
    property gerado     : Boolean read Fgerado write Setgerado;
    property aberto     : Boolean read Faberto write Setaberto;
    property venda     : Boolean read Fvenda write Setvenda;
    property id_estimativa_obra     : Integer read Fid_estimativa_obra write Setid_estimativa_obra;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPpdvlancamento.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPpdvlancamento) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPpdvlancamento(Model).id;
Self.Fid_empresa         := TModelERPpdvlancamento(Model).id_empresa;
Self.Fid_cliente         := TModelERPpdvlancamento(Model).id_cliente;
Self.Fid_obra         := TModelERPpdvlancamento(Model).id_obra;
Self.Fid_usuario         := TModelERPpdvlancamento(Model).id_usuario;
Self.Fid_vendedor         := TModelERPpdvlancamento(Model).id_vendedor;
Self.Fdata_emissao         := TModelERPpdvlancamento(Model).data_emissao;
Self.Fdata_saida         := TModelERPpdvlancamento(Model).data_saida;
Self.Fnome_cliente         := TModelERPpdvlancamento(Model).nome_cliente;
Self.Fnome_obra         := TModelERPpdvlancamento(Model).nome_obra;
Self.Fprodutos         := TModelERPpdvlancamento(Model).produtos;
Self.Fdescontos         := TModelERPpdvlancamento(Model).descontos;
Self.Ftotal         := TModelERPpdvlancamento(Model).total;
Self.Fclick         := TModelERPpdvlancamento(Model).click;
Self.Fgerado         := TModelERPpdvlancamento(Model).gerado;
Self.Faberto         := TModelERPpdvlancamento(Model).aberto;
Self.Fvenda         := TModelERPpdvlancamento(Model).venda;
Self.Fid_estimativa_obra         := TModelERPpdvlancamento(Model).id_estimativa_obra;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPpdvlancamento.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPpdvlancamento.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPpdvlancamento.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPpdvlancamento.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPpdvlancamento.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPpdvlancamento.Setid_obra(const Value: Boolean);   
begin                
  Fid_obra := Value;   
end;                 

procedure TModelERPpdvlancamento.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPpdvlancamento.Setid_vendedor(const Value: Boolean);   
begin                
  Fid_vendedor := Value;   
end;                 

procedure TModelERPpdvlancamento.Setdata_emissao(const Value: Boolean);   
begin                
  Fdata_emissao := Value;   
end;                 

procedure TModelERPpdvlancamento.Setdata_saida(const Value: Boolean);   
begin                
  Fdata_saida := Value;   
end;                 

procedure TModelERPpdvlancamento.Setnome_cliente(const Value: Boolean);   
begin                
  Fnome_cliente := Value;   
end;                 

procedure TModelERPpdvlancamento.Setnome_obra(const Value: Boolean);   
begin                
  Fnome_obra := Value;   
end;                 

procedure TModelERPpdvlancamento.Setprodutos(const Value: Boolean);   
begin                
  Fprodutos := Value;   
end;                 

procedure TModelERPpdvlancamento.Setdescontos(const Value: Boolean);   
begin                
  Fdescontos := Value;   
end;                 

procedure TModelERPpdvlancamento.Settotal(const Value: Boolean);   
begin                
  Ftotal := Value;   
end;                 

procedure TModelERPpdvlancamento.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPpdvlancamento.Setgerado(const Value: Boolean);   
begin                
  Fgerado := Value;   
end;                 

procedure TModelERPpdvlancamento.Setaberto(const Value: Boolean);   
begin                
  Faberto := Value;   
end;                 

procedure TModelERPpdvlancamento.Setvenda(const Value: Boolean);   
begin                
  Fvenda := Value;   
end;                 

procedure TModelERPpdvlancamento.Setid_estimativa_obra(const Value: Boolean);   
begin                
  Fid_estimativa_obra := Value;   
end;                 


end.
