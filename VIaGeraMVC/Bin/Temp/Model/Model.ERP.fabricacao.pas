unit Model.ERP.etiquetadora;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPetiquetadora = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_produto : Integer;
    Fquantidade : Double;
    Fcomissao : Double;
    Fcancelada : WideString;
    Fgerada : WideString;
    Fdata : TDateTime;
    Flote : WideString;
    Fpreco_custo : Double;
    Fid_conta : WideString;
    Fnome_produto : WideString;
    Fclick : Boolean;
    Fcomissao_alterada : Double;
    Fid_dev : Integer;
    Fid_venda : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setquantidade(const Value: Double);
    procedure Setcomissao(const Value: Double);
    procedure Setcancelada(const Value: WideString);
    procedure Setgerada(const Value: WideString);
    procedure Setdata(const Value: TDateTime);
    procedure Setlote(const Value: WideString);
    procedure Setpreco_custo(const Value: Double);
    procedure Setid_conta(const Value: WideString);
    procedure Setnome_produto(const Value: WideString);
    procedure Setclick(const Value: Boolean);
    procedure Setcomissao_alterada(const Value: Double);
    procedure Setid_dev(const Value: Integer);
    procedure Setid_venda(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property comissao     : Double read Fcomissao write Setcomissao;
    property cancelada     : WideString read Fcancelada write Setcancelada;
    property gerada     : WideString read Fgerada write Setgerada;
    property data     : TDateTime read Fdata write Setdata;
    property lote     : WideString read Flote write Setlote;
    property preco_custo     : Double read Fpreco_custo write Setpreco_custo;
    property id_conta     : WideString read Fid_conta write Setid_conta;
    property nome_produto     : WideString read Fnome_produto write Setnome_produto;
    property click     : Boolean read Fclick write Setclick;
    property comissao_alterada     : Double read Fcomissao_alterada write Setcomissao_alterada;
    property id_dev     : Integer read Fid_dev write Setid_dev;
    property id_venda     : Integer read Fid_venda write Setid_venda;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPetiquetadora.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPetiquetadora) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPetiquetadora(Model).id;
Self.Fid_empresa         := TModelERPetiquetadora(Model).id_empresa;
Self.Fid_produto         := TModelERPetiquetadora(Model).id_produto;
Self.Fquantidade         := TModelERPetiquetadora(Model).quantidade;
Self.Fcomissao         := TModelERPetiquetadora(Model).comissao;
Self.Fcancelada         := TModelERPetiquetadora(Model).cancelada;
Self.Fgerada         := TModelERPetiquetadora(Model).gerada;
Self.Fdata         := TModelERPetiquetadora(Model).data;
Self.Flote         := TModelERPetiquetadora(Model).lote;
Self.Fpreco_custo         := TModelERPetiquetadora(Model).preco_custo;
Self.Fid_conta         := TModelERPetiquetadora(Model).id_conta;
Self.Fnome_produto         := TModelERPetiquetadora(Model).nome_produto;
Self.Fclick         := TModelERPetiquetadora(Model).click;
Self.Fcomissao_alterada         := TModelERPetiquetadora(Model).comissao_alterada;
Self.Fid_dev         := TModelERPetiquetadora(Model).id_dev;
Self.Fid_venda         := TModelERPetiquetadora(Model).id_venda;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPetiquetadora.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPetiquetadora.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPetiquetadora.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPetiquetadora.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPetiquetadora.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPetiquetadora.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPetiquetadora.Setcomissao(const Value: Boolean);   
begin                
  Fcomissao := Value;   
end;                 

procedure TModelERPetiquetadora.Setcancelada(const Value: Boolean);   
begin                
  Fcancelada := Value;   
end;                 

procedure TModelERPetiquetadora.Setgerada(const Value: Boolean);   
begin                
  Fgerada := Value;   
end;                 

procedure TModelERPetiquetadora.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPetiquetadora.Setlote(const Value: Boolean);   
begin                
  Flote := Value;   
end;                 

procedure TModelERPetiquetadora.Setpreco_custo(const Value: Boolean);   
begin                
  Fpreco_custo := Value;   
end;                 

procedure TModelERPetiquetadora.Setid_conta(const Value: Boolean);   
begin                
  Fid_conta := Value;   
end;                 

procedure TModelERPetiquetadora.Setnome_produto(const Value: Boolean);   
begin                
  Fnome_produto := Value;   
end;                 

procedure TModelERPetiquetadora.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPetiquetadora.Setcomissao_alterada(const Value: Boolean);   
begin                
  Fcomissao_alterada := Value;   
end;                 

procedure TModelERPetiquetadora.Setid_dev(const Value: Boolean);   
begin                
  Fid_dev := Value;   
end;                 

procedure TModelERPetiquetadora.Setid_venda(const Value: Boolean);   
begin                
  Fid_venda := Value;   
end;                 


end.
