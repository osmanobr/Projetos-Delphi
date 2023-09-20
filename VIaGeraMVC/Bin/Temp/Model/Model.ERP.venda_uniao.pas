unit Model.ERP.venda_servico;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPvendaservico = class(TModelBase)

private
    Fid : Integer;
    Fdata : TDateTime;
    Fid_usuario : Integer;
    Fid_cliente : Integer;
    Fnome_cliente : indefinido;
    Fid_forma : Integer;
    Fid_vendedor : Integer;
    Fvl_produto : Double;
    Fvl_servico : Double;
    Fvl_desconto : Double;
    Fvl_total : Double;
    Fobservacao : indefinido;
    Fid_cfop : Integer;
    Fid_venda : Integer;
    Fcancelada : Boolean;
    Fmodalidade : indefinido;
    Fstatus : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setid_usuario(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setnome_cliente(const Value: indefinido);
    procedure Setid_forma(const Value: Integer);
    procedure Setid_vendedor(const Value: Integer);
    procedure Setvl_produto(const Value: Double);
    procedure Setvl_servico(const Value: Double);
    procedure Setvl_desconto(const Value: Double);
    procedure Setvl_total(const Value: Double);
    procedure Setobservacao(const Value: indefinido);
    procedure Setid_cfop(const Value: Integer);
    procedure Setid_venda(const Value: Integer);
    procedure Setcancelada(const Value: Boolean);
    procedure Setmodalidade(const Value: indefinido);
    procedure Setstatus(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property data     : TDateTime read Fdata write Setdata;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property nome_cliente     : indefinido read Fnome_cliente write Setnome_cliente;
    property id_forma     : Integer read Fid_forma write Setid_forma;
    property id_vendedor     : Integer read Fid_vendedor write Setid_vendedor;
    property vl_produto     : Double read Fvl_produto write Setvl_produto;
    property vl_servico     : Double read Fvl_servico write Setvl_servico;
    property vl_desconto     : Double read Fvl_desconto write Setvl_desconto;
    property vl_total     : Double read Fvl_total write Setvl_total;
    property observacao     : indefinido read Fobservacao write Setobservacao;
    property id_cfop     : Integer read Fid_cfop write Setid_cfop;
    property id_venda     : Integer read Fid_venda write Setid_venda;
    property cancelada     : Boolean read Fcancelada write Setcancelada;
    property modalidade     : indefinido read Fmodalidade write Setmodalidade;
    property status     : indefinido read Fstatus write Setstatus;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPvendaservico.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPvendaservico) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPvendaservico(Model).id;
Self.Fdata         := TModelERPvendaservico(Model).data;
Self.Fid_usuario         := TModelERPvendaservico(Model).id_usuario;
Self.Fid_cliente         := TModelERPvendaservico(Model).id_cliente;
Self.Fnome_cliente         := TModelERPvendaservico(Model).nome_cliente;
Self.Fid_forma         := TModelERPvendaservico(Model).id_forma;
Self.Fid_vendedor         := TModelERPvendaservico(Model).id_vendedor;
Self.Fvl_produto         := TModelERPvendaservico(Model).vl_produto;
Self.Fvl_servico         := TModelERPvendaservico(Model).vl_servico;
Self.Fvl_desconto         := TModelERPvendaservico(Model).vl_desconto;
Self.Fvl_total         := TModelERPvendaservico(Model).vl_total;
Self.Fobservacao         := TModelERPvendaservico(Model).observacao;
Self.Fid_cfop         := TModelERPvendaservico(Model).id_cfop;
Self.Fid_venda         := TModelERPvendaservico(Model).id_venda;
Self.Fcancelada         := TModelERPvendaservico(Model).cancelada;
Self.Fmodalidade         := TModelERPvendaservico(Model).modalidade;
Self.Fstatus         := TModelERPvendaservico(Model).status;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPvendaservico.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPvendaservico.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPvendaservico.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPvendaservico.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPvendaservico.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPvendaservico.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPvendaservico.Setnome_cliente(const Value: Boolean);   
begin                
  Fnome_cliente := Value;   
end;                 

procedure TModelERPvendaservico.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 

procedure TModelERPvendaservico.Setid_vendedor(const Value: Boolean);   
begin                
  Fid_vendedor := Value;   
end;                 

procedure TModelERPvendaservico.Setvl_produto(const Value: Boolean);   
begin                
  Fvl_produto := Value;   
end;                 

procedure TModelERPvendaservico.Setvl_servico(const Value: Boolean);   
begin                
  Fvl_servico := Value;   
end;                 

procedure TModelERPvendaservico.Setvl_desconto(const Value: Boolean);   
begin                
  Fvl_desconto := Value;   
end;                 

procedure TModelERPvendaservico.Setvl_total(const Value: Boolean);   
begin                
  Fvl_total := Value;   
end;                 

procedure TModelERPvendaservico.Setobservacao(const Value: Boolean);   
begin                
  Fobservacao := Value;   
end;                 

procedure TModelERPvendaservico.Setid_cfop(const Value: Boolean);   
begin                
  Fid_cfop := Value;   
end;                 

procedure TModelERPvendaservico.Setid_venda(const Value: Boolean);   
begin                
  Fid_venda := Value;   
end;                 

procedure TModelERPvendaservico.Setcancelada(const Value: Boolean);   
begin                
  Fcancelada := Value;   
end;                 

procedure TModelERPvendaservico.Setmodalidade(const Value: Boolean);   
begin                
  Fmodalidade := Value;   
end;                 

procedure TModelERPvendaservico.Setstatus(const Value: Boolean);   
begin                
  Fstatus := Value;   
end;                 


end.
