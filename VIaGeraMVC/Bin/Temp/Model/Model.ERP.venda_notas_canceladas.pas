unit Model.ERP.venda_item_serie;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPvendaitemserie = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_venda : Integer;
    Fid_devolucao : Integer;
    Fid_venda_entrega : Integer;
    Fnfe : WideString;
    Fnfce : WideString;
    Fprotocolo_venda : WideString;
    Fprotocolo_cancelamento : WideString;
    Fdatahora : indefinido;
    Fenviado_servidor : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_venda(const Value: Integer);
    procedure Setid_devolucao(const Value: Integer);
    procedure Setid_venda_entrega(const Value: Integer);
    procedure Setnfe(const Value: WideString);
    procedure Setnfce(const Value: WideString);
    procedure Setprotocolo_venda(const Value: WideString);
    procedure Setprotocolo_cancelamento(const Value: WideString);
    procedure Setdatahora(const Value: indefinido);
    procedure Setenviado_servidor(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_venda     : Integer read Fid_venda write Setid_venda;
    property id_devolucao     : Integer read Fid_devolucao write Setid_devolucao;
    property id_venda_entrega     : Integer read Fid_venda_entrega write Setid_venda_entrega;
    property nfe     : WideString read Fnfe write Setnfe;
    property nfce     : WideString read Fnfce write Setnfce;
    property protocolo_venda     : WideString read Fprotocolo_venda write Setprotocolo_venda;
    property protocolo_cancelamento     : WideString read Fprotocolo_cancelamento write Setprotocolo_cancelamento;
    property datahora     : indefinido read Fdatahora write Setdatahora;
    property enviado_servidor     : Boolean read Fenviado_servidor write Setenviado_servidor;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPvendaitemserie.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPvendaitemserie) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPvendaitemserie(Model).id;
Self.Fid_empresa         := TModelERPvendaitemserie(Model).id_empresa;
Self.Fid_venda         := TModelERPvendaitemserie(Model).id_venda;
Self.Fid_devolucao         := TModelERPvendaitemserie(Model).id_devolucao;
Self.Fid_venda_entrega         := TModelERPvendaitemserie(Model).id_venda_entrega;
Self.Fnfe         := TModelERPvendaitemserie(Model).nfe;
Self.Fnfce         := TModelERPvendaitemserie(Model).nfce;
Self.Fprotocolo_venda         := TModelERPvendaitemserie(Model).protocolo_venda;
Self.Fprotocolo_cancelamento         := TModelERPvendaitemserie(Model).protocolo_cancelamento;
Self.Fdatahora         := TModelERPvendaitemserie(Model).datahora;
Self.Fenviado_servidor         := TModelERPvendaitemserie(Model).enviado_servidor;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPvendaitemserie.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPvendaitemserie.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPvendaitemserie.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPvendaitemserie.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPvendaitemserie.Setid_venda(const Value: Boolean);   
begin                
  Fid_venda := Value;   
end;                 

procedure TModelERPvendaitemserie.Setid_devolucao(const Value: Boolean);   
begin                
  Fid_devolucao := Value;   
end;                 

procedure TModelERPvendaitemserie.Setid_venda_entrega(const Value: Boolean);   
begin                
  Fid_venda_entrega := Value;   
end;                 

procedure TModelERPvendaitemserie.Setnfe(const Value: Boolean);   
begin                
  Fnfe := Value;   
end;                 

procedure TModelERPvendaitemserie.Setnfce(const Value: Boolean);   
begin                
  Fnfce := Value;   
end;                 

procedure TModelERPvendaitemserie.Setprotocolo_venda(const Value: Boolean);   
begin                
  Fprotocolo_venda := Value;   
end;                 

procedure TModelERPvendaitemserie.Setprotocolo_cancelamento(const Value: Boolean);   
begin                
  Fprotocolo_cancelamento := Value;   
end;                 

procedure TModelERPvendaitemserie.Setdatahora(const Value: Boolean);   
begin                
  Fdatahora := Value;   
end;                 

procedure TModelERPvendaitemserie.Setenviado_servidor(const Value: Boolean);   
begin                
  Fenviado_servidor := Value;   
end;                 


end.
