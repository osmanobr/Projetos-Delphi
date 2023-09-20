unit Model.ERP.venda_item_lote_controle;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPvendaitemlotecontrole = class(TModelBase)

private
    Fid : Integer;
    Fid_venda_item : Integer;
    Fid_produto : Integer;
    Fnro_serie : indefinido;
    Fnumero_telefone : indefinido;
    Fdata_ativacao : TDateTime;
    Fcancelado : indefinido;
    Fid_venda : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_venda_item(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setnro_serie(const Value: indefinido);
    procedure Setnumero_telefone(const Value: indefinido);
    procedure Setdata_ativacao(const Value: TDateTime);
    procedure Setcancelado(const Value: indefinido);
    procedure Setid_venda(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_venda_item     : Integer read Fid_venda_item write Setid_venda_item;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property nro_serie     : indefinido read Fnro_serie write Setnro_serie;
    property numero_telefone     : indefinido read Fnumero_telefone write Setnumero_telefone;
    property data_ativacao     : TDateTime read Fdata_ativacao write Setdata_ativacao;
    property cancelado     : indefinido read Fcancelado write Setcancelado;
    property id_venda     : Integer read Fid_venda write Setid_venda;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPvendaitemlotecontrole.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPvendaitemlotecontrole) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPvendaitemlotecontrole(Model).id;
Self.Fid_venda_item         := TModelERPvendaitemlotecontrole(Model).id_venda_item;
Self.Fid_produto         := TModelERPvendaitemlotecontrole(Model).id_produto;
Self.Fnro_serie         := TModelERPvendaitemlotecontrole(Model).nro_serie;
Self.Fnumero_telefone         := TModelERPvendaitemlotecontrole(Model).numero_telefone;
Self.Fdata_ativacao         := TModelERPvendaitemlotecontrole(Model).data_ativacao;
Self.Fcancelado         := TModelERPvendaitemlotecontrole(Model).cancelado;
Self.Fid_venda         := TModelERPvendaitemlotecontrole(Model).id_venda;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPvendaitemlotecontrole.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPvendaitemlotecontrole.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPvendaitemlotecontrole.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPvendaitemlotecontrole.Setid_venda_item(const Value: Boolean);   
begin                
  Fid_venda_item := Value;   
end;                 

procedure TModelERPvendaitemlotecontrole.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPvendaitemlotecontrole.Setnro_serie(const Value: Boolean);   
begin                
  Fnro_serie := Value;   
end;                 

procedure TModelERPvendaitemlotecontrole.Setnumero_telefone(const Value: Boolean);   
begin                
  Fnumero_telefone := Value;   
end;                 

procedure TModelERPvendaitemlotecontrole.Setdata_ativacao(const Value: Boolean);   
begin                
  Fdata_ativacao := Value;   
end;                 

procedure TModelERPvendaitemlotecontrole.Setcancelado(const Value: Boolean);   
begin                
  Fcancelado := Value;   
end;                 

procedure TModelERPvendaitemlotecontrole.Setid_venda(const Value: Boolean);   
begin                
  Fid_venda := Value;   
end;                 


end.
