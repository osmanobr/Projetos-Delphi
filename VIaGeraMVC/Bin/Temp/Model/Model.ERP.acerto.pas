unit Model.ERP.abastecimento;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPabastecimento = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata_acerto : TDateTime;
    Fmotivo : WideString;
    Fid_usuario : Integer;
    Fclick : Boolean;
    Fgerado : WideString;
    Festoque : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setdata_acerto(const Value: TDateTime);
    procedure Setmotivo(const Value: WideString);
    procedure Setid_usuario(const Value: Integer);
    procedure Setclick(const Value: Boolean);
    procedure Setgerado(const Value: WideString);
    procedure Setestoque(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property data_acerto     : TDateTime read Fdata_acerto write Setdata_acerto;
    property motivo     : WideString read Fmotivo write Setmotivo;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property click     : Boolean read Fclick write Setclick;
    property gerado     : WideString read Fgerado write Setgerado;
    property estoque     : WideString read Festoque write Setestoque;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPabastecimento.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPabastecimento) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPabastecimento(Model).id;
Self.Fid_empresa         := TModelERPabastecimento(Model).id_empresa;
Self.Fdata_acerto         := TModelERPabastecimento(Model).data_acerto;
Self.Fmotivo         := TModelERPabastecimento(Model).motivo;
Self.Fid_usuario         := TModelERPabastecimento(Model).id_usuario;
Self.Fclick         := TModelERPabastecimento(Model).click;
Self.Fgerado         := TModelERPabastecimento(Model).gerado;
Self.Festoque         := TModelERPabastecimento(Model).estoque;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPabastecimento.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPabastecimento.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPabastecimento.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPabastecimento.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPabastecimento.Setdata_acerto(const Value: Boolean);   
begin                
  Fdata_acerto := Value;   
end;                 

procedure TModelERPabastecimento.Setmotivo(const Value: Boolean);   
begin                
  Fmotivo := Value;   
end;                 

procedure TModelERPabastecimento.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPabastecimento.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPabastecimento.Setgerado(const Value: Boolean);   
begin                
  Fgerado := Value;   
end;                 

procedure TModelERPabastecimento.Setestoque(const Value: Boolean);   
begin                
  Festoque := Value;   
end;                 


end.
