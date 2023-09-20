unit Model.ERP.fabricacao_insumo;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPfabricacaoinsumo = class(TModelBase)

private
    Fid : Integer;
    Fid_fabricacao : Integer;
    Fprocesso : indefinido;
    Fdata : indefinido;
    Ftempo_duracao : indefinido;
    Ftemperatura : Integer;
    Fcondicoes : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_fabricacao(const Value: Integer);
    procedure Setprocesso(const Value: indefinido);
    procedure Setdata(const Value: indefinido);
    procedure Settempo_duracao(const Value: indefinido);
    procedure Settemperatura(const Value: Integer);
    procedure Setcondicoes(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_fabricacao     : Integer read Fid_fabricacao write Setid_fabricacao;
    property processo     : indefinido read Fprocesso write Setprocesso;
    property data     : indefinido read Fdata write Setdata;
    property tempo_duracao     : indefinido read Ftempo_duracao write Settempo_duracao;
    property temperatura     : Integer read Ftemperatura write Settemperatura;
    property condicoes     : indefinido read Fcondicoes write Setcondicoes;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPfabricacaoinsumo.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPfabricacaoinsumo) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPfabricacaoinsumo(Model).id;
Self.Fid_fabricacao         := TModelERPfabricacaoinsumo(Model).id_fabricacao;
Self.Fprocesso         := TModelERPfabricacaoinsumo(Model).processo;
Self.Fdata         := TModelERPfabricacaoinsumo(Model).data;
Self.Ftempo_duracao         := TModelERPfabricacaoinsumo(Model).tempo_duracao;
Self.Ftemperatura         := TModelERPfabricacaoinsumo(Model).temperatura;
Self.Fcondicoes         := TModelERPfabricacaoinsumo(Model).condicoes;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPfabricacaoinsumo.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPfabricacaoinsumo.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPfabricacaoinsumo.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPfabricacaoinsumo.Setid_fabricacao(const Value: Boolean);   
begin                
  Fid_fabricacao := Value;   
end;                 

procedure TModelERPfabricacaoinsumo.Setprocesso(const Value: Boolean);   
begin                
  Fprocesso := Value;   
end;                 

procedure TModelERPfabricacaoinsumo.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPfabricacaoinsumo.Settempo_duracao(const Value: Boolean);   
begin                
  Ftempo_duracao := Value;   
end;                 

procedure TModelERPfabricacaoinsumo.Settemperatura(const Value: Boolean);   
begin                
  Ftemperatura := Value;   
end;                 

procedure TModelERPfabricacaoinsumo.Setcondicoes(const Value: Boolean);   
begin                
  Fcondicoes := Value;   
end;                 


end.
