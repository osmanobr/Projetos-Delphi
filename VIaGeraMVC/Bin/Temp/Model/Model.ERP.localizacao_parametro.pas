unit Model.ERP.locacao_troca_item;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPlocacaotrocaitem = class(TModelBase)

private
    Fid : Integer;
    Flocalizacao : WideString;

    procedure Setid(const Value: Integer);
    procedure Setlocalizacao(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property localizacao     : WideString read Flocalizacao write Setlocalizacao;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPlocacaotrocaitem.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPlocacaotrocaitem) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPlocacaotrocaitem(Model).id;
Self.Flocalizacao         := TModelERPlocacaotrocaitem(Model).localizacao;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPlocacaotrocaitem.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPlocacaotrocaitem.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPlocacaotrocaitem.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPlocacaotrocaitem.Setlocalizacao(const Value: Boolean);   
begin                
  Flocalizacao := Value;   
end;                 


end.
