unit Model.ERP.cesta;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcesta = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_fabricante : Integer;
    Fid_cesta : Integer;
    Fid_lote : Integer;
    Fquantidade : Double;
    Fcomissao : Double;
    Fcancelada : WideString;
    Fgerada : WideString;
    Fdata : TDateTime;
    Fvalidade : TDateTime;
    Fpreco_custo : Double;
    Fpreco_venda : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_fabricante(const Value: Integer);
    procedure Setid_cesta(const Value: Integer);
    procedure Setid_lote(const Value: Integer);
    procedure Setquantidade(const Value: Double);
    procedure Setcomissao(const Value: Double);
    procedure Setcancelada(const Value: WideString);
    procedure Setgerada(const Value: WideString);
    procedure Setdata(const Value: TDateTime);
    procedure Setvalidade(const Value: TDateTime);
    procedure Setpreco_custo(const Value: Double);
    procedure Setpreco_venda(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_fabricante     : Integer read Fid_fabricante write Setid_fabricante;
    property id_cesta     : Integer read Fid_cesta write Setid_cesta;
    property id_lote     : Integer read Fid_lote write Setid_lote;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property comissao     : Double read Fcomissao write Setcomissao;
    property cancelada     : WideString read Fcancelada write Setcancelada;
    property gerada     : WideString read Fgerada write Setgerada;
    property data     : TDateTime read Fdata write Setdata;
    property validade     : TDateTime read Fvalidade write Setvalidade;
    property preco_custo     : Double read Fpreco_custo write Setpreco_custo;
    property preco_venda     : Double read Fpreco_venda write Setpreco_venda;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcesta.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcesta) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcesta(Model).id;
Self.Fid_empresa         := TModelERPcesta(Model).id_empresa;
Self.Fid_fabricante         := TModelERPcesta(Model).id_fabricante;
Self.Fid_cesta         := TModelERPcesta(Model).id_cesta;
Self.Fid_lote         := TModelERPcesta(Model).id_lote;
Self.Fquantidade         := TModelERPcesta(Model).quantidade;
Self.Fcomissao         := TModelERPcesta(Model).comissao;
Self.Fcancelada         := TModelERPcesta(Model).cancelada;
Self.Fgerada         := TModelERPcesta(Model).gerada;
Self.Fdata         := TModelERPcesta(Model).data;
Self.Fvalidade         := TModelERPcesta(Model).validade;
Self.Fpreco_custo         := TModelERPcesta(Model).preco_custo;
Self.Fpreco_venda         := TModelERPcesta(Model).preco_venda;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcesta.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcesta.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcesta.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcesta.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPcesta.Setid_fabricante(const Value: Boolean);   
begin                
  Fid_fabricante := Value;   
end;                 

procedure TModelERPcesta.Setid_cesta(const Value: Boolean);   
begin                
  Fid_cesta := Value;   
end;                 

procedure TModelERPcesta.Setid_lote(const Value: Boolean);   
begin                
  Fid_lote := Value;   
end;                 

procedure TModelERPcesta.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPcesta.Setcomissao(const Value: Boolean);   
begin                
  Fcomissao := Value;   
end;                 

procedure TModelERPcesta.Setcancelada(const Value: Boolean);   
begin                
  Fcancelada := Value;   
end;                 

procedure TModelERPcesta.Setgerada(const Value: Boolean);   
begin                
  Fgerada := Value;   
end;                 

procedure TModelERPcesta.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPcesta.Setvalidade(const Value: Boolean);   
begin                
  Fvalidade := Value;   
end;                 

procedure TModelERPcesta.Setpreco_custo(const Value: Boolean);   
begin                
  Fpreco_custo := Value;   
end;                 

procedure TModelERPcesta.Setpreco_venda(const Value: Boolean);   
begin                
  Fpreco_venda := Value;   
end;                 


end.
