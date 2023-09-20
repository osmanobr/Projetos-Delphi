unit Model.ERP.dados_boleto;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPdadosboleto = class(TModelBase)

private
    Fid : Integer;
    Fid_devolucao : Integer;
    Fid_empresa : Integer;
    Fnumero : WideString;
    Fdata : TDateTime;
    Flocal_desembarque : WideString;
    Fuf_desembarque : WideString;
    Fdata_desembarque : TDateTime;
    Fcodigo_exportador : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_devolucao(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setnumero(const Value: WideString);
    procedure Setdata(const Value: TDateTime);
    procedure Setlocal_desembarque(const Value: WideString);
    procedure Setuf_desembarque(const Value: WideString);
    procedure Setdata_desembarque(const Value: TDateTime);
    procedure Setcodigo_exportador(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_devolucao     : Integer read Fid_devolucao write Setid_devolucao;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property numero     : WideString read Fnumero write Setnumero;
    property data     : TDateTime read Fdata write Setdata;
    property local_desembarque     : WideString read Flocal_desembarque write Setlocal_desembarque;
    property uf_desembarque     : WideString read Fuf_desembarque write Setuf_desembarque;
    property data_desembarque     : TDateTime read Fdata_desembarque write Setdata_desembarque;
    property codigo_exportador     : WideString read Fcodigo_exportador write Setcodigo_exportador;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPdadosboleto.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPdadosboleto) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPdadosboleto(Model).id;
Self.Fid_devolucao         := TModelERPdadosboleto(Model).id_devolucao;
Self.Fid_empresa         := TModelERPdadosboleto(Model).id_empresa;
Self.Fnumero         := TModelERPdadosboleto(Model).numero;
Self.Fdata         := TModelERPdadosboleto(Model).data;
Self.Flocal_desembarque         := TModelERPdadosboleto(Model).local_desembarque;
Self.Fuf_desembarque         := TModelERPdadosboleto(Model).uf_desembarque;
Self.Fdata_desembarque         := TModelERPdadosboleto(Model).data_desembarque;
Self.Fcodigo_exportador         := TModelERPdadosboleto(Model).codigo_exportador;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPdadosboleto.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPdadosboleto.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPdadosboleto.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPdadosboleto.Setid_devolucao(const Value: Boolean);   
begin                
  Fid_devolucao := Value;   
end;                 

procedure TModelERPdadosboleto.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPdadosboleto.Setnumero(const Value: Boolean);   
begin                
  Fnumero := Value;   
end;                 

procedure TModelERPdadosboleto.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPdadosboleto.Setlocal_desembarque(const Value: Boolean);   
begin                
  Flocal_desembarque := Value;   
end;                 

procedure TModelERPdadosboleto.Setuf_desembarque(const Value: Boolean);   
begin                
  Fuf_desembarque := Value;   
end;                 

procedure TModelERPdadosboleto.Setdata_desembarque(const Value: Boolean);   
begin                
  Fdata_desembarque := Value;   
end;                 

procedure TModelERPdadosboleto.Setcodigo_exportador(const Value: Boolean);   
begin                
  Fcodigo_exportador := Value;   
end;                 


end.
