unit Model.ERP.estoque_equipamentos;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPestoqueequipamentos = class(TModelBase)

private
    Fid : Integer;
    Fdata : TDateTime;
    Festoque : WideString;
    Fid_insumo : Integer;
    Fnome_insumo : WideString;
    Foperacao : WideString;
    Fid_operacao : Integer;
    Fquantidade : Double;
    Fquant_perda : Double;
    Fnota : WideString;
    Fquantidade_empresa_terceiro : Double;
    Fquantidade_terceiro_empresa : Double;

    procedure Setid(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setestoque(const Value: WideString);
    procedure Setid_insumo(const Value: Integer);
    procedure Setnome_insumo(const Value: WideString);
    procedure Setoperacao(const Value: WideString);
    procedure Setid_operacao(const Value: Integer);
    procedure Setquantidade(const Value: Double);
    procedure Setquant_perda(const Value: Double);
    procedure Setnota(const Value: WideString);
    procedure Setquantidade_empresa_terceiro(const Value: Double);
    procedure Setquantidade_terceiro_empresa(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property data     : TDateTime read Fdata write Setdata;
    property estoque     : WideString read Festoque write Setestoque;
    property id_insumo     : Integer read Fid_insumo write Setid_insumo;
    property nome_insumo     : WideString read Fnome_insumo write Setnome_insumo;
    property operacao     : WideString read Foperacao write Setoperacao;
    property id_operacao     : Integer read Fid_operacao write Setid_operacao;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property quant_perda     : Double read Fquant_perda write Setquant_perda;
    property nota     : WideString read Fnota write Setnota;
    property quantidade_empresa_terceiro     : Double read Fquantidade_empresa_terceiro write Setquantidade_empresa_terceiro;
    property quantidade_terceiro_empresa     : Double read Fquantidade_terceiro_empresa write Setquantidade_terceiro_empresa;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPestoqueequipamentos.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPestoqueequipamentos) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPestoqueequipamentos(Model).id;
Self.Fdata         := TModelERPestoqueequipamentos(Model).data;
Self.Festoque         := TModelERPestoqueequipamentos(Model).estoque;
Self.Fid_insumo         := TModelERPestoqueequipamentos(Model).id_insumo;
Self.Fnome_insumo         := TModelERPestoqueequipamentos(Model).nome_insumo;
Self.Foperacao         := TModelERPestoqueequipamentos(Model).operacao;
Self.Fid_operacao         := TModelERPestoqueequipamentos(Model).id_operacao;
Self.Fquantidade         := TModelERPestoqueequipamentos(Model).quantidade;
Self.Fquant_perda         := TModelERPestoqueequipamentos(Model).quant_perda;
Self.Fnota         := TModelERPestoqueequipamentos(Model).nota;
Self.Fquantidade_empresa_terceiro         := TModelERPestoqueequipamentos(Model).quantidade_empresa_terceiro;
Self.Fquantidade_terceiro_empresa         := TModelERPestoqueequipamentos(Model).quantidade_terceiro_empresa;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPestoqueequipamentos.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPestoqueequipamentos.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPestoqueequipamentos.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPestoqueequipamentos.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPestoqueequipamentos.Setestoque(const Value: Boolean);   
begin                
  Festoque := Value;   
end;                 

procedure TModelERPestoqueequipamentos.Setid_insumo(const Value: Boolean);   
begin                
  Fid_insumo := Value;   
end;                 

procedure TModelERPestoqueequipamentos.Setnome_insumo(const Value: Boolean);   
begin                
  Fnome_insumo := Value;   
end;                 

procedure TModelERPestoqueequipamentos.Setoperacao(const Value: Boolean);   
begin                
  Foperacao := Value;   
end;                 

procedure TModelERPestoqueequipamentos.Setid_operacao(const Value: Boolean);   
begin                
  Fid_operacao := Value;   
end;                 

procedure TModelERPestoqueequipamentos.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPestoqueequipamentos.Setquant_perda(const Value: Boolean);   
begin                
  Fquant_perda := Value;   
end;                 

procedure TModelERPestoqueequipamentos.Setnota(const Value: Boolean);   
begin                
  Fnota := Value;   
end;                 

procedure TModelERPestoqueequipamentos.Setquantidade_empresa_terceiro(const Value: Boolean);   
begin                
  Fquantidade_empresa_terceiro := Value;   
end;                 

procedure TModelERPestoqueequipamentos.Setquantidade_terceiro_empresa(const Value: Boolean);   
begin                
  Fquantidade_terceiro_empresa := Value;   
end;                 


end.
