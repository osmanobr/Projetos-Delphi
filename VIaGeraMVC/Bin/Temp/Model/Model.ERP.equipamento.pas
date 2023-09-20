unit Model.ERP.entrega;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPentrega = class(TModelBase)

private
    Fid : Integer;
    Fpatrimonio : WideString;
    Fnome : WideString;
    Fquantidade : Double;
    Fvalor_garantia : Double;
    Fvalor_locacaodia : Double;
    Fvalor_locacaosemana : Double;
    Fvalor_locacaoquinzenal : Double;
    Fvalor_locacaomensal : Double;
    Fstatus : WideString;
    Fobs : indefinido;
    Fclick : Boolean;
    Fmulti_garantia : Boolean;
    Funidade : WideString;
    Ftipo_locacao : WideString;
    Fativo : WideString;
    Fqtd_unidade_por_metro : Double;
    Fquantidade_estoque : Double;
    Fvalor_locacaoanual : Double;
    Fvalor_locacaodoisanos : Double;

    procedure Setid(const Value: Integer);
    procedure Setpatrimonio(const Value: WideString);
    procedure Setnome(const Value: WideString);
    procedure Setquantidade(const Value: Double);
    procedure Setvalor_garantia(const Value: Double);
    procedure Setvalor_locacaodia(const Value: Double);
    procedure Setvalor_locacaosemana(const Value: Double);
    procedure Setvalor_locacaoquinzenal(const Value: Double);
    procedure Setvalor_locacaomensal(const Value: Double);
    procedure Setstatus(const Value: WideString);
    procedure Setobs(const Value: indefinido);
    procedure Setclick(const Value: Boolean);
    procedure Setmulti_garantia(const Value: Boolean);
    procedure Setunidade(const Value: WideString);
    procedure Settipo_locacao(const Value: WideString);
    procedure Setativo(const Value: WideString);
    procedure Setqtd_unidade_por_metro(const Value: Double);
    procedure Setquantidade_estoque(const Value: Double);
    procedure Setvalor_locacaoanual(const Value: Double);
    procedure Setvalor_locacaodoisanos(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property patrimonio     : WideString read Fpatrimonio write Setpatrimonio;
    property nome     : WideString read Fnome write Setnome;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property valor_garantia     : Double read Fvalor_garantia write Setvalor_garantia;
    property valor_locacaodia     : Double read Fvalor_locacaodia write Setvalor_locacaodia;
    property valor_locacaosemana     : Double read Fvalor_locacaosemana write Setvalor_locacaosemana;
    property valor_locacaoquinzenal     : Double read Fvalor_locacaoquinzenal write Setvalor_locacaoquinzenal;
    property valor_locacaomensal     : Double read Fvalor_locacaomensal write Setvalor_locacaomensal;
    property status     : WideString read Fstatus write Setstatus;
    property obs     : indefinido read Fobs write Setobs;
    property click     : Boolean read Fclick write Setclick;
    property multi_garantia     : Boolean read Fmulti_garantia write Setmulti_garantia;
    property unidade     : WideString read Funidade write Setunidade;
    property tipo_locacao     : WideString read Ftipo_locacao write Settipo_locacao;
    property ativo     : WideString read Fativo write Setativo;
    property qtd_unidade_por_metro     : Double read Fqtd_unidade_por_metro write Setqtd_unidade_por_metro;
    property quantidade_estoque     : Double read Fquantidade_estoque write Setquantidade_estoque;
    property valor_locacaoanual     : Double read Fvalor_locacaoanual write Setvalor_locacaoanual;
    property valor_locacaodoisanos     : Double read Fvalor_locacaodoisanos write Setvalor_locacaodoisanos;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPentrega.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPentrega) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPentrega(Model).id;
Self.Fpatrimonio         := TModelERPentrega(Model).patrimonio;
Self.Fnome         := TModelERPentrega(Model).nome;
Self.Fquantidade         := TModelERPentrega(Model).quantidade;
Self.Fvalor_garantia         := TModelERPentrega(Model).valor_garantia;
Self.Fvalor_locacaodia         := TModelERPentrega(Model).valor_locacaodia;
Self.Fvalor_locacaosemana         := TModelERPentrega(Model).valor_locacaosemana;
Self.Fvalor_locacaoquinzenal         := TModelERPentrega(Model).valor_locacaoquinzenal;
Self.Fvalor_locacaomensal         := TModelERPentrega(Model).valor_locacaomensal;
Self.Fstatus         := TModelERPentrega(Model).status;
Self.Fobs         := TModelERPentrega(Model).obs;
Self.Fclick         := TModelERPentrega(Model).click;
Self.Fmulti_garantia         := TModelERPentrega(Model).multi_garantia;
Self.Funidade         := TModelERPentrega(Model).unidade;
Self.Ftipo_locacao         := TModelERPentrega(Model).tipo_locacao;
Self.Fativo         := TModelERPentrega(Model).ativo;
Self.Fqtd_unidade_por_metro         := TModelERPentrega(Model).qtd_unidade_por_metro;
Self.Fquantidade_estoque         := TModelERPentrega(Model).quantidade_estoque;
Self.Fvalor_locacaoanual         := TModelERPentrega(Model).valor_locacaoanual;
Self.Fvalor_locacaodoisanos         := TModelERPentrega(Model).valor_locacaodoisanos;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPentrega.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPentrega.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPentrega.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPentrega.Setpatrimonio(const Value: Boolean);   
begin                
  Fpatrimonio := Value;   
end;                 

procedure TModelERPentrega.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPentrega.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPentrega.Setvalor_garantia(const Value: Boolean);   
begin                
  Fvalor_garantia := Value;   
end;                 

procedure TModelERPentrega.Setvalor_locacaodia(const Value: Boolean);   
begin                
  Fvalor_locacaodia := Value;   
end;                 

procedure TModelERPentrega.Setvalor_locacaosemana(const Value: Boolean);   
begin                
  Fvalor_locacaosemana := Value;   
end;                 

procedure TModelERPentrega.Setvalor_locacaoquinzenal(const Value: Boolean);   
begin                
  Fvalor_locacaoquinzenal := Value;   
end;                 

procedure TModelERPentrega.Setvalor_locacaomensal(const Value: Boolean);   
begin                
  Fvalor_locacaomensal := Value;   
end;                 

procedure TModelERPentrega.Setstatus(const Value: Boolean);   
begin                
  Fstatus := Value;   
end;                 

procedure TModelERPentrega.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 

procedure TModelERPentrega.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPentrega.Setmulti_garantia(const Value: Boolean);   
begin                
  Fmulti_garantia := Value;   
end;                 

procedure TModelERPentrega.Setunidade(const Value: Boolean);   
begin                
  Funidade := Value;   
end;                 

procedure TModelERPentrega.Settipo_locacao(const Value: Boolean);   
begin                
  Ftipo_locacao := Value;   
end;                 

procedure TModelERPentrega.Setativo(const Value: Boolean);   
begin                
  Fativo := Value;   
end;                 

procedure TModelERPentrega.Setqtd_unidade_por_metro(const Value: Boolean);   
begin                
  Fqtd_unidade_por_metro := Value;   
end;                 

procedure TModelERPentrega.Setquantidade_estoque(const Value: Boolean);   
begin                
  Fquantidade_estoque := Value;   
end;                 

procedure TModelERPentrega.Setvalor_locacaoanual(const Value: Boolean);   
begin                
  Fvalor_locacaoanual := Value;   
end;                 

procedure TModelERPentrega.Setvalor_locacaodoisanos(const Value: Boolean);   
begin                
  Fvalor_locacaodoisanos := Value;   
end;                 


end.
