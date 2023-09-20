unit Model.ERP.estoque_balanco;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPestoquebalanco = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata : TDateTime;
    Ftipo : WideString;
    Foperacao : WideString;
    Fid_equipamento : Integer;
    Fnome_equipamento : WideString;
    Fquantidade : Double;
    Fquantidade_disponivel : Double;
    Fmotivo_observacao : WideString;
    Fquantidade_anterior : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Settipo(const Value: WideString);
    procedure Setoperacao(const Value: WideString);
    procedure Setid_equipamento(const Value: Integer);
    procedure Setnome_equipamento(const Value: WideString);
    procedure Setquantidade(const Value: Double);
    procedure Setquantidade_disponivel(const Value: Double);
    procedure Setmotivo_observacao(const Value: WideString);
    procedure Setquantidade_anterior(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property data     : TDateTime read Fdata write Setdata;
    property tipo     : WideString read Ftipo write Settipo;
    property operacao     : WideString read Foperacao write Setoperacao;
    property id_equipamento     : Integer read Fid_equipamento write Setid_equipamento;
    property nome_equipamento     : WideString read Fnome_equipamento write Setnome_equipamento;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property quantidade_disponivel     : Double read Fquantidade_disponivel write Setquantidade_disponivel;
    property motivo_observacao     : WideString read Fmotivo_observacao write Setmotivo_observacao;
    property quantidade_anterior     : Double read Fquantidade_anterior write Setquantidade_anterior;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPestoquebalanco.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPestoquebalanco) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPestoquebalanco(Model).id;
Self.Fid_empresa         := TModelERPestoquebalanco(Model).id_empresa;
Self.Fdata         := TModelERPestoquebalanco(Model).data;
Self.Ftipo         := TModelERPestoquebalanco(Model).tipo;
Self.Foperacao         := TModelERPestoquebalanco(Model).operacao;
Self.Fid_equipamento         := TModelERPestoquebalanco(Model).id_equipamento;
Self.Fnome_equipamento         := TModelERPestoquebalanco(Model).nome_equipamento;
Self.Fquantidade         := TModelERPestoquebalanco(Model).quantidade;
Self.Fquantidade_disponivel         := TModelERPestoquebalanco(Model).quantidade_disponivel;
Self.Fmotivo_observacao         := TModelERPestoquebalanco(Model).motivo_observacao;
Self.Fquantidade_anterior         := TModelERPestoquebalanco(Model).quantidade_anterior;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPestoquebalanco.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPestoquebalanco.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPestoquebalanco.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPestoquebalanco.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPestoquebalanco.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPestoquebalanco.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPestoquebalanco.Setoperacao(const Value: Boolean);   
begin                
  Foperacao := Value;   
end;                 

procedure TModelERPestoquebalanco.Setid_equipamento(const Value: Boolean);   
begin                
  Fid_equipamento := Value;   
end;                 

procedure TModelERPestoquebalanco.Setnome_equipamento(const Value: Boolean);   
begin                
  Fnome_equipamento := Value;   
end;                 

procedure TModelERPestoquebalanco.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPestoquebalanco.Setquantidade_disponivel(const Value: Boolean);   
begin                
  Fquantidade_disponivel := Value;   
end;                 

procedure TModelERPestoquebalanco.Setmotivo_observacao(const Value: Boolean);   
begin                
  Fmotivo_observacao := Value;   
end;                 

procedure TModelERPestoquebalanco.Setquantidade_anterior(const Value: Boolean);   
begin                
  Fquantidade_anterior := Value;   
end;                 


end.
