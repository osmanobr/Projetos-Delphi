unit Model.ERP.nota_devol;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPnotadevol = class(TModelBase)

private
    Fid : Integer;
    Fdata_inicio : TDateTime;
    Fdata_final : TDateTime;
    Fid_funcionario : Integer;
    Flote : indefinido;
    Fobs : indefinido;
    Fgerado : indefinido;
    Fclick : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setdata_inicio(const Value: TDateTime);
    procedure Setdata_final(const Value: TDateTime);
    procedure Setid_funcionario(const Value: Integer);
    procedure Setlote(const Value: indefinido);
    procedure Setobs(const Value: indefinido);
    procedure Setgerado(const Value: indefinido);
    procedure Setclick(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property data_inicio     : TDateTime read Fdata_inicio write Setdata_inicio;
    property data_final     : TDateTime read Fdata_final write Setdata_final;
    property id_funcionario     : Integer read Fid_funcionario write Setid_funcionario;
    property lote     : indefinido read Flote write Setlote;
    property obs     : indefinido read Fobs write Setobs;
    property gerado     : indefinido read Fgerado write Setgerado;
    property click     : Boolean read Fclick write Setclick;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPnotadevol.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPnotadevol) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPnotadevol(Model).id;
Self.Fdata_inicio         := TModelERPnotadevol(Model).data_inicio;
Self.Fdata_final         := TModelERPnotadevol(Model).data_final;
Self.Fid_funcionario         := TModelERPnotadevol(Model).id_funcionario;
Self.Flote         := TModelERPnotadevol(Model).lote;
Self.Fobs         := TModelERPnotadevol(Model).obs;
Self.Fgerado         := TModelERPnotadevol(Model).gerado;
Self.Fclick         := TModelERPnotadevol(Model).click;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPnotadevol.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPnotadevol.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPnotadevol.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPnotadevol.Setdata_inicio(const Value: Boolean);   
begin                
  Fdata_inicio := Value;   
end;                 

procedure TModelERPnotadevol.Setdata_final(const Value: Boolean);   
begin                
  Fdata_final := Value;   
end;                 

procedure TModelERPnotadevol.Setid_funcionario(const Value: Boolean);   
begin                
  Fid_funcionario := Value;   
end;                 

procedure TModelERPnotadevol.Setlote(const Value: Boolean);   
begin                
  Flote := Value;   
end;                 

procedure TModelERPnotadevol.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 

procedure TModelERPnotadevol.Setgerado(const Value: Boolean);   
begin                
  Fgerado := Value;   
end;                 

procedure TModelERPnotadevol.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 


end.
