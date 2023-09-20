unit Model.ERP.plano_conta_dre;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPplanocontadre = class(TModelBase)

private
    Fid : Integer;
    Freg : indefinido;
    Fdt_alt : indefinido;
    Fcod_nat_contas : indefinido;
    Find_cta : indefinido;
    Fnivel : Integer;
    Fcod_cta : indefinido;
    Fnome_cta : indefinido;
    Fcod_cta_ref : indefinido;
    Fcnpj_est : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setreg(const Value: indefinido);
    procedure Setdt_alt(const Value: indefinido);
    procedure Setcod_nat_contas(const Value: indefinido);
    procedure Setind_cta(const Value: indefinido);
    procedure Setnivel(const Value: Integer);
    procedure Setcod_cta(const Value: indefinido);
    procedure Setnome_cta(const Value: indefinido);
    procedure Setcod_cta_ref(const Value: indefinido);
    procedure Setcnpj_est(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property reg     : indefinido read Freg write Setreg;
    property dt_alt     : indefinido read Fdt_alt write Setdt_alt;
    property cod_nat_contas     : indefinido read Fcod_nat_contas write Setcod_nat_contas;
    property ind_cta     : indefinido read Find_cta write Setind_cta;
    property nivel     : Integer read Fnivel write Setnivel;
    property cod_cta     : indefinido read Fcod_cta write Setcod_cta;
    property nome_cta     : indefinido read Fnome_cta write Setnome_cta;
    property cod_cta_ref     : indefinido read Fcod_cta_ref write Setcod_cta_ref;
    property cnpj_est     : indefinido read Fcnpj_est write Setcnpj_est;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPplanocontadre.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPplanocontadre) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPplanocontadre(Model).id;
Self.Freg         := TModelERPplanocontadre(Model).reg;
Self.Fdt_alt         := TModelERPplanocontadre(Model).dt_alt;
Self.Fcod_nat_contas         := TModelERPplanocontadre(Model).cod_nat_contas;
Self.Find_cta         := TModelERPplanocontadre(Model).ind_cta;
Self.Fnivel         := TModelERPplanocontadre(Model).nivel;
Self.Fcod_cta         := TModelERPplanocontadre(Model).cod_cta;
Self.Fnome_cta         := TModelERPplanocontadre(Model).nome_cta;
Self.Fcod_cta_ref         := TModelERPplanocontadre(Model).cod_cta_ref;
Self.Fcnpj_est         := TModelERPplanocontadre(Model).cnpj_est;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPplanocontadre.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPplanocontadre.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPplanocontadre.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPplanocontadre.Setreg(const Value: Boolean);   
begin                
  Freg := Value;   
end;                 

procedure TModelERPplanocontadre.Setdt_alt(const Value: Boolean);   
begin                
  Fdt_alt := Value;   
end;                 

procedure TModelERPplanocontadre.Setcod_nat_contas(const Value: Boolean);   
begin                
  Fcod_nat_contas := Value;   
end;                 

procedure TModelERPplanocontadre.Setind_cta(const Value: Boolean);   
begin                
  Find_cta := Value;   
end;                 

procedure TModelERPplanocontadre.Setnivel(const Value: Boolean);   
begin                
  Fnivel := Value;   
end;                 

procedure TModelERPplanocontadre.Setcod_cta(const Value: Boolean);   
begin                
  Fcod_cta := Value;   
end;                 

procedure TModelERPplanocontadre.Setnome_cta(const Value: Boolean);   
begin                
  Fnome_cta := Value;   
end;                 

procedure TModelERPplanocontadre.Setcod_cta_ref(const Value: Boolean);   
begin                
  Fcod_cta_ref := Value;   
end;                 

procedure TModelERPplanocontadre.Setcnpj_est(const Value: Boolean);   
begin                
  Fcnpj_est := Value;   
end;                 


end.
