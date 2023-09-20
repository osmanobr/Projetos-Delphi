unit Model.ERP.pedido_carregamento;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPpedidocarregamento = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata_pedido : TDateTime;
    Fid_fornecedor : Integer;
    Fnome_fornecedor : indefinido;
    Ftotal : Double;
    Fclick : Boolean;
    Fprevisao : TDateTime;
    Fbase_icms : Double;
    Fvalor_icms : Double;
    Fvalor_st : Double;
    Fvalor_ipi : Double;
    Fsituacao : indefinido;
    Ftotal_nota : Double;
    Fbase_st : Double;
    Fnome_representante : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setdata_pedido(const Value: TDateTime);
    procedure Setid_fornecedor(const Value: Integer);
    procedure Setnome_fornecedor(const Value: indefinido);
    procedure Settotal(const Value: Double);
    procedure Setclick(const Value: Boolean);
    procedure Setprevisao(const Value: TDateTime);
    procedure Setbase_icms(const Value: Double);
    procedure Setvalor_icms(const Value: Double);
    procedure Setvalor_st(const Value: Double);
    procedure Setvalor_ipi(const Value: Double);
    procedure Setsituacao(const Value: indefinido);
    procedure Settotal_nota(const Value: Double);
    procedure Setbase_st(const Value: Double);
    procedure Setnome_representante(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property data_pedido     : TDateTime read Fdata_pedido write Setdata_pedido;
    property id_fornecedor     : Integer read Fid_fornecedor write Setid_fornecedor;
    property nome_fornecedor     : indefinido read Fnome_fornecedor write Setnome_fornecedor;
    property total     : Double read Ftotal write Settotal;
    property click     : Boolean read Fclick write Setclick;
    property previsao     : TDateTime read Fprevisao write Setprevisao;
    property base_icms     : Double read Fbase_icms write Setbase_icms;
    property valor_icms     : Double read Fvalor_icms write Setvalor_icms;
    property valor_st     : Double read Fvalor_st write Setvalor_st;
    property valor_ipi     : Double read Fvalor_ipi write Setvalor_ipi;
    property situacao     : indefinido read Fsituacao write Setsituacao;
    property total_nota     : Double read Ftotal_nota write Settotal_nota;
    property base_st     : Double read Fbase_st write Setbase_st;
    property nome_representante     : WideString read Fnome_representante write Setnome_representante;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPpedidocarregamento.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPpedidocarregamento) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPpedidocarregamento(Model).id;
Self.Fid_empresa         := TModelERPpedidocarregamento(Model).id_empresa;
Self.Fdata_pedido         := TModelERPpedidocarregamento(Model).data_pedido;
Self.Fid_fornecedor         := TModelERPpedidocarregamento(Model).id_fornecedor;
Self.Fnome_fornecedor         := TModelERPpedidocarregamento(Model).nome_fornecedor;
Self.Ftotal         := TModelERPpedidocarregamento(Model).total;
Self.Fclick         := TModelERPpedidocarregamento(Model).click;
Self.Fprevisao         := TModelERPpedidocarregamento(Model).previsao;
Self.Fbase_icms         := TModelERPpedidocarregamento(Model).base_icms;
Self.Fvalor_icms         := TModelERPpedidocarregamento(Model).valor_icms;
Self.Fvalor_st         := TModelERPpedidocarregamento(Model).valor_st;
Self.Fvalor_ipi         := TModelERPpedidocarregamento(Model).valor_ipi;
Self.Fsituacao         := TModelERPpedidocarregamento(Model).situacao;
Self.Ftotal_nota         := TModelERPpedidocarregamento(Model).total_nota;
Self.Fbase_st         := TModelERPpedidocarregamento(Model).base_st;
Self.Fnome_representante         := TModelERPpedidocarregamento(Model).nome_representante;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPpedidocarregamento.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPpedidocarregamento.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPpedidocarregamento.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPpedidocarregamento.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPpedidocarregamento.Setdata_pedido(const Value: Boolean);   
begin                
  Fdata_pedido := Value;   
end;                 

procedure TModelERPpedidocarregamento.Setid_fornecedor(const Value: Boolean);   
begin                
  Fid_fornecedor := Value;   
end;                 

procedure TModelERPpedidocarregamento.Setnome_fornecedor(const Value: Boolean);   
begin                
  Fnome_fornecedor := Value;   
end;                 

procedure TModelERPpedidocarregamento.Settotal(const Value: Boolean);   
begin                
  Ftotal := Value;   
end;                 

procedure TModelERPpedidocarregamento.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPpedidocarregamento.Setprevisao(const Value: Boolean);   
begin                
  Fprevisao := Value;   
end;                 

procedure TModelERPpedidocarregamento.Setbase_icms(const Value: Boolean);   
begin                
  Fbase_icms := Value;   
end;                 

procedure TModelERPpedidocarregamento.Setvalor_icms(const Value: Boolean);   
begin                
  Fvalor_icms := Value;   
end;                 

procedure TModelERPpedidocarregamento.Setvalor_st(const Value: Boolean);   
begin                
  Fvalor_st := Value;   
end;                 

procedure TModelERPpedidocarregamento.Setvalor_ipi(const Value: Boolean);   
begin                
  Fvalor_ipi := Value;   
end;                 

procedure TModelERPpedidocarregamento.Setsituacao(const Value: Boolean);   
begin                
  Fsituacao := Value;   
end;                 

procedure TModelERPpedidocarregamento.Settotal_nota(const Value: Boolean);   
begin                
  Ftotal_nota := Value;   
end;                 

procedure TModelERPpedidocarregamento.Setbase_st(const Value: Boolean);   
begin                
  Fbase_st := Value;   
end;                 

procedure TModelERPpedidocarregamento.Setnome_representante(const Value: Boolean);   
begin                
  Fnome_representante := Value;   
end;                 


end.
