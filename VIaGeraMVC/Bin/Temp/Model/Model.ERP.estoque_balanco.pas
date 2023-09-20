unit Model.ERP.estoque_almoxarifado;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPestoquealmoxarifado = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_balanco : Integer;
    Fdata : TDateTime;
    Festoque : WideString;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Foperacao : WideString;
    Fid_operacao : Integer;
    Fquantidade : Double;
    Fnota : WideString;
    Ftipo : WideString;
    Fquantidade_atual : Double;
    Festoque_atual : Double;
    Fid_usuario : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_balanco(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setestoque(const Value: WideString);
    procedure Setid_produto(const Value: Integer);
    procedure Setnome_produto(const Value: WideString);
    procedure Setoperacao(const Value: WideString);
    procedure Setid_operacao(const Value: Integer);
    procedure Setquantidade(const Value: Double);
    procedure Setnota(const Value: WideString);
    procedure Settipo(const Value: WideString);
    procedure Setquantidade_atual(const Value: Double);
    procedure Setestoque_atual(const Value: Double);
    procedure Setid_usuario(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_balanco     : Integer read Fid_balanco write Setid_balanco;
    property data     : TDateTime read Fdata write Setdata;
    property estoque     : WideString read Festoque write Setestoque;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property nome_produto     : WideString read Fnome_produto write Setnome_produto;
    property operacao     : WideString read Foperacao write Setoperacao;
    property id_operacao     : Integer read Fid_operacao write Setid_operacao;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property nota     : WideString read Fnota write Setnota;
    property tipo     : WideString read Ftipo write Settipo;
    property quantidade_atual     : Double read Fquantidade_atual write Setquantidade_atual;
    property estoque_atual     : Double read Festoque_atual write Setestoque_atual;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPestoquealmoxarifado.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPestoquealmoxarifado) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPestoquealmoxarifado(Model).id;
Self.Fid_empresa         := TModelERPestoquealmoxarifado(Model).id_empresa;
Self.Fid_balanco         := TModelERPestoquealmoxarifado(Model).id_balanco;
Self.Fdata         := TModelERPestoquealmoxarifado(Model).data;
Self.Festoque         := TModelERPestoquealmoxarifado(Model).estoque;
Self.Fid_produto         := TModelERPestoquealmoxarifado(Model).id_produto;
Self.Fnome_produto         := TModelERPestoquealmoxarifado(Model).nome_produto;
Self.Foperacao         := TModelERPestoquealmoxarifado(Model).operacao;
Self.Fid_operacao         := TModelERPestoquealmoxarifado(Model).id_operacao;
Self.Fquantidade         := TModelERPestoquealmoxarifado(Model).quantidade;
Self.Fnota         := TModelERPestoquealmoxarifado(Model).nota;
Self.Ftipo         := TModelERPestoquealmoxarifado(Model).tipo;
Self.Fquantidade_atual         := TModelERPestoquealmoxarifado(Model).quantidade_atual;
Self.Festoque_atual         := TModelERPestoquealmoxarifado(Model).estoque_atual;
Self.Fid_usuario         := TModelERPestoquealmoxarifado(Model).id_usuario;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPestoquealmoxarifado.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPestoquealmoxarifado.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPestoquealmoxarifado.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPestoquealmoxarifado.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPestoquealmoxarifado.Setid_balanco(const Value: Boolean);   
begin                
  Fid_balanco := Value;   
end;                 

procedure TModelERPestoquealmoxarifado.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPestoquealmoxarifado.Setestoque(const Value: Boolean);   
begin                
  Festoque := Value;   
end;                 

procedure TModelERPestoquealmoxarifado.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPestoquealmoxarifado.Setnome_produto(const Value: Boolean);   
begin                
  Fnome_produto := Value;   
end;                 

procedure TModelERPestoquealmoxarifado.Setoperacao(const Value: Boolean);   
begin                
  Foperacao := Value;   
end;                 

procedure TModelERPestoquealmoxarifado.Setid_operacao(const Value: Boolean);   
begin                
  Fid_operacao := Value;   
end;                 

procedure TModelERPestoquealmoxarifado.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPestoquealmoxarifado.Setnota(const Value: Boolean);   
begin                
  Fnota := Value;   
end;                 

procedure TModelERPestoquealmoxarifado.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPestoquealmoxarifado.Setquantidade_atual(const Value: Boolean);   
begin                
  Fquantidade_atual := Value;   
end;                 

procedure TModelERPestoquealmoxarifado.Setestoque_atual(const Value: Boolean);   
begin                
  Festoque_atual := Value;   
end;                 

procedure TModelERPestoquealmoxarifado.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 


end.
