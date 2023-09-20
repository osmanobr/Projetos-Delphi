unit Model.ERP.promocao_historico;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPpromocaohistorico = class(TModelBase)

private
    Fid : Integer;
    Fid_promocao : Integer;
    Fid_produto : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_promocao(const Value: Integer);
    procedure Setid_produto(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_promocao     : Integer read Fid_promocao write Setid_promocao;
    property id_produto     : Integer read Fid_produto write Setid_produto;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPpromocaohistorico.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPpromocaohistorico) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPpromocaohistorico(Model).id;
Self.Fid_promocao         := TModelERPpromocaohistorico(Model).id_promocao;
Self.Fid_produto         := TModelERPpromocaohistorico(Model).id_produto;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPpromocaohistorico.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPpromocaohistorico.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPpromocaohistorico.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPpromocaohistorico.Setid_promocao(const Value: Boolean);   
begin                
  Fid_promocao := Value;   
end;                 

procedure TModelERPpromocaohistorico.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 


end.
