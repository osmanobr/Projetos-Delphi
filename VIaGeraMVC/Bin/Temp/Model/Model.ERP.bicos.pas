unit Model.ERP.barras;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPbarras = class(TModelBase)

private
    Fid : Integer;
    Fid_produto : Integer;
    Fnome : WideString;
    Fpreco : Double;
    Ftanque : Integer;
    Fbico : WideString;
    Flitros : Double;
    Fstatus : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setpreco(const Value: Double);
    procedure Settanque(const Value: Integer);
    procedure Setbico(const Value: WideString);
    procedure Setlitros(const Value: Double);
    procedure Setstatus(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property nome     : WideString read Fnome write Setnome;
    property preco     : Double read Fpreco write Setpreco;
    property tanque     : Integer read Ftanque write Settanque;
    property bico     : WideString read Fbico write Setbico;
    property litros     : Double read Flitros write Setlitros;
    property status     : WideString read Fstatus write Setstatus;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPbarras.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPbarras) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPbarras(Model).id;
Self.Fid_produto         := TModelERPbarras(Model).id_produto;
Self.Fnome         := TModelERPbarras(Model).nome;
Self.Fpreco         := TModelERPbarras(Model).preco;
Self.Ftanque         := TModelERPbarras(Model).tanque;
Self.Fbico         := TModelERPbarras(Model).bico;
Self.Flitros         := TModelERPbarras(Model).litros;
Self.Fstatus         := TModelERPbarras(Model).status;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPbarras.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPbarras.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPbarras.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPbarras.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPbarras.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPbarras.Setpreco(const Value: Boolean);   
begin                
  Fpreco := Value;   
end;                 

procedure TModelERPbarras.Settanque(const Value: Boolean);   
begin                
  Ftanque := Value;   
end;                 

procedure TModelERPbarras.Setbico(const Value: Boolean);   
begin                
  Fbico := Value;   
end;                 

procedure TModelERPbarras.Setlitros(const Value: Boolean);   
begin                
  Flitros := Value;   
end;                 

procedure TModelERPbarras.Setstatus(const Value: Boolean);   
begin                
  Fstatus := Value;   
end;                 


end.
