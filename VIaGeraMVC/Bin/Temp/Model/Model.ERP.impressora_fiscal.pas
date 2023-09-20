unit Model.ERP.impressora;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPimpressora = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fnome : WideString;
    Fporta : WideString;
    Fserie : WideString;
    Fid_caixa : Integer;
    Fmodelo : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setporta(const Value: WideString);
    procedure Setserie(const Value: WideString);
    procedure Setid_caixa(const Value: Integer);
    procedure Setmodelo(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property nome     : WideString read Fnome write Setnome;
    property porta     : WideString read Fporta write Setporta;
    property serie     : WideString read Fserie write Setserie;
    property id_caixa     : Integer read Fid_caixa write Setid_caixa;
    property modelo     : WideString read Fmodelo write Setmodelo;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPimpressora.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPimpressora) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPimpressora(Model).id;
Self.Fid_empresa         := TModelERPimpressora(Model).id_empresa;
Self.Fnome         := TModelERPimpressora(Model).nome;
Self.Fporta         := TModelERPimpressora(Model).porta;
Self.Fserie         := TModelERPimpressora(Model).serie;
Self.Fid_caixa         := TModelERPimpressora(Model).id_caixa;
Self.Fmodelo         := TModelERPimpressora(Model).modelo;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPimpressora.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPimpressora.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPimpressora.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPimpressora.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPimpressora.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPimpressora.Setporta(const Value: Boolean);   
begin                
  Fporta := Value;   
end;                 

procedure TModelERPimpressora.Setserie(const Value: Boolean);   
begin                
  Fserie := Value;   
end;                 

procedure TModelERPimpressora.Setid_caixa(const Value: Boolean);   
begin                
  Fid_caixa := Value;   
end;                 

procedure TModelERPimpressora.Setmodelo(const Value: Boolean);   
begin                
  Fmodelo := Value;   
end;                 


end.
