unit Model.ERP.posto_encerrante_itens;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPpostoencerranteitens = class(TModelBase)

private
    Fid : Integer;
    Fid_encerrante : Integer;
    Fnota : indefinido;
    Fid_tanque : Integer;
    Fquantidade : Double;
    Fid_compra : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_encerrante(const Value: Integer);
    procedure Setnota(const Value: indefinido);
    procedure Setid_tanque(const Value: Integer);
    procedure Setquantidade(const Value: Double);
    procedure Setid_compra(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_encerrante     : Integer read Fid_encerrante write Setid_encerrante;
    property nota     : indefinido read Fnota write Setnota;
    property id_tanque     : Integer read Fid_tanque write Setid_tanque;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property id_compra     : Integer read Fid_compra write Setid_compra;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPpostoencerranteitens.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPpostoencerranteitens) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPpostoencerranteitens(Model).id;
Self.Fid_encerrante         := TModelERPpostoencerranteitens(Model).id_encerrante;
Self.Fnota         := TModelERPpostoencerranteitens(Model).nota;
Self.Fid_tanque         := TModelERPpostoencerranteitens(Model).id_tanque;
Self.Fquantidade         := TModelERPpostoencerranteitens(Model).quantidade;
Self.Fid_compra         := TModelERPpostoencerranteitens(Model).id_compra;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPpostoencerranteitens.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPpostoencerranteitens.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPpostoencerranteitens.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPpostoencerranteitens.Setid_encerrante(const Value: Boolean);   
begin                
  Fid_encerrante := Value;   
end;                 

procedure TModelERPpostoencerranteitens.Setnota(const Value: Boolean);   
begin                
  Fnota := Value;   
end;                 

procedure TModelERPpostoencerranteitens.Setid_tanque(const Value: Boolean);   
begin                
  Fid_tanque := Value;   
end;                 

procedure TModelERPpostoencerranteitens.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPpostoencerranteitens.Setid_compra(const Value: Boolean);   
begin                
  Fid_compra := Value;   
end;                 


end.
