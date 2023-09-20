unit Model.ERP.telefone_parceiro;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPtelefoneparceiro = class(TModelBase)

private
    Fid : Integer;
    Fnome : indefinido;
    Fcodigo_fabricante : indefinido;
    Funidade : indefinido;
    Fpreco_venda : Double;
    Fpreco_venda2 : Double;
    Ftam : indefinido;
    Fcor : indefinido;
    Fid_grade : Integer;
    Freferencia : indefinido;
    Fpreco_atacado : Double;
    Fnf : Integer;
    Fdatanf : TDateTime;
    Fvalor_parcelas : Double;
    Fquantidade_parcela : Integer;
    Fvalor_embalagem : Double;
    Fquantidade_itens_embalagem : Double;
    Fpreco_promocao : Double;
    Fdata_compra : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setnome(const Value: indefinido);
    procedure Setcodigo_fabricante(const Value: indefinido);
    procedure Setunidade(const Value: indefinido);
    procedure Setpreco_venda(const Value: Double);
    procedure Setpreco_venda2(const Value: Double);
    procedure Settam(const Value: indefinido);
    procedure Setcor(const Value: indefinido);
    procedure Setid_grade(const Value: Integer);
    procedure Setreferencia(const Value: indefinido);
    procedure Setpreco_atacado(const Value: Double);
    procedure Setnf(const Value: Integer);
    procedure Setdatanf(const Value: TDateTime);
    procedure Setvalor_parcelas(const Value: Double);
    procedure Setquantidade_parcela(const Value: Integer);
    procedure Setvalor_embalagem(const Value: Double);
    procedure Setquantidade_itens_embalagem(const Value: Double);
    procedure Setpreco_promocao(const Value: Double);
    procedure Setdata_compra(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property nome     : indefinido read Fnome write Setnome;
    property codigo_fabricante     : indefinido read Fcodigo_fabricante write Setcodigo_fabricante;
    property unidade     : indefinido read Funidade write Setunidade;
    property preco_venda     : Double read Fpreco_venda write Setpreco_venda;
    property preco_venda2     : Double read Fpreco_venda2 write Setpreco_venda2;
    property tam     : indefinido read Ftam write Settam;
    property cor     : indefinido read Fcor write Setcor;
    property id_grade     : Integer read Fid_grade write Setid_grade;
    property referencia     : indefinido read Freferencia write Setreferencia;
    property preco_atacado     : Double read Fpreco_atacado write Setpreco_atacado;
    property nf     : Integer read Fnf write Setnf;
    property datanf     : TDateTime read Fdatanf write Setdatanf;
    property valor_parcelas     : Double read Fvalor_parcelas write Setvalor_parcelas;
    property quantidade_parcela     : Integer read Fquantidade_parcela write Setquantidade_parcela;
    property valor_embalagem     : Double read Fvalor_embalagem write Setvalor_embalagem;
    property quantidade_itens_embalagem     : Double read Fquantidade_itens_embalagem write Setquantidade_itens_embalagem;
    property preco_promocao     : Double read Fpreco_promocao write Setpreco_promocao;
    property data_compra     : indefinido read Fdata_compra write Setdata_compra;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPtelefoneparceiro.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPtelefoneparceiro) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPtelefoneparceiro(Model).id;
Self.Fnome         := TModelERPtelefoneparceiro(Model).nome;
Self.Fcodigo_fabricante         := TModelERPtelefoneparceiro(Model).codigo_fabricante;
Self.Funidade         := TModelERPtelefoneparceiro(Model).unidade;
Self.Fpreco_venda         := TModelERPtelefoneparceiro(Model).preco_venda;
Self.Fpreco_venda2         := TModelERPtelefoneparceiro(Model).preco_venda2;
Self.Ftam         := TModelERPtelefoneparceiro(Model).tam;
Self.Fcor         := TModelERPtelefoneparceiro(Model).cor;
Self.Fid_grade         := TModelERPtelefoneparceiro(Model).id_grade;
Self.Freferencia         := TModelERPtelefoneparceiro(Model).referencia;
Self.Fpreco_atacado         := TModelERPtelefoneparceiro(Model).preco_atacado;
Self.Fnf         := TModelERPtelefoneparceiro(Model).nf;
Self.Fdatanf         := TModelERPtelefoneparceiro(Model).datanf;
Self.Fvalor_parcelas         := TModelERPtelefoneparceiro(Model).valor_parcelas;
Self.Fquantidade_parcela         := TModelERPtelefoneparceiro(Model).quantidade_parcela;
Self.Fvalor_embalagem         := TModelERPtelefoneparceiro(Model).valor_embalagem;
Self.Fquantidade_itens_embalagem         := TModelERPtelefoneparceiro(Model).quantidade_itens_embalagem;
Self.Fpreco_promocao         := TModelERPtelefoneparceiro(Model).preco_promocao;
Self.Fdata_compra         := TModelERPtelefoneparceiro(Model).data_compra;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPtelefoneparceiro.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPtelefoneparceiro.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPtelefoneparceiro.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPtelefoneparceiro.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPtelefoneparceiro.Setcodigo_fabricante(const Value: Boolean);   
begin                
  Fcodigo_fabricante := Value;   
end;                 

procedure TModelERPtelefoneparceiro.Setunidade(const Value: Boolean);   
begin                
  Funidade := Value;   
end;                 

procedure TModelERPtelefoneparceiro.Setpreco_venda(const Value: Boolean);   
begin                
  Fpreco_venda := Value;   
end;                 

procedure TModelERPtelefoneparceiro.Setpreco_venda2(const Value: Boolean);   
begin                
  Fpreco_venda2 := Value;   
end;                 

procedure TModelERPtelefoneparceiro.Settam(const Value: Boolean);   
begin                
  Ftam := Value;   
end;                 

procedure TModelERPtelefoneparceiro.Setcor(const Value: Boolean);   
begin                
  Fcor := Value;   
end;                 

procedure TModelERPtelefoneparceiro.Setid_grade(const Value: Boolean);   
begin                
  Fid_grade := Value;   
end;                 

procedure TModelERPtelefoneparceiro.Setreferencia(const Value: Boolean);   
begin                
  Freferencia := Value;   
end;                 

procedure TModelERPtelefoneparceiro.Setpreco_atacado(const Value: Boolean);   
begin                
  Fpreco_atacado := Value;   
end;                 

procedure TModelERPtelefoneparceiro.Setnf(const Value: Boolean);   
begin                
  Fnf := Value;   
end;                 

procedure TModelERPtelefoneparceiro.Setdatanf(const Value: Boolean);   
begin                
  Fdatanf := Value;   
end;                 

procedure TModelERPtelefoneparceiro.Setvalor_parcelas(const Value: Boolean);   
begin                
  Fvalor_parcelas := Value;   
end;                 

procedure TModelERPtelefoneparceiro.Setquantidade_parcela(const Value: Boolean);   
begin                
  Fquantidade_parcela := Value;   
end;                 

procedure TModelERPtelefoneparceiro.Setvalor_embalagem(const Value: Boolean);   
begin                
  Fvalor_embalagem := Value;   
end;                 

procedure TModelERPtelefoneparceiro.Setquantidade_itens_embalagem(const Value: Boolean);   
begin                
  Fquantidade_itens_embalagem := Value;   
end;                 

procedure TModelERPtelefoneparceiro.Setpreco_promocao(const Value: Boolean);   
begin                
  Fpreco_promocao := Value;   
end;                 

procedure TModelERPtelefoneparceiro.Setdata_compra(const Value: Boolean);   
begin                
  Fdata_compra := Value;   
end;                 


end.
