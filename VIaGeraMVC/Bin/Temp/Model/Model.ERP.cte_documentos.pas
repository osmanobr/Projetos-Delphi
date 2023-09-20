unit Model.ERP.cst_piscofins_natureza_relacao;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcstpiscofinsnaturezarelacao = class(TModelBase)

private
    Fid : Integer;
    Fid_cte : Integer;
    Fnome_cliente : WideString;
    Fnfe_chave : WideString;
    Fqvol : Double;
    Fnvol : Double;
    Fpesob : Double;
    Fpesol : Double;
    Fvl_total : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_cte(const Value: Integer);
    procedure Setnome_cliente(const Value: WideString);
    procedure Setnfe_chave(const Value: WideString);
    procedure Setqvol(const Value: Double);
    procedure Setnvol(const Value: Double);
    procedure Setpesob(const Value: Double);
    procedure Setpesol(const Value: Double);
    procedure Setvl_total(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_cte     : Integer read Fid_cte write Setid_cte;
    property nome_cliente     : WideString read Fnome_cliente write Setnome_cliente;
    property nfe_chave     : WideString read Fnfe_chave write Setnfe_chave;
    property qvol     : Double read Fqvol write Setqvol;
    property nvol     : Double read Fnvol write Setnvol;
    property pesob     : Double read Fpesob write Setpesob;
    property pesol     : Double read Fpesol write Setpesol;
    property vl_total     : Double read Fvl_total write Setvl_total;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcstpiscofinsnaturezarelacao.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcstpiscofinsnaturezarelacao) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcstpiscofinsnaturezarelacao(Model).id;
Self.Fid_cte         := TModelERPcstpiscofinsnaturezarelacao(Model).id_cte;
Self.Fnome_cliente         := TModelERPcstpiscofinsnaturezarelacao(Model).nome_cliente;
Self.Fnfe_chave         := TModelERPcstpiscofinsnaturezarelacao(Model).nfe_chave;
Self.Fqvol         := TModelERPcstpiscofinsnaturezarelacao(Model).qvol;
Self.Fnvol         := TModelERPcstpiscofinsnaturezarelacao(Model).nvol;
Self.Fpesob         := TModelERPcstpiscofinsnaturezarelacao(Model).pesob;
Self.Fpesol         := TModelERPcstpiscofinsnaturezarelacao(Model).pesol;
Self.Fvl_total         := TModelERPcstpiscofinsnaturezarelacao(Model).vl_total;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcstpiscofinsnaturezarelacao.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcstpiscofinsnaturezarelacao.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcstpiscofinsnaturezarelacao.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcstpiscofinsnaturezarelacao.Setid_cte(const Value: Boolean);   
begin                
  Fid_cte := Value;   
end;                 

procedure TModelERPcstpiscofinsnaturezarelacao.Setnome_cliente(const Value: Boolean);   
begin                
  Fnome_cliente := Value;   
end;                 

procedure TModelERPcstpiscofinsnaturezarelacao.Setnfe_chave(const Value: Boolean);   
begin                
  Fnfe_chave := Value;   
end;                 

procedure TModelERPcstpiscofinsnaturezarelacao.Setqvol(const Value: Boolean);   
begin                
  Fqvol := Value;   
end;                 

procedure TModelERPcstpiscofinsnaturezarelacao.Setnvol(const Value: Boolean);   
begin                
  Fnvol := Value;   
end;                 

procedure TModelERPcstpiscofinsnaturezarelacao.Setpesob(const Value: Boolean);   
begin                
  Fpesob := Value;   
end;                 

procedure TModelERPcstpiscofinsnaturezarelacao.Setpesol(const Value: Boolean);   
begin                
  Fpesol := Value;   
end;                 

procedure TModelERPcstpiscofinsnaturezarelacao.Setvl_total(const Value: Boolean);   
begin                
  Fvl_total := Value;   
end;                 


end.
