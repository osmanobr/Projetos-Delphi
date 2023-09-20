unit Model.ERP.controle_manual_medicamento;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcontrolemanualmedicamento = class(TModelBase)

private
    Fid : Integer;
    Fid_venda : Integer;
    Fnf : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_venda(const Value: Integer);
    procedure Setnf(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_venda     : Integer read Fid_venda write Setid_venda;
    property nf     : WideString read Fnf write Setnf;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcontrolemanualmedicamento.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcontrolemanualmedicamento) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcontrolemanualmedicamento(Model).id;
Self.Fid_venda         := TModelERPcontrolemanualmedicamento(Model).id_venda;
Self.Fnf         := TModelERPcontrolemanualmedicamento(Model).nf;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcontrolemanualmedicamento.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcontrolemanualmedicamento.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcontrolemanualmedicamento.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcontrolemanualmedicamento.Setid_venda(const Value: Boolean);   
begin                
  Fid_venda := Value;   
end;                 

procedure TModelERPcontrolemanualmedicamento.Setnf(const Value: Boolean);   
begin                
  Fnf := Value;   
end;                 


end.
