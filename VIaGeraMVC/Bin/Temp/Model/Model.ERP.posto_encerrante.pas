unit Model.ERP.posto_caixa;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPpostocaixa = class(TModelBase)

private
    Fid : Integer;
    Fdata : TDateTime;
    Fid_produto : Integer;
    Fnome : indefinido;
    Festoque_abertura : Double;
    Ffechamento_fisico : Double;
    Fnota : WideString;
    Fvolume_recebido : Double;
    Fobs_revendedor : indefinido;
    Fobservacao : indefinido;
    Fpreco_venda : Double;
    Fpreco_compra : Double;
    Fid_compra : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setid_produto(const Value: Integer);
    procedure Setnome(const Value: indefinido);
    procedure Setestoque_abertura(const Value: Double);
    procedure Setfechamento_fisico(const Value: Double);
    procedure Setnota(const Value: WideString);
    procedure Setvolume_recebido(const Value: Double);
    procedure Setobs_revendedor(const Value: indefinido);
    procedure Setobservacao(const Value: indefinido);
    procedure Setpreco_venda(const Value: Double);
    procedure Setpreco_compra(const Value: Double);
    procedure Setid_compra(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property data     : TDateTime read Fdata write Setdata;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property nome     : indefinido read Fnome write Setnome;
    property estoque_abertura     : Double read Festoque_abertura write Setestoque_abertura;
    property fechamento_fisico     : Double read Ffechamento_fisico write Setfechamento_fisico;
    property nota     : WideString read Fnota write Setnota;
    property volume_recebido     : Double read Fvolume_recebido write Setvolume_recebido;
    property obs_revendedor     : indefinido read Fobs_revendedor write Setobs_revendedor;
    property observacao     : indefinido read Fobservacao write Setobservacao;
    property preco_venda     : Double read Fpreco_venda write Setpreco_venda;
    property preco_compra     : Double read Fpreco_compra write Setpreco_compra;
    property id_compra     : indefinido read Fid_compra write Setid_compra;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPpostocaixa.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPpostocaixa) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPpostocaixa(Model).id;
Self.Fdata         := TModelERPpostocaixa(Model).data;
Self.Fid_produto         := TModelERPpostocaixa(Model).id_produto;
Self.Fnome         := TModelERPpostocaixa(Model).nome;
Self.Festoque_abertura         := TModelERPpostocaixa(Model).estoque_abertura;
Self.Ffechamento_fisico         := TModelERPpostocaixa(Model).fechamento_fisico;
Self.Fnota         := TModelERPpostocaixa(Model).nota;
Self.Fvolume_recebido         := TModelERPpostocaixa(Model).volume_recebido;
Self.Fobs_revendedor         := TModelERPpostocaixa(Model).obs_revendedor;
Self.Fobservacao         := TModelERPpostocaixa(Model).observacao;
Self.Fpreco_venda         := TModelERPpostocaixa(Model).preco_venda;
Self.Fpreco_compra         := TModelERPpostocaixa(Model).preco_compra;
Self.Fid_compra         := TModelERPpostocaixa(Model).id_compra;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPpostocaixa.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPpostocaixa.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPpostocaixa.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPpostocaixa.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPpostocaixa.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPpostocaixa.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPpostocaixa.Setestoque_abertura(const Value: Boolean);   
begin                
  Festoque_abertura := Value;   
end;                 

procedure TModelERPpostocaixa.Setfechamento_fisico(const Value: Boolean);   
begin                
  Ffechamento_fisico := Value;   
end;                 

procedure TModelERPpostocaixa.Setnota(const Value: Boolean);   
begin                
  Fnota := Value;   
end;                 

procedure TModelERPpostocaixa.Setvolume_recebido(const Value: Boolean);   
begin                
  Fvolume_recebido := Value;   
end;                 

procedure TModelERPpostocaixa.Setobs_revendedor(const Value: Boolean);   
begin                
  Fobs_revendedor := Value;   
end;                 

procedure TModelERPpostocaixa.Setobservacao(const Value: Boolean);   
begin                
  Fobservacao := Value;   
end;                 

procedure TModelERPpostocaixa.Setpreco_venda(const Value: Boolean);   
begin                
  Fpreco_venda := Value;   
end;                 

procedure TModelERPpostocaixa.Setpreco_compra(const Value: Boolean);   
begin                
  Fpreco_compra := Value;   
end;                 

procedure TModelERPpostocaixa.Setid_compra(const Value: Boolean);   
begin                
  Fid_compra := Value;   
end;                 


end.
