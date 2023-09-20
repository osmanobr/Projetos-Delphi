unit Model.ERP.controle_envio_email_anexo;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcontroleenvioemailanexo = class(TModelBase)

private
    Fid : Integer;
    Flog : indefinido;
    Fid_venda_entrega : Integer;
    Fid_devolucao : Integer;
    Fid_venda_xml : Integer;
    Fid_venda_xml_nfe : Integer;
    Fid_venda_cancelada : Integer;
    Fsolucionado : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setlog(const Value: indefinido);
    procedure Setid_venda_entrega(const Value: Integer);
    procedure Setid_devolucao(const Value: Integer);
    procedure Setid_venda_xml(const Value: Integer);
    procedure Setid_venda_xml_nfe(const Value: Integer);
    procedure Setid_venda_cancelada(const Value: Integer);
    procedure Setsolucionado(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property log     : indefinido read Flog write Setlog;
    property id_venda_entrega     : Integer read Fid_venda_entrega write Setid_venda_entrega;
    property id_devolucao     : Integer read Fid_devolucao write Setid_devolucao;
    property id_venda_xml     : Integer read Fid_venda_xml write Setid_venda_xml;
    property id_venda_xml_nfe     : Integer read Fid_venda_xml_nfe write Setid_venda_xml_nfe;
    property id_venda_cancelada     : Integer read Fid_venda_cancelada write Setid_venda_cancelada;
    property solucionado     : Boolean read Fsolucionado write Setsolucionado;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcontroleenvioemailanexo.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcontroleenvioemailanexo) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcontroleenvioemailanexo(Model).id;
Self.Flog         := TModelERPcontroleenvioemailanexo(Model).log;
Self.Fid_venda_entrega         := TModelERPcontroleenvioemailanexo(Model).id_venda_entrega;
Self.Fid_devolucao         := TModelERPcontroleenvioemailanexo(Model).id_devolucao;
Self.Fid_venda_xml         := TModelERPcontroleenvioemailanexo(Model).id_venda_xml;
Self.Fid_venda_xml_nfe         := TModelERPcontroleenvioemailanexo(Model).id_venda_xml_nfe;
Self.Fid_venda_cancelada         := TModelERPcontroleenvioemailanexo(Model).id_venda_cancelada;
Self.Fsolucionado         := TModelERPcontroleenvioemailanexo(Model).solucionado;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcontroleenvioemailanexo.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcontroleenvioemailanexo.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcontroleenvioemailanexo.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcontroleenvioemailanexo.Setlog(const Value: Boolean);   
begin                
  Flog := Value;   
end;                 

procedure TModelERPcontroleenvioemailanexo.Setid_venda_entrega(const Value: Boolean);   
begin                
  Fid_venda_entrega := Value;   
end;                 

procedure TModelERPcontroleenvioemailanexo.Setid_devolucao(const Value: Boolean);   
begin                
  Fid_devolucao := Value;   
end;                 

procedure TModelERPcontroleenvioemailanexo.Setid_venda_xml(const Value: Boolean);   
begin                
  Fid_venda_xml := Value;   
end;                 

procedure TModelERPcontroleenvioemailanexo.Setid_venda_xml_nfe(const Value: Boolean);   
begin                
  Fid_venda_xml_nfe := Value;   
end;                 

procedure TModelERPcontroleenvioemailanexo.Setid_venda_cancelada(const Value: Boolean);   
begin                
  Fid_venda_cancelada := Value;   
end;                 

procedure TModelERPcontroleenvioemailanexo.Setsolucionado(const Value: Boolean);   
begin                
  Fsolucionado := Value;   
end;                 


end.
