unit Model.ERP.lancamento_contabil;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPlancamentocontabil = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata : TDateTime;
    Foperacao : WideString;
    Fid_pedido : Integer;
    Fid_parcela : Integer;
    Fid_forma : Integer;
    Fid_vendedor : Integer;
    Fid_cliente : Integer;
    Fnome_cliente : WideString;
    Fvalor : Double;
    Fdebcre : WideString;
    Fobservacao : WideString;
    Fid_usuario : Integer;
    Fclick : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setoperacao(const Value: WideString);
    procedure Setid_pedido(const Value: Integer);
    procedure Setid_parcela(const Value: Integer);
    procedure Setid_forma(const Value: Integer);
    procedure Setid_vendedor(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setnome_cliente(const Value: WideString);
    procedure Setvalor(const Value: Double);
    procedure Setdebcre(const Value: WideString);
    procedure Setobservacao(const Value: WideString);
    procedure Setid_usuario(const Value: Integer);
    procedure Setclick(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property data     : TDateTime read Fdata write Setdata;
    property operacao     : WideString read Foperacao write Setoperacao;
    property id_pedido     : Integer read Fid_pedido write Setid_pedido;
    property id_parcela     : Integer read Fid_parcela write Setid_parcela;
    property id_forma     : Integer read Fid_forma write Setid_forma;
    property id_vendedor     : Integer read Fid_vendedor write Setid_vendedor;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property nome_cliente     : WideString read Fnome_cliente write Setnome_cliente;
    property valor     : Double read Fvalor write Setvalor;
    property debcre     : WideString read Fdebcre write Setdebcre;
    property observacao     : WideString read Fobservacao write Setobservacao;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property click     : Boolean read Fclick write Setclick;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPlancamentocontabil.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPlancamentocontabil) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPlancamentocontabil(Model).id;
Self.Fid_empresa         := TModelERPlancamentocontabil(Model).id_empresa;
Self.Fdata         := TModelERPlancamentocontabil(Model).data;
Self.Foperacao         := TModelERPlancamentocontabil(Model).operacao;
Self.Fid_pedido         := TModelERPlancamentocontabil(Model).id_pedido;
Self.Fid_parcela         := TModelERPlancamentocontabil(Model).id_parcela;
Self.Fid_forma         := TModelERPlancamentocontabil(Model).id_forma;
Self.Fid_vendedor         := TModelERPlancamentocontabil(Model).id_vendedor;
Self.Fid_cliente         := TModelERPlancamentocontabil(Model).id_cliente;
Self.Fnome_cliente         := TModelERPlancamentocontabil(Model).nome_cliente;
Self.Fvalor         := TModelERPlancamentocontabil(Model).valor;
Self.Fdebcre         := TModelERPlancamentocontabil(Model).debcre;
Self.Fobservacao         := TModelERPlancamentocontabil(Model).observacao;
Self.Fid_usuario         := TModelERPlancamentocontabil(Model).id_usuario;
Self.Fclick         := TModelERPlancamentocontabil(Model).click;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPlancamentocontabil.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPlancamentocontabil.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPlancamentocontabil.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPlancamentocontabil.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPlancamentocontabil.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPlancamentocontabil.Setoperacao(const Value: Boolean);   
begin                
  Foperacao := Value;   
end;                 

procedure TModelERPlancamentocontabil.Setid_pedido(const Value: Boolean);   
begin                
  Fid_pedido := Value;   
end;                 

procedure TModelERPlancamentocontabil.Setid_parcela(const Value: Boolean);   
begin                
  Fid_parcela := Value;   
end;                 

procedure TModelERPlancamentocontabil.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 

procedure TModelERPlancamentocontabil.Setid_vendedor(const Value: Boolean);   
begin                
  Fid_vendedor := Value;   
end;                 

procedure TModelERPlancamentocontabil.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPlancamentocontabil.Setnome_cliente(const Value: Boolean);   
begin                
  Fnome_cliente := Value;   
end;                 

procedure TModelERPlancamentocontabil.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 

procedure TModelERPlancamentocontabil.Setdebcre(const Value: Boolean);   
begin                
  Fdebcre := Value;   
end;                 

procedure TModelERPlancamentocontabil.Setobservacao(const Value: Boolean);   
begin                
  Fobservacao := Value;   
end;                 

procedure TModelERPlancamentocontabil.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPlancamentocontabil.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 


end.
