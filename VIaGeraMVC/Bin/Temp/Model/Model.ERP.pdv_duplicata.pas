unit Model.ERP.pdv_caixa;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPpdvcaixa = class(TModelBase)

private
    Fid : Integer;
    Fid_pdv : Integer;
    Fid_caixa : Integer;
    Fparcela : Integer;
    Fdocumento : indefinido;
    Fdata_vencto : TDateTime;
    Fid_forma : Integer;
    Fnome_forma : indefinido;
    Fvalor : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_pdv(const Value: Integer);
    procedure Setid_caixa(const Value: Integer);
    procedure Setparcela(const Value: Integer);
    procedure Setdocumento(const Value: indefinido);
    procedure Setdata_vencto(const Value: TDateTime);
    procedure Setid_forma(const Value: Integer);
    procedure Setnome_forma(const Value: indefinido);
    procedure Setvalor(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_pdv     : Integer read Fid_pdv write Setid_pdv;
    property id_caixa     : Integer read Fid_caixa write Setid_caixa;
    property parcela     : Integer read Fparcela write Setparcela;
    property documento     : indefinido read Fdocumento write Setdocumento;
    property data_vencto     : TDateTime read Fdata_vencto write Setdata_vencto;
    property id_forma     : Integer read Fid_forma write Setid_forma;
    property nome_forma     : indefinido read Fnome_forma write Setnome_forma;
    property valor     : Double read Fvalor write Setvalor;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPpdvcaixa.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPpdvcaixa) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPpdvcaixa(Model).id;
Self.Fid_pdv         := TModelERPpdvcaixa(Model).id_pdv;
Self.Fid_caixa         := TModelERPpdvcaixa(Model).id_caixa;
Self.Fparcela         := TModelERPpdvcaixa(Model).parcela;
Self.Fdocumento         := TModelERPpdvcaixa(Model).documento;
Self.Fdata_vencto         := TModelERPpdvcaixa(Model).data_vencto;
Self.Fid_forma         := TModelERPpdvcaixa(Model).id_forma;
Self.Fnome_forma         := TModelERPpdvcaixa(Model).nome_forma;
Self.Fvalor         := TModelERPpdvcaixa(Model).valor;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPpdvcaixa.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPpdvcaixa.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPpdvcaixa.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPpdvcaixa.Setid_pdv(const Value: Boolean);   
begin                
  Fid_pdv := Value;   
end;                 

procedure TModelERPpdvcaixa.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPpdvcaixa.Setparcela(const Value: Boolean);   
begin                
  Fparcela := Value;   
end;                 

procedure TModelERPpdvcaixa.Setdocumento(const Value: Boolean);   
begin                
  Fdocumento := Value;   
end;                 

procedure TModelERPpdvcaixa.Setdata_vencto(const Value: Boolean);   
begin                
  Fdata_vencto := Value;   
end;                 

procedure TModelERPpdvcaixa.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 

procedure TModelERPpdvcaixa.Setnome_forma(const Value: Boolean);   
begin                
  Fnome_forma := Value;   
end;                 

procedure TModelERPpdvcaixa.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 


end.
