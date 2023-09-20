unit Model.ERP.acrescimo_frete;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPacrescimofrete = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_funcionario : Integer;
    Fmotivo : WideString;
    Fdescriciao : indefinido;
    Fdata : TDateTime;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_funcionario(const Value: Integer);
    procedure Setmotivo(const Value: WideString);
    procedure Setdescriciao(const Value: indefinido);
    procedure Setdata(const Value: TDateTime);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_funcionario     : Integer read Fid_funcionario write Setid_funcionario;
    property motivo     : WideString read Fmotivo write Setmotivo;
    property descriciao     : indefinido read Fdescriciao write Setdescriciao;
    property data     : TDateTime read Fdata write Setdata;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPacrescimofrete.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPacrescimofrete) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPacrescimofrete(Model).id;
Self.Fid_empresa         := TModelERPacrescimofrete(Model).id_empresa;
Self.Fid_funcionario         := TModelERPacrescimofrete(Model).id_funcionario;
Self.Fmotivo         := TModelERPacrescimofrete(Model).motivo;
Self.Fdescriciao         := TModelERPacrescimofrete(Model).descriciao;
Self.Fdata         := TModelERPacrescimofrete(Model).data;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPacrescimofrete.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPacrescimofrete.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPacrescimofrete.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPacrescimofrete.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPacrescimofrete.Setid_funcionario(const Value: Boolean);   
begin                
  Fid_funcionario := Value;   
end;                 

procedure TModelERPacrescimofrete.Setmotivo(const Value: Boolean);   
begin                
  Fmotivo := Value;   
end;                 

procedure TModelERPacrescimofrete.Setdescriciao(const Value: Boolean);   
begin                
  Fdescriciao := Value;   
end;                 

procedure TModelERPacrescimofrete.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 


end.
