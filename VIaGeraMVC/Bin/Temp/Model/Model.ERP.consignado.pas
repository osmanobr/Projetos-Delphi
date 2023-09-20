unit Model.ERP.compra_serie;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcompraserie = class(TModelBase)

private
    Fid : Integer;
    Fid_cliente : Integer;
    Fnome_cliente : WideString;
    Fdata : indefinido;
    Fdata_prevista_devolucao : indefinido;
    Fdata_devolucao : indefinido;
    Fdias : Integer;
    Fmes : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setnome_cliente(const Value: WideString);
    procedure Setdata(const Value: indefinido);
    procedure Setdata_prevista_devolucao(const Value: indefinido);
    procedure Setdata_devolucao(const Value: indefinido);
    procedure Setdias(const Value: Integer);
    procedure Setmes(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property nome_cliente     : WideString read Fnome_cliente write Setnome_cliente;
    property data     : indefinido read Fdata write Setdata;
    property data_prevista_devolucao     : indefinido read Fdata_prevista_devolucao write Setdata_prevista_devolucao;
    property data_devolucao     : indefinido read Fdata_devolucao write Setdata_devolucao;
    property dias     : Integer read Fdias write Setdias;
    property mes     : Integer read Fmes write Setmes;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcompraserie.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcompraserie) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcompraserie(Model).id;
Self.Fid_cliente         := TModelERPcompraserie(Model).id_cliente;
Self.Fnome_cliente         := TModelERPcompraserie(Model).nome_cliente;
Self.Fdata         := TModelERPcompraserie(Model).data;
Self.Fdata_prevista_devolucao         := TModelERPcompraserie(Model).data_prevista_devolucao;
Self.Fdata_devolucao         := TModelERPcompraserie(Model).data_devolucao;
Self.Fdias         := TModelERPcompraserie(Model).dias;
Self.Fmes         := TModelERPcompraserie(Model).mes;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcompraserie.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcompraserie.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcompraserie.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcompraserie.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPcompraserie.Setnome_cliente(const Value: Boolean);   
begin                
  Fnome_cliente := Value;   
end;                 

procedure TModelERPcompraserie.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPcompraserie.Setdata_prevista_devolucao(const Value: Boolean);   
begin                
  Fdata_prevista_devolucao := Value;   
end;                 

procedure TModelERPcompraserie.Setdata_devolucao(const Value: Boolean);   
begin                
  Fdata_devolucao := Value;   
end;                 

procedure TModelERPcompraserie.Setdias(const Value: Boolean);   
begin                
  Fdias := Value;   
end;                 

procedure TModelERPcompraserie.Setmes(const Value: Boolean);   
begin                
  Fmes := Value;   
end;                 


end.
