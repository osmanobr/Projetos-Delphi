unit Model.ERP.movimentacao_almoxarifado;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPmovimentacaoalmoxarifado = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_mov_almoxarifado : Integer;
    Fid_equipamento : Integer;
    Fquantidade : Double;
    Fdevolucao : indefinido;
    Fdata_devolucao : TDateTime;
    Fclick : Boolean;
    Fnome_equipamento : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_mov_almoxarifado(const Value: Integer);
    procedure Setid_equipamento(const Value: Integer);
    procedure Setquantidade(const Value: Double);
    procedure Setdevolucao(const Value: indefinido);
    procedure Setdata_devolucao(const Value: TDateTime);
    procedure Setclick(const Value: Boolean);
    procedure Setnome_equipamento(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_mov_almoxarifado     : Integer read Fid_mov_almoxarifado write Setid_mov_almoxarifado;
    property id_equipamento     : Integer read Fid_equipamento write Setid_equipamento;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property devolucao     : indefinido read Fdevolucao write Setdevolucao;
    property data_devolucao     : TDateTime read Fdata_devolucao write Setdata_devolucao;
    property click     : Boolean read Fclick write Setclick;
    property nome_equipamento     : indefinido read Fnome_equipamento write Setnome_equipamento;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPmovimentacaoalmoxarifado.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPmovimentacaoalmoxarifado) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPmovimentacaoalmoxarifado(Model).id;
Self.Fid_empresa         := TModelERPmovimentacaoalmoxarifado(Model).id_empresa;
Self.Fid_mov_almoxarifado         := TModelERPmovimentacaoalmoxarifado(Model).id_mov_almoxarifado;
Self.Fid_equipamento         := TModelERPmovimentacaoalmoxarifado(Model).id_equipamento;
Self.Fquantidade         := TModelERPmovimentacaoalmoxarifado(Model).quantidade;
Self.Fdevolucao         := TModelERPmovimentacaoalmoxarifado(Model).devolucao;
Self.Fdata_devolucao         := TModelERPmovimentacaoalmoxarifado(Model).data_devolucao;
Self.Fclick         := TModelERPmovimentacaoalmoxarifado(Model).click;
Self.Fnome_equipamento         := TModelERPmovimentacaoalmoxarifado(Model).nome_equipamento;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPmovimentacaoalmoxarifado.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPmovimentacaoalmoxarifado.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPmovimentacaoalmoxarifado.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPmovimentacaoalmoxarifado.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPmovimentacaoalmoxarifado.Setid_mov_almoxarifado(const Value: Boolean);   
begin                
  Fid_mov_almoxarifado := Value;   
end;                 

procedure TModelERPmovimentacaoalmoxarifado.Setid_equipamento(const Value: Boolean);   
begin                
  Fid_equipamento := Value;   
end;                 

procedure TModelERPmovimentacaoalmoxarifado.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPmovimentacaoalmoxarifado.Setdevolucao(const Value: Boolean);   
begin                
  Fdevolucao := Value;   
end;                 

procedure TModelERPmovimentacaoalmoxarifado.Setdata_devolucao(const Value: Boolean);   
begin                
  Fdata_devolucao := Value;   
end;                 

procedure TModelERPmovimentacaoalmoxarifado.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPmovimentacaoalmoxarifado.Setnome_equipamento(const Value: Boolean);   
begin                
  Fnome_equipamento := Value;   
end;                 


end.
