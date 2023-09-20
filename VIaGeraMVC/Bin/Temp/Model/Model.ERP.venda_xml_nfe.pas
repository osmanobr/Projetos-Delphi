unit Model.ERP.venda_xml;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPvendaxml = class(TModelBase)

private
    Fid : Integer;
    Fid_venda : Integer;
    Fnfe : indefinido;
    Fxml : indefinido;
    Fpendente : Boolean;
    Ffalha : indefinido;
    Fclick : Boolean;
    Ftipo : Integer;
    Fenviado_servidor : Boolean;
    Fid_venda_referencia : Integer;
    Fid_devolucao_referencia : Integer;
    Fid_venda_entrega : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_venda(const Value: Integer);
    procedure Setnfe(const Value: indefinido);
    procedure Setxml(const Value: indefinido);
    procedure Setpendente(const Value: Boolean);
    procedure Setfalha(const Value: indefinido);
    procedure Setclick(const Value: Boolean);
    procedure Settipo(const Value: Integer);
    procedure Setenviado_servidor(const Value: Boolean);
    procedure Setid_venda_referencia(const Value: Integer);
    procedure Setid_devolucao_referencia(const Value: Integer);
    procedure Setid_venda_entrega(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_venda     : Integer read Fid_venda write Setid_venda;
    property nfe     : indefinido read Fnfe write Setnfe;
    property xml     : indefinido read Fxml write Setxml;
    property pendente     : Boolean read Fpendente write Setpendente;
    property falha     : indefinido read Ffalha write Setfalha;
    property click     : Boolean read Fclick write Setclick;
    property tipo     : Integer read Ftipo write Settipo;
    property enviado_servidor     : Boolean read Fenviado_servidor write Setenviado_servidor;
    property id_venda_referencia     : Integer read Fid_venda_referencia write Setid_venda_referencia;
    property id_devolucao_referencia     : Integer read Fid_devolucao_referencia write Setid_devolucao_referencia;
    property id_venda_entrega     : Integer read Fid_venda_entrega write Setid_venda_entrega;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPvendaxml.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPvendaxml) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPvendaxml(Model).id;
Self.Fid_venda         := TModelERPvendaxml(Model).id_venda;
Self.Fnfe         := TModelERPvendaxml(Model).nfe;
Self.Fxml         := TModelERPvendaxml(Model).xml;
Self.Fpendente         := TModelERPvendaxml(Model).pendente;
Self.Ffalha         := TModelERPvendaxml(Model).falha;
Self.Fclick         := TModelERPvendaxml(Model).click;
Self.Ftipo         := TModelERPvendaxml(Model).tipo;
Self.Fenviado_servidor         := TModelERPvendaxml(Model).enviado_servidor;
Self.Fid_venda_referencia         := TModelERPvendaxml(Model).id_venda_referencia;
Self.Fid_devolucao_referencia         := TModelERPvendaxml(Model).id_devolucao_referencia;
Self.Fid_venda_entrega         := TModelERPvendaxml(Model).id_venda_entrega;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPvendaxml.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPvendaxml.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPvendaxml.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPvendaxml.Setid_venda(const Value: Boolean);   
begin                
  Fid_venda := Value;   
end;                 

procedure TModelERPvendaxml.Setnfe(const Value: Boolean);   
begin                
  Fnfe := Value;   
end;                 

procedure TModelERPvendaxml.Setxml(const Value: Boolean);   
begin                
  Fxml := Value;   
end;                 

procedure TModelERPvendaxml.Setpendente(const Value: Boolean);   
begin                
  Fpendente := Value;   
end;                 

procedure TModelERPvendaxml.Setfalha(const Value: Boolean);   
begin                
  Ffalha := Value;   
end;                 

procedure TModelERPvendaxml.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPvendaxml.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPvendaxml.Setenviado_servidor(const Value: Boolean);   
begin                
  Fenviado_servidor := Value;   
end;                 

procedure TModelERPvendaxml.Setid_venda_referencia(const Value: Boolean);   
begin                
  Fid_venda_referencia := Value;   
end;                 

procedure TModelERPvendaxml.Setid_devolucao_referencia(const Value: Boolean);   
begin                
  Fid_devolucao_referencia := Value;   
end;                 

procedure TModelERPvendaxml.Setid_venda_entrega(const Value: Boolean);   
begin                
  Fid_venda_entrega := Value;   
end;                 


end.
