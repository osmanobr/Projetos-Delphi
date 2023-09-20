unit Model.ERP.locacao_duplicata;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPlocacaoduplicata = class(TModelBase)

private
    Fid : Integer;
    Fid_locacao : Integer;
    Fid_equipamento : Integer;
    Fpatrimonio : WideString;
    Fnome_equipamento : WideString;
    Ftipo : WideString;
    Fquantidade : Double;
    Fvalor_unitario : Double;
    Fvalor_garantia_total : Double;
    Fvalor_total : Double;
    Fobs : indefinido;
    Fclick : Boolean;
    Fquantidade_aditivo : Double;
    Fvalor_aditivo : Double;
    Fvalor_total_aditivo : Double;
    Funidade : WideString;
    Fativo : WideString;
    Fdata_troca : TDateTime;
    Fdevolvido : WideString;
    Faditivo : WideString;
    Fdata_devolucao : TDateTime;
    Fdevolucao_itens : TDateTime;
    Fquantidade_devolucao : Double;
    Fdevolucao_parcial : WideString;
    Fvalor_garantia_unitario : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_locacao(const Value: Integer);
    procedure Setid_equipamento(const Value: Integer);
    procedure Setpatrimonio(const Value: WideString);
    procedure Setnome_equipamento(const Value: WideString);
    procedure Settipo(const Value: WideString);
    procedure Setquantidade(const Value: Double);
    procedure Setvalor_unitario(const Value: Double);
    procedure Setvalor_garantia_total(const Value: Double);
    procedure Setvalor_total(const Value: Double);
    procedure Setobs(const Value: indefinido);
    procedure Setclick(const Value: Boolean);
    procedure Setquantidade_aditivo(const Value: Double);
    procedure Setvalor_aditivo(const Value: Double);
    procedure Setvalor_total_aditivo(const Value: Double);
    procedure Setunidade(const Value: WideString);
    procedure Setativo(const Value: WideString);
    procedure Setdata_troca(const Value: TDateTime);
    procedure Setdevolvido(const Value: WideString);
    procedure Setaditivo(const Value: WideString);
    procedure Setdata_devolucao(const Value: TDateTime);
    procedure Setdevolucao_itens(const Value: TDateTime);
    procedure Setquantidade_devolucao(const Value: Double);
    procedure Setdevolucao_parcial(const Value: WideString);
    procedure Setvalor_garantia_unitario(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_locacao     : Integer read Fid_locacao write Setid_locacao;
    property id_equipamento     : Integer read Fid_equipamento write Setid_equipamento;
    property patrimonio     : WideString read Fpatrimonio write Setpatrimonio;
    property nome_equipamento     : WideString read Fnome_equipamento write Setnome_equipamento;
    property tipo     : WideString read Ftipo write Settipo;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property valor_unitario     : Double read Fvalor_unitario write Setvalor_unitario;
    property valor_garantia_total     : Double read Fvalor_garantia_total write Setvalor_garantia_total;
    property valor_total     : Double read Fvalor_total write Setvalor_total;
    property obs     : indefinido read Fobs write Setobs;
    property click     : Boolean read Fclick write Setclick;
    property quantidade_aditivo     : Double read Fquantidade_aditivo write Setquantidade_aditivo;
    property valor_aditivo     : Double read Fvalor_aditivo write Setvalor_aditivo;
    property valor_total_aditivo     : Double read Fvalor_total_aditivo write Setvalor_total_aditivo;
    property unidade     : WideString read Funidade write Setunidade;
    property ativo     : WideString read Fativo write Setativo;
    property data_troca     : TDateTime read Fdata_troca write Setdata_troca;
    property devolvido     : WideString read Fdevolvido write Setdevolvido;
    property aditivo     : WideString read Faditivo write Setaditivo;
    property data_devolucao     : TDateTime read Fdata_devolucao write Setdata_devolucao;
    property devolucao_itens     : TDateTime read Fdevolucao_itens write Setdevolucao_itens;
    property quantidade_devolucao     : Double read Fquantidade_devolucao write Setquantidade_devolucao;
    property devolucao_parcial     : WideString read Fdevolucao_parcial write Setdevolucao_parcial;
    property valor_garantia_unitario     : Double read Fvalor_garantia_unitario write Setvalor_garantia_unitario;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPlocacaoduplicata.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPlocacaoduplicata) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPlocacaoduplicata(Model).id;
