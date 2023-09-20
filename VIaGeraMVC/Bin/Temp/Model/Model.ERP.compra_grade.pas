unit Model.ERP.compra_duplicata;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcompraduplicata = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_compra : Integer;
    Fid_compra_item : Integer;
    Fid_produto : Integer;
    Fcor : WideString;
    Ftam : WideString;
    Fquantidade : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_compra(const Value: Integer);
    procedure Setid_compra_item(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setcor(const Value: WideString);
    procedure Settam(const Value: WideString);
    procedure Setquantidade(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_compra     : Integer read Fid_compra write Setid_compra;
    property id_compra_item     : Integer read Fid_compra_item write Setid_compra_item;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property cor     : WideString read Fcor write Setcor;
    property tam     : WideString read Ftam write Settam;
    property quantidade     : Double read Fquantidade write Setquantidade;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcompraduplicata.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcompraduplicata) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcompraduplicata(Model).id;
Self.Fid_empresa         := TModelERPcompraduplicata(Model).id_empresa;
Self.Fid_compra         := TModelERPcompraduplicata(Model).id_compra;
Self.Fid_compra_item         := TModelERPcompraduplicata(Model).id_compra_item;
Self.Fid_produto         := TModelERPcompraduplicata(Model).id_produto;
Self.Fcor         := TModelERPcompraduplicata(Model).cor;
Self.Ftam         := TModelERPcompraduplicata(Model).tam;
Self.Fquantidade         := TModelERPcompraduplicata(Model).quantidade;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcompraduplicata.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcompraduplicata.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcompraduplicata.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcompraduplicata.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPcompraduplicata.Setid_compra(const Value: Boolean);   
begin                
  Fid_compra := Value;   
end;                 

procedure TModelERPcompraduplicata.Setid_compra_item(const Value: Boolean);   
begin                
  Fid_compra_item := Value;   
end;                 

procedure TModelERPcompraduplicata.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPcompraduplicata.Setcor(const Value: Boolean);   
begin                
  Fcor := Value;   
end;                 

procedure TModelERPcompraduplicata.Settam(const Value: Boolean);   
begin                
  Ftam := Value;   
end;                 

procedure TModelERPcompraduplicata.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 


end.
