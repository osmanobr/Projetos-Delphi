unit Model.ERP.ncm_substituido;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPncmsubstituido = class(TModelBase)

private
    Fid : Integer;
    Fncm : WideString;
    Fpiscofins_entrada : WideString;
    Fpiscofins_saida : WideString;
    Fpiscofins_nat_receita : WideString;

    procedure Setid(const Value: Integer);
    procedure Setncm(const Value: WideString);
    procedure Setpiscofins_entrada(const Value: WideString);
    procedure Setpiscofins_saida(const Value: WideString);
    procedure Setpiscofins_nat_receita(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property ncm     : WideString read Fncm write Setncm;
    property piscofins_entrada     : WideString read Fpiscofins_entrada write Setpiscofins_entrada;
    property piscofins_saida     : WideString read Fpiscofins_saida write Setpiscofins_saida;
    property piscofins_nat_receita     : WideString read Fpiscofins_nat_receita write Setpiscofins_nat_receita;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPncmsubstituido.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPncmsubstituido) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPncmsubstituido(Model).id;
Self.Fncm         := TModelERPncmsubstituido(Model).ncm;
Self.Fpiscofins_entrada         := TModelERPncmsubstituido(Model).piscofins_entrada;
Self.Fpiscofins_saida         := TModelERPncmsubstituido(Model).piscofins_saida;
Self.Fpiscofins_nat_receita         := TModelERPncmsubstituido(Model).piscofins_nat_receita;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPncmsubstituido.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPncmsubstituido.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPncmsubstituido.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPncmsubstituido.Setncm(const Value: Boolean);   
begin                
  Fncm := Value;   
end;                 

procedure TModelERPncmsubstituido.Setpiscofins_entrada(const Value: Boolean);   
begin                
  Fpiscofins_entrada := Value;   
end;                 

procedure TModelERPncmsubstituido.Setpiscofins_saida(const Value: Boolean);   
begin                
  Fpiscofins_saida := Value;   
end;                 

procedure TModelERPncmsubstituido.Setpiscofins_nat_receita(const Value: Boolean);   
begin                
  Fpiscofins_nat_receita := Value;   
end;                 


end.
