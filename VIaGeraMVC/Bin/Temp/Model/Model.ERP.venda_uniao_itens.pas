unit Model.ERP.venda_uniao;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPvendauniao = class(TModelBase)

private
    Fid : Integer;
    Fid_venda_uniao : Integer;
    Fid_venda : Integer;
    Fnome_cliente : indefinido;
    Fvl_desconto : Double;
    Fvl_produto : Double;
    Fvl_servico : Double;
    Fvl_total : Double;
    Fchave_nfce : WideString;
    Fcancelado : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_venda_uniao(const Value: Integer);
    procedure Setid_venda(const Value: Integer);
    procedure Setnome_cliente(const Value: indefinido);
    procedure Setvl_desconto(const Value: Double);
    procedure Setvl_produto(const Value: Double);
    procedure Setvl_servico(const Value: Double);
    procedure Setvl_total(const Value: Double);
    procedure Setchave_nfce(const Value: WideString);
    procedure Setcancelado(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_venda_uniao     : Integer read Fid_venda_uniao write Setid_venda_uniao;
    property id_venda     : Integer read Fid_venda write Setid_venda;
    property nome_cliente     : indefinido read Fnome_cliente write Setnome_cliente;
    property vl_desconto     : Double read Fvl_desconto write Setvl_desconto;
    property vl_produto     : Double read Fvl_produto write Setvl_produto;
    property vl_servico     : Double read Fvl_servico write Setvl_servico;
    property vl_total     : Double read Fvl_total write Setvl_total;
    property chave_nfce     : WideString read Fchave_nfce write Setchave_nfce;
    property cancelado     : Boolean read Fcancelado write Setcancelado;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPvendauniao.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPvendauniao) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPvendauniao(Model).id;
Self.Fid_venda_uniao         := TModelERPvendauniao(Model).id_venda_uniao;
Self.Fid_venda         := TModelERPvendauniao(Model).id_venda;
Self.Fnome_cliente         := TModelERPvendauniao(Model).nome_cliente;
Self.Fvl_desconto         := TModelERPvendauniao(Model).vl_desconto;
Self.Fvl_produto         := TModelERPvendauniao(Model).vl_produto;
Self.Fvl_servico         := TModelERPvendauniao(Model).vl_servico;
Self.Fvl_total         := TModelERPvendauniao(Model).vl_total;
Self.Fchave_nfce         := TModelERPvendauniao(Model).chave_nfce;
Self.Fcancelado         := TModelERPvendauniao(Model).cancelado;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPvendauniao.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPvendauniao.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPvendauniao.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPvendauniao.Setid_venda_uniao(const Value: Boolean);   
begin                
  Fid_venda_uniao := Value;   
end;                 

procedure TModelERPvendauniao.Setid_venda(const Value: Boolean);   
begin                
  Fid_venda := Value;   
end;                 

procedure TModelERPvendauniao.Setnome_cliente(const Value: Boolean);   
begin                
  Fnome_cliente := Value;   
end;                 

procedure TModelERPvendauniao.Setvl_desconto(const Value: Boolean);   
begin                
  Fvl_desconto := Value;   
end;                 

procedure TModelERPvendauniao.Setvl_produto(const Value: Boolean);   
begin                
  Fvl_produto := Value;   
end;                 

procedure TModelERPvendauniao.Setvl_servico(const Value: Boolean);   
begin                
  Fvl_servico := Value;   
end;                 

procedure TModelERPvendauniao.Setvl_total(const Value: Boolean);   
begin                
  Fvl_total := Value;   
end;                 

procedure TModelERPvendauniao.Setchave_nfce(const Value: Boolean);   
begin                
  Fchave_nfce := Value;   
end;                 

procedure TModelERPvendauniao.Setcancelado(const Value: Boolean);   
begin                
  Fcancelado := Value;   
end;                 


end.