Self.Fid_locacao         := TModelERPlocacaoduplicata(Model).id_locacao;
Self.Fid_equipamento         := TModelERPlocacaoduplicata(Model).id_equipamento;
Self.Fpatrimonio         := TModelERPlocacaoduplicata(Model).patrimonio;
Self.Fnome_equipamento         := TModelERPlocacaoduplicata(Model).nome_equipamento;
Self.Ftipo         := TModelERPlocacaoduplicata(Model).tipo;
Self.Fquantidade         := TModelERPlocacaoduplicata(Model).quantidade;
Self.Fvalor_unitario         := TModelERPlocacaoduplicata(Model).valor_unitario;
Self.Fvalor_garantia_total         := TModelERPlocacaoduplicata(Model).valor_garantia_total;
Self.Fvalor_total         := TModelERPlocacaoduplicata(Model).valor_total;
Self.Fobs         := TModelERPlocacaoduplicata(Model).obs;
Self.Fclick         := TModelERPlocacaoduplicata(Model).click;
Self.Fquantidade_aditivo         := TModelERPlocacaoduplicata(Model).quantidade_aditivo;
Self.Fvalor_aditivo         := TModelERPlocacaoduplicata(Model).valor_aditivo;
Self.Fvalor_total_aditivo         := TModelERPlocacaoduplicata(Model).valor_total_aditivo;
Self.Funidade         := TModelERPlocacaoduplicata(Model).unidade;
Self.Fativo         := TModelERPlocacaoduplicata(Model).ativo;
Self.Fdata_troca         := TModelERPlocacaoduplicata(Model).data_troca;
Self.Fdevolvido         := TModelERPlocacaoduplicata(Model).devolvido;
Self.Faditivo         := TModelERPlocacaoduplicata(Model).aditivo;
Self.Fdata_devolucao         := TModelERPlocacaoduplicata(Model).data_devolucao;
Self.Fdevolucao_itens         := TModelERPlocacaoduplicata(Model).devolucao_itens;
Self.Fquantidade_devolucao         := TModelERPlocacaoduplicata(Model).quantidade_devolucao;
Self.Fdevolucao_parcial         := TModelERPlocacaoduplicata(Model).devolucao_parcial;
Self.Fvalor_garantia_unitario         := TModelERPlocacaoduplicata(Model).valor_garantia_unitario;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPlocacaoduplicata.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPlocacaoduplicata.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPlocacaoduplicata.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPlocacaoduplicata.Setid_locacao(const Value: Boolean);   
begin                
  Fid_locacao := Value;   
end;                 

procedure TModelERPlocacaoduplicata.Setid_equipamento(const Value: Boolean);   
begin                
  Fid_equipamento := Value;   
end;                 

procedure TModelERPlocacaoduplicata.Setpatrimonio(const Value: Boolean);   
begin                
  Fpatrimonio := Value;   
end;                 

procedure TModelERPlocacaoduplicata.Setnome_equipamento(const Value: Boolean);   
begin                
  Fnome_equipamento := Value;   
end;                 

procedure TModelERPlocacaoduplicata.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPlocacaoduplicata.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPlocacaoduplicata.Setvalor_unitario(const Value: Boolean);   
begin                
  Fvalor_unitario := Value;   
end;                 

procedure TModelERPlocacaoduplicata.Setvalor_garantia_total(const Value: Boolean);   
begin                
  Fvalor_garantia_total := Value;   
end;                 

procedure TModelERPlocacaoduplicata.Setvalor_total(const Value: Boolean);   
begin                
  Fvalor_total := Value;   
end;                 

procedure TModelERPlocacaoduplicata.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 

procedure TModelERPlocacaoduplicata.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPlocacaoduplicata.Setquantidade_aditivo(const Value: Boolean);   
begin                
  Fquantidade_aditivo := Value;   
end;                 

procedure TModelERPlocacaoduplicata.Setvalor_aditivo(const Value: Boolean);   
begin                
  Fvalor_aditivo := Value;   
end;                 

procedure TModelERPlocacaoduplicata.Setvalor_total_aditivo(const Value: Boolean);   
begin                
  Fvalor_total_aditivo := Value;   
end;                 

procedure TModelERPlocacaoduplicata.Setunidade(const Value: Boolean);   
begin                
  Funidade := Value;   
end;                 

procedure TModelERPlocacaoduplicata.Setativo(const Value: Boolean);   
begin                
  Fativo := Value;   
end;                 

procedure TModelERPlocacaoduplicata.Setdata_troca(const Value: Boolean);   
begin                
  Fdata_troca := Value;   
end;                 

procedure TModelERPlocacaoduplicata.Setdevolvido(const Value: Boolean);   
begin                
  Fdevolvido := Value;   
end;                 

procedure TModelERPlocacaoduplicata.Setaditivo(const Value: Boolean);   
begin                
  Faditivo := Value;   
end;                 

procedure TModelERPlocacaoduplicata.Setdata_devolucao(const Value: Boolean);   
begin                
  Fdata_devolucao := Value;   
end;                 

procedure TModelERPlocacaoduplicata.Setdevolucao_itens(const Value: Boolean);   
begin                
  Fdevolucao_itens := Value;   
end;                 

procedure TModelERPlocacaoduplicata.Setquantidade_devolucao(const Value: Boolean);   
begin                
  Fquantidade_devolucao := Value;   
end;                 

procedure TModelERPlocacaoduplicata.Setdevolucao_parcial(const Value: Boolean);   
begin                
  Fdevolucao_parcial := Value;   
end;                 

procedure TModelERPlocacaoduplicata.Setvalor_garantia_unitario(const Value: Boolean);   
begin                
  Fvalor_garantia_unitario := Value;   
end;                 


end.
