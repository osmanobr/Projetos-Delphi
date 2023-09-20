unit Model.ERP.balanco_uniao_item;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPbalancouniaoitem = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fnome : WideString;
    Fcodigo : WideString;
    Fclick : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setcodigo(const Value: WideString);
    procedure Setclick(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property nome     : WideString read Fnome write Setnome;
    property codigo     : WideString read Fcodigo write Setcodigo;
    property click     : Boolean read Fclick write Setclick;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPbalancouniaoitem.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPbalancouniaoitem) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPbalancouniaoitem(Model).id;
Self.Fid_empresa         := TModelERPbalancouniaoitem(Model).id_empresa;
Self.Fnome         := TModelERPbalancouniaoitem(Model).nome;
Self.Fcodigo         := TModelERPbalancouniaoitem(Model).codigo;
Self.Fclick         := TModelERPbalancouniaoitem(Model).click;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPbalancouniaoitem.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPbalancouniaoitem.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPbalancouniaoitem.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPbalancouniaoitem.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPbalancouniaoitem.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPbalancouniaoitem.Setcodigo(const Value: Boolean);   
begin                
  Fcodigo := Value;   
end;                 

procedure TModelERPbalancouniaoitem.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 


end.
