unit Model.ERP.pdv_duplicata;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPpdvduplicata = class(TModelBase)

private
    Fid : Integer;
    Fid_venda : Integer;
    Fitem : Integer;
    Fdata : TDateTime;
    Fcupom : indefinido;
    Fid_caixa : Integer;
    Fid_produto : indefinido;
    Fnome_produto : WideString;
    Fid_grupo : Integer;
    Fid_fornecedor : Integer;
    Funidade : indefinido;
    Fquantidade : Double;
    Fvl_unitario : Double;
    Fvl_desconto : Double;
    Fvl_total : Double;
    Fst : indefinido;
    Ficms : Double;
    Fvl_icms : Double;
    Fcancelada : indefinido;
    Ftransmitida : indefinido;
    Fid_pdvcaixa : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_venda(const Value: Integer);
    procedure Setitem(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setcupom(const Value: indefinido);
    procedure Setid_caixa(const Value: Integer);
    procedure Setid_produto(const Value: indefinido);
    procedure Setnome_produto(const Value: WideString);
    procedure Setid_grupo(const Value: Integer);
    procedure Setid_fornecedor(const Value: Integer);
    procedure Setunidade(const Value: indefinido);
    procedure Setquantidade(const Value: Double);
    procedure Setvl_unitario(const Value: Double);
    procedure Setvl_desconto(const Value: Double);
    procedure Setvl_total(const Value: Double);
    procedure Setst(const Value: indefinido);
    procedure Seticms(const Value: Double);
    procedure Setvl_icms(const Value: Double);
    procedure Setcancelada(const Value: indefinido);
    procedure Settransmitida(const Value: indefinido);
    procedure Setid_pdvcaixa(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_venda     : Integer read Fid_venda write Setid_venda;
    property item     : Integer read Fitem write Setitem;
    property data     : TDateTime read Fdata write Setdata;
    property cupom     : indefinido read Fcupom write Setcupom;
    property id_caixa     : Integer read Fid_caixa write Setid_caixa;
    property id_produto     : indefinido read Fid_produto write Setid_produto;
    property nome_produto     : WideString read Fnome_produto write Setnome_produto;
    property id_grupo     : Integer read Fid_grupo write Setid_grupo;
    property id_fornecedor     : Integer read Fid_fornecedor write Setid_fornecedor;
    property unidade     : indefinido read Funidade write Setunidade;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property vl_unitario     : Double read Fvl_unitario write Setvl_unitario;
    property vl_desconto     : Double read Fvl_desconto write Setvl_desconto;
    property vl_total     : Double read Fvl_total write Setvl_total;
    property st     : indefinido read Fst write Setst;
    property icms     : Double read Ficms write Seticms;
    property vl_icms     : Double read Fvl_icms write Setvl_icms;
    property cancelada     : indefinido read Fcancelada write Setcancelada;
    property transmitida     : indefinido read Ftransmitida write Settransmitida;
    property id_pdvcaixa     : Integer read Fid_pdvcaixa write Setid_pdvcaixa;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPpdvduplicata.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPpdvduplicata) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPpdvduplicata(Model).id;
Self.Fid_venda         := TModelERPpdvduplicata(Model).id_venda;
Self.Fitem         := TModelERPpdvduplicata(Model).item;
Self.Fdata         := TModelERPpdvduplicata(Model).data;
Self.Fcupom         := TModelERPpdvduplicata(Model).cupom;
Self.Fid_caixa         := TModelERPpdvduplicata(Model).id_caixa;
Self.Fid_produto         := TModelERPpdvduplicata(Model).id_produto;
Self.Fnome_produto         := TModelERPpdvduplicata(Model).nome_produto;
Self.Fid_grupo         := TModelERPpdvduplicata(Model).id_grupo;
Self.Fid_fornecedor         := TModelERPpdvduplicata(Model).id_fornecedor;
Self.Funidade         := TModelERPpdvduplicata(Model).unidade;
Self.Fquantidade         := TModelERPpdvduplicata(Model).quantidade;
Self.Fvl_unitario         := TModelERPpdvduplicata(Model).vl_unitario;
Self.Fvl_desconto         := TModelERPpdvduplicata(Model).vl_desconto;
Self.Fvl_total         := TModelERPpdvduplicata(Model).vl_total;
Self.Fst         := TModelERPpdvduplicata(Model).st;
Self.Ficms         := TModelERPpdvduplicata(Model).icms;
Self.Fvl_icms         := TModelERPpdvduplicata(Model).vl_icms;
Self.Fcancelada         := TModelERPpdvduplicata(Model).cancelada;
Self.Ftransmitida         := TModelERPpdvduplicata(Model).transmitida;
Self.Fid_pdvcaixa         := TModelERPpdvduplicata(Model).id_pdvcaixa;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPpdvduplicata.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPpdvduplicata.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPpdvduplicata.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPpdvduplicata.Setid_venda(const Value: Boolean);   
begin                
  Fid_venda := Value;   
end;                 

procedure TModelERPpdvduplicata.Setitem(const Value: Boolean);   
begin                
  Fitem := Value;   
end;                 

procedure TModelERPpdvduplicata.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPpdvduplicata.Setcupom(const Value: Boolean);   
begin                
  Fcupom := Value;   
end;                 

procedure TModelERPpdvduplicata.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPpdvduplicata.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPpdvduplicata.Setnome_produto(const Value: Boolean);   
begin                
  Fnome_produto := Value;   
end;                 

procedure TModelERPpdvduplicata.Setid_grupo(const Value: Boolean);   
begin                
  Fid_grupo := Value;   
end;                 

procedure TModelERPpdvduplicata.Setid_fornecedor(const Value: Boolean);   
begin                
  Fid_fornecedor := Value;   
end;                 

procedure TModelERPpdvduplicata.Setunidade(const Value: Boolean);   
begin                
  Funidade := Value;   
end;                 

procedure TModelERPpdvduplicata.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPpdvduplicata.Setvl_unitario(const Value: Boolean);   
begin                
  Fvl_unitario := Value;   
end;                 

procedure TModelERPpdvduplicata.Setvl_desconto(const Value: Boolean);   
begin                
  Fvl_desconto := Value;   
end;                 

procedure TModelERPpdvduplicata.Setvl_total(const Value: Boolean);   
begin                
  Fvl_total := Value;   
end;                 

procedure TModelERPpdvduplicata.Setst(const Value: Boolean);   
begin                
  Fst := Value;   
end;                 

procedure TModelERPpdvduplicata.Seticms(const Value: Boolean);   
begin                
  Ficms := Value;   
end;                 

procedure TModelERPpdvduplicata.Setvl_icms(const Value: Boolean);   
begin                
  Fvl_icms := Value;   
end;                 

procedure TModelERPpdvduplicata.Setcancelada(const Value: Boolean);   
begin                
  Fcancelada := Value;   
end;                 

procedure TModelERPpdvduplicata.Settransmitida(const Value: Boolean);   
begin                
  Ftransmitida := Value;   
end;                 

procedure TModelERPpdvduplicata.Setid_pdvcaixa(const Value: Boolean);   
begin                
  Fid_pdvcaixa := Value;   
end;                 


end.
