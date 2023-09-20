unit Model.ERP.posto_encerrante;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPpostoencerrante = class(TModelBase)

private
    Fid : Integer;
    Fid_encerrante : Integer;
    Fbico : WideString;
    Fqtd_fec : Double;
    Fqtd_aber : Double;
    Fqtd_venda : Double;
    Fafericao : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_encerrante(const Value: Integer);
    procedure Setbico(const Value: WideString);
    procedure Setqtd_fec(const Value: Double);
    procedure Setqtd_aber(const Value: Double);
    procedure Setqtd_venda(const Value: Double);
    procedure Setafericao(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_encerrante     : Integer read Fid_encerrante write Setid_encerrante;
    property bico     : WideString read Fbico write Setbico;
    property qtd_fec     : Double read Fqtd_fec write Setqtd_fec;
    property qtd_aber     : Double read Fqtd_aber write Setqtd_aber;
    property qtd_venda     : Double read Fqtd_venda write Setqtd_venda;
    property afericao     : Double read Fafericao write Setafericao;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPpostoencerrante.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPpostoencerrante) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPpostoencerrante(Model).id;
Self.Fid_encerrante         := TModelERPpostoencerrante(Model).id_encerrante;
Self.Fbico         := TModelERPpostoencerrante(Model).bico;
Self.Fqtd_fec         := TModelERPpostoencerrante(Model).qtd_fec;
Self.Fqtd_aber         := TModelERPpostoencerrante(Model).qtd_aber;
Self.Fqtd_venda         := TModelERPpostoencerrante(Model).qtd_venda;
Self.Fafericao         := TModelERPpostoencerrante(Model).afericao;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPpostoencerrante.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPpostoencerrante.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPpostoencerrante.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPpostoencerrante.Setid_encerrante(const Value: Boolean);   
begin                
  Fid_encerrante := Value;   
end;                 

procedure TModelERPpostoencerrante.Setbico(const Value: Boolean);   
begin                
  Fbico := Value;   
end;                 

procedure TModelERPpostoencerrante.Setqtd_fec(const Value: Boolean);   
begin                
  Fqtd_fec := Value;   
end;                 

procedure TModelERPpostoencerrante.Setqtd_aber(const Value: Boolean);   
begin                
  Fqtd_aber := Value;   
end;                 

procedure TModelERPpostoencerrante.Setqtd_venda(const Value: Boolean);   
begin                
  Fqtd_venda := Value;   
end;                 

procedure TModelERPpostoencerrante.Setafericao(const Value: Boolean);   
begin                
  Fafericao := Value;   
end;                 


end.
