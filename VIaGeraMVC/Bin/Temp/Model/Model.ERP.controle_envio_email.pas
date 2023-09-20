unit Model.ERP.controle_entrega_item;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcontroleentregaitem = class(TModelBase)

private
    Fid : Integer;
    Fid_lote : Integer;
    Fid_fixa : Integer;
    Fid_cliente : Integer;
    Fid_conta_receber : Integer;
    Fnome_cliente : WideString;
    Fenviado : Boolean;
    Fdata_geracao : TDateTime;
    Fmensagem : indefinido;
    Fdata_envio : indefinido;
    Fclick : Boolean;
    Femail : WideString;
    Fendereco_cli : WideString;
    Fcpf_cnpj_cli : WideString;
    Forigen : WideString;
    Fnfe_chave : WideString;
    Fcupon_fiscal : WideString;
    Fdata_saida_venda : indefinido;
    Fvalor_total : Double;
    Fparcela : WideString;
    Fnfe : WideString;
    Fdescricao_email : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_lote(const Value: Integer);
    procedure Setid_fixa(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setid_conta_receber(const Value: Integer);
    procedure Setnome_cliente(const Value: WideString);
    procedure Setenviado(const Value: Boolean);
    procedure Setdata_geracao(const Value: TDateTime);
    procedure Setmensagem(const Value: indefinido);
    procedure Setdata_envio(const Value: indefinido);
    procedure Setclick(const Value: Boolean);
    procedure Setemail(const Value: WideString);
    procedure Setendereco_cli(const Value: WideString);
    procedure Setcpf_cnpj_cli(const Value: WideString);
    procedure Setorigen(const Value: WideString);
    procedure Setnfe_chave(const Value: WideString);
    procedure Setcupon_fiscal(const Value: WideString);
    procedure Setdata_saida_venda(const Value: indefinido);
    procedure Setvalor_total(const Value: Double);
    procedure Setparcela(const Value: WideString);
    procedure Setnfe(const Value: WideString);
    procedure Setdescricao_email(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_lote     : Integer read Fid_lote write Setid_lote;
    property id_fixa     : Integer read Fid_fixa write Setid_fixa;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property id_conta_receber     : Integer read Fid_conta_receber write Setid_conta_receber;
    property nome_cliente     : WideString read Fnome_cliente write Setnome_cliente;
    property enviado     : Boolean read Fenviado write Setenviado;
    property data_geracao     : TDateTime read Fdata_geracao write Setdata_geracao;
    property mensagem     : indefinido read Fmensagem write Setmensagem;
    property data_envio     : indefinido read Fdata_envio write Setdata_envio;
    property click     : Boolean read Fclick write Setclick;
    property email     : WideString read Femail write Setemail;
    property endereco_cli     : WideString read Fendereco_cli write Setendereco_cli;
    property cpf_cnpj_cli     : WideString read Fcpf_cnpj_cli write Setcpf_cnpj_cli;
    property origen     : WideString read Forigen write Setorigen;
    property nfe_chave     : WideString read Fnfe_chave write Setnfe_chave;
    property cupon_fiscal     : WideString read Fcupon_fiscal write Setcupon_fiscal;
    property data_saida_venda     : indefinido read Fdata_saida_venda write Setdata_saida_venda;
    property valor_total     : Double read Fvalor_total write Setvalor_total;
    property parcela     : WideString read Fparcela write Setparcela;
    property nfe     : WideString read Fnfe write Setnfe;
    property descricao_email     : indefinido read Fdescricao_email write Setdescricao_email;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcontroleentregaitem.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcontroleentregaitem) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcontroleentregaitem(Model).id;
Self.Fid_lote         := TModelERPcontroleentregaitem(Model).id_lote;
Self.Fid_fixa         := TModelERPcontroleentregaitem(Model).id_fixa;
Self.Fid_cliente         := TModelERPcontroleentregaitem(Model).id_cliente;
Self.Fid_conta_receber         := TModelERPcontroleentregaitem(Model).id_conta_receber;
Self.Fnome_cliente         := TModelERPcontroleentregaitem(Model).nome_cliente;
Self.Fenviado         := TModelERPcontroleentregaitem(Model).enviado;
Self.Fdata_geracao         := TModelERPcontroleentregaitem(Model).data_geracao;
Self.Fmensagem         := TModelERPcontroleentregaitem(Model).mensagem;
Self.Fdata_envio         := TModelERPcontroleentregaitem(Model).data_envio;
Self.Fclick         := TModelERPcontroleentregaitem(Model).click;
Self.Femail         := TModelERPcontroleentregaitem(Model).email;
Self.Fendereco_cli         := TModelERPcontroleentregaitem(Model).endereco_cli;
Self.Fcpf_cnpj_cli         := TModelERPcontroleentregaitem(Model).cpf_cnpj_cli;
Self.Forigen         := TModelERPcontroleentregaitem(Model).origen;
Self.Fnfe_chave         := TModelERPcontroleentregaitem(Model).nfe_chave;
Self.Fcupon_fiscal         := TModelERPcontroleentregaitem(Model).cupon_fiscal;
Self.Fdata_saida_venda         := TModelERPcontroleentregaitem(Model).data_saida_venda;
Self.Fvalor_total         := TModelERPcontroleentregaitem(Model).valor_total;
Self.Fparcela         := TModelERPcontroleentregaitem(Model).parcela;
Self.Fnfe         := TModelERPcontroleentregaitem(Model).nfe;
Self.Fdescricao_email         := TModelERPcontroleentregaitem(Model).descricao_email;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcontroleentregaitem.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcontroleentregaitem.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcontroleentregaitem.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcontroleentregaitem.Setid_lote(const Value: Boolean);   
begin                
  Fid_lote := Value;   
end;                 

procedure TModelERPcontroleentregaitem.Setid_fixa(const Value: Boolean);   
begin                
  Fid_fixa := Value;   
end;                 

procedure TModelERPcontroleentregaitem.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPcontroleentregaitem.Setid_conta_receber(const Value: Boolean);   
begin                
  Fid_conta_receber := Value;   
end;                 

procedure TModelERPcontroleentregaitem.Setnome_cliente(const Value: Boolean);   
begin                
  Fnome_cliente := Value;   
end;                 

procedure TModelERPcontroleentregaitem.Setenviado(const Value: Boolean);   
begin                
  Fenviado := Value;   
end;                 

procedure TModelERPcontroleentregaitem.Setdata_geracao(const Value: Boolean);   
begin                
  Fdata_geracao := Value;   
end;                 

procedure TModelERPcontroleentregaitem.Setmensagem(const Value: Boolean);   
begin                
  Fmensagem := Value;   
end;                 

procedure TModelERPcontroleentregaitem.Setdata_envio(const Value: Boolean);   
begin                
  Fdata_envio := Value;   
end;                 

procedure TModelERPcontroleentregaitem.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPcontroleentregaitem.Setemail(const Value: Boolean);   
begin                
  Femail := Value;   
end;                 

procedure TModelERPcontroleentregaitem.Setendereco_cli(const Value: Boolean);   
begin                
  Fendereco_cli := Value;   
end;                 

procedure TModelERPcontroleentregaitem.Setcpf_cnpj_cli(const Value: Boolean);   
begin                
  Fcpf_cnpj_cli := Value;   
end;                 

procedure TModelERPcontroleentregaitem.Setorigen(const Value: Boolean);   
begin                
  Forigen := Value;   
end;                 

procedure TModelERPcontroleentregaitem.Setnfe_chave(const Value: Boolean);   
begin                
  Fnfe_chave := Value;   
end;                 

procedure TModelERPcontroleentregaitem.Setcupon_fiscal(const Value: Boolean);   
begin                
  Fcupon_fiscal := Value;   
end;                 

procedure TModelERPcontroleentregaitem.Setdata_saida_venda(const Value: Boolean);   
begin                
  Fdata_saida_venda := Value;   
end;                 

procedure TModelERPcontroleentregaitem.Setvalor_total(const Value: Boolean);   
begin                
  Fvalor_total := Value;   
end;                 

procedure TModelERPcontroleentregaitem.Setparcela(const Value: Boolean);   
begin                
  Fparcela := Value;   
end;                 

procedure TModelERPcontroleentregaitem.Setnfe(const Value: Boolean);   
begin                
  Fnfe := Value;   
end;                 

procedure TModelERPcontroleentregaitem.Setdescricao_email(const Value: Boolean);   
begin                
  Fdescricao_email := Value;   
end;                 


end.
