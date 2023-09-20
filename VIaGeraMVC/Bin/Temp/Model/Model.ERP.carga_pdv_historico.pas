unit Model.ERP.carga_pdv_controle;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcargapdvcontrole = class(TModelBase)

private
    Fid : Integer;
    Fid_carga_pdv_controle : Integer;
    Fid_produto : Integer;
    Fpreco_anterior : Double;
    Fpreco_venda : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_carga_pdv_controle(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setpreco_anterior(const Value: Double);
    procedure Setpreco_venda(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_carga_pdv_controle     : Integer read Fid_carga_pdv_controle write Setid_carga_pdv_controle;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property preco_anterior     : Double read Fpreco_anterior write Setpreco_anterior;
    property preco_venda     : Double read Fpreco_venda write Setpreco_venda;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcargapdvcontrole.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcargapdvcontrole) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcargapdvcontrole(Model).id;
Self.Fid_carga_pdv_controle         := TModelERPcargapdvcontrole(Model).id_carga_pdv_controle;
Self.Fid_produto         := TModelERPcargapdvcontrole(Model).id_produto;
Self.Fpreco_anterior         := TModelERPcargapdvcontrole(Model).preco_anterior;
Self.Fpreco_venda         := TModelERPcargapdvcontrole(Model).preco_venda;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcargapdvcontrole.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcargapdvcontrole.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcargapdvcontrole.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcargapdvcontrole.Setid_carga_pdv_controle(const Value: Boolean);   
begin                
  Fid_carga_pdv_controle := Value;   
end;                 

procedure TModelERPcargapdvcontrole.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPcargapdvcontrole.Setpreco_anterior(const Value: Boolean);   
begin                
  Fpreco_anterior := Value;   
end;                 

procedure TModelERPcargapdvcontrole.Setpreco_venda(const Value: Boolean);   
begin                
  Fpreco_venda := Value;   
end;                 


end.
