unit Model.ERP.pre_venda;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPprevenda = class(TModelBase)

private
    Fid : Integer;
    Fnome : indefinido;
    Fregistro : indefinido;
    Fconselho : indefinido;
    Fuf : indefinido;
    Fclick : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setnome(const Value: indefinido);
    procedure Setregistro(const Value: indefinido);
    procedure Setconselho(const Value: indefinido);
    procedure Setuf(const Value: indefinido);
    procedure Setclick(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property nome     : indefinido read Fnome write Setnome;
    property registro     : indefinido read Fregistro write Setregistro;
    property conselho     : indefinido read Fconselho write Setconselho;
    property uf     : indefinido read Fuf write Setuf;
    property click     : Boolean read Fclick write Setclick;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPprevenda.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPprevenda) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPprevenda(Model).id;
Self.Fnome         := TModelERPprevenda(Model).nome;
Self.Fregistro         := TModelERPprevenda(Model).registro;
Self.Fconselho         := TModelERPprevenda(Model).conselho;
Self.Fuf         := TModelERPprevenda(Model).uf;
Self.Fclick         := TModelERPprevenda(Model).click;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPprevenda.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPprevenda.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPprevenda.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPprevenda.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPprevenda.Setregistro(const Value: Boolean);   
begin                
  Fregistro := Value;   
end;                 

procedure TModelERPprevenda.Setconselho(const Value: Boolean);   
begin                
  Fconselho := Value;   
end;                 

procedure TModelERPprevenda.Setuf(const Value: Boolean);   
begin                
  Fuf := Value;   
end;                 

procedure TModelERPprevenda.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 


end.
