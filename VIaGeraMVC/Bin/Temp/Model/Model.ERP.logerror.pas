unit Model.ERP.log;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPlog = class(TModelBase)

private
    Fid : Integer;
    Fid_terminal : Integer;
    Flog : indefinido;
    Fsigla : WideString;
    Fdatahora : indefinido;
    Floja : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_terminal(const Value: Integer);
    procedure Setlog(const Value: indefinido);
    procedure Setsigla(const Value: WideString);
    procedure Setdatahora(const Value: indefinido);
    procedure Setloja(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_terminal     : Integer read Fid_terminal write Setid_terminal;
    property log     : indefinido read Flog write Setlog;
    property sigla     : WideString read Fsigla write Setsigla;
    property datahora     : indefinido read Fdatahora write Setdatahora;
    property loja     : Integer read Floja write Setloja;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPlog.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPlog) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPlog(Model).id;
Self.Fid_terminal         := TModelERPlog(Model).id_terminal;
Self.Flog         := TModelERPlog(Model).log;
Self.Fsigla         := TModelERPlog(Model).sigla;
Self.Fdatahora         := TModelERPlog(Model).datahora;
Self.Floja         := TModelERPlog(Model).loja;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPlog.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPlog.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPlog.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPlog.Setid_terminal(const Value: Boolean);   
begin                
  Fid_terminal := Value;   
end;                 

procedure TModelERPlog.Setlog(const Value: Boolean);   
begin                
  Flog := Value;   
end;                 

procedure TModelERPlog.Setsigla(const Value: Boolean);   
begin                
  Fsigla := Value;   
end;                 

procedure TModelERPlog.Setdatahora(const Value: Boolean);   
begin                
  Fdatahora := Value;   
end;                 

procedure TModelERPlog.Setloja(const Value: Boolean);   
begin                
  Floja := Value;   
end;                 


end.
