unit Model.ERP.venda_uniao_itens;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPvendauniaoitens = class(TModelBase)

private
    Fid : Integer;
    Fid_venda : Integer;
    Fid_movimento : Integer;
    Fid_cupons : Integer;
    Fnfe : WideString;
    Fnfce : WideString;
    Fcaixa : Integer;
    Floja : Integer;
    Fxml : indefinido;
    Fobs : indefinido;
    Fxml_off : indefinido;
    Fcontingencia : Boolean;
    Fassociacao : Boolean;
    Fcte : WideString;
    Fconsulta_seq : indefinido;
    Fenviar_seq : indefinido;
    Fconsulta_hora : indefinido;
    Fenviar_hora : indefinido;
    Fxml_md5 : WideString;
    Fxml_off_md5 : WideString;
    Fvalidar_contingencia : Boolean;
    Fvalidar_protocolo : indefinido;
    Fdata_protocolo : TDateTime;
    Fclick : Boolean;
    Fenviado_servidor : Boolean;
    Fretirado_monitor : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_venda(const Value: Integer);
    procedure Setid_movimento(const Value: Integer);
    procedure Setid_cupons(const Value: Integer);
    procedure Setnfe(const Value: WideString);
    procedure Setnfce(const Value: WideString);
    procedure Setcaixa(const Value: Integer);
    procedure Setloja(const Value: Integer);
    procedure Setxml(const Value: indefinido);
    procedure Setobs(const Value: indefinido);
    procedure Setxml_off(const Value: indefinido);
    procedure Setcontingencia(const Value: Boolean);
    procedure Setassociacao(const Value: Boolean);
    procedure Setcte(const Value: WideString);
    procedure Setconsulta_seq(const Value: indefinido);
    procedure Setenviar_seq(const Value: indefinido);
    procedure Setconsulta_hora(const Value: indefinido);
    procedure Setenviar_hora(const Value: indefinido);
    procedure Setxml_md5(const Value: WideString);
    procedure Setxml_off_md5(const Value: WideString);
    procedure Setvalidar_contingencia(const Value: Boolean);
    procedure Setvalidar_protocolo(const Value: indefinido);
    procedure Setdata_protocolo(const Value: TDateTime);
    procedure Setclick(const Value: Boolean);
    procedure Setenviado_servidor(const Value: Boolean);
    procedure Setretirado_monitor(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_venda     : Integer read Fid_venda write Setid_venda;
    property id_movimento     : Integer read Fid_movimento write Setid_movimento;
    property id_cupons     : Integer read Fid_cupons write Setid_cupons;
    property nfe     : WideString read Fnfe write Setnfe;
    property nfce     : WideString read Fnfce write Setnfce;
    property caixa     : Integer read Fcaixa write Setcaixa;
    property loja     : Integer read Floja write Setloja;
    property xml     : indefinido read Fxml write Setxml;
    property obs     : indefinido read Fobs write Setobs;
    property xml_off     : indefinido read Fxml_off write Setxml_off;
    property contingencia     : Boolean read Fcontingencia write Setcontingencia;
    property associacao     : Boolean read Fassociacao write Setassociacao;
    property cte     : WideString read Fcte write Setcte;
    property consulta_seq     : indefinido read Fconsulta_seq write Setconsulta_seq;
    property enviar_seq     : indefinido read Fenviar_seq write Setenviar_seq;
    property consulta_hora     : indefinido read Fconsulta_hora write Setconsulta_hora;
    property enviar_hora     : indefinido read Fenviar_hora write Setenviar_hora;
    property xml_md5     : WideString read Fxml_md5 write Setxml_md5;
    property xml_off_md5     : WideString read Fxml_off_md5 write Setxml_off_md5;
    property validar_contingencia     : Boolean read Fvalidar_contingencia write Setvalidar_contingencia;
    property validar_protocolo     : indefinido read Fvalidar_protocolo write Setvalidar_protocolo;
    property data_protocolo     : TDateTime read Fdata_protocolo write Setdata_protocolo;
    property click     : Boolean read Fclick write Setclick;
    property enviado_servidor     : Boolean read Fenviado_servidor write Setenviado_servidor;
    property retirado_monitor     : Boolean read Fretirado_monitor write Setretirado_monitor;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPvendauniaoitens.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPvendauniaoitens) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPvendauniaoitens(Model).id;
Self.Fid_venda         := TModelERPvendauniaoitens(Model).id_venda;
Self.Fid_movimento         := TModelERPvendauniaoitens(Model).id_movimento;
Self.Fid_cupons         := TModelERPvendauniaoitens(Model).id_cupons;
Self.Fnfe         := TModelERPvendauniaoitens(Model).nfe;
Self.Fnfce         := TModelERPvendauniaoitens(Model).nfce;
Self.Fcaixa         := TModelERPvendauniaoitens(Model).caixa;
Self.Floja         := TModelERPvendauniaoitens(Model).loja;
Self.Fxml         := TModelERPvendauniaoitens(Model).xml;
Self.Fobs         := TModelERPvendauniaoitens(Model).obs;
Self.Fxml_off         := TModelERPvendauniaoitens(Model).xml_off;
Self.Fcontingencia         := TModelERPvendauniaoitens(Model).contingencia;
Self.Fassociacao         := TModelERPvendauniaoitens(Model).associacao;
Self.Fcte         := TModelERPvendauniaoitens(Model).cte;
Self.Fconsulta_seq         := TModelERPvendauniaoitens(Model).consulta_seq;
Self.Fenviar_seq         := TModelERPvendauniaoitens(Model).enviar_seq;
Self.Fconsulta_hora         := TModelERPvendauniaoitens(Model).consulta_hora;
Self.Fenviar_hora         := TModelERPvendauniaoitens(Model).enviar_hora;
Self.Fxml_md5         := TModelERPvendauniaoitens(Model).xml_md5;
Self.Fxml_off_md5         := TModelERPvendauniaoitens(Model).xml_off_md5;
Self.Fvalidar_contingencia         := TModelERPvendauniaoitens(Model).validar_contingencia;
Self.Fvalidar_protocolo         := TModelERPvendauniaoitens(Model).validar_protocolo;
Self.Fdata_protocolo         := TModelERPvendauniaoitens(Model).data_protocolo;
Self.Fclick         := TModelERPvendauniaoitens(Model).click;
Self.Fenviado_servidor         := TModelERPvendauniaoitens(Model).enviado_servidor;
Self.Fretirado_monitor         := TModelERPvendauniaoitens(Model).retirado_monitor;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPvendauniaoitens.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPvendauniaoitens.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPvendauniaoitens.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPvendauniaoitens.Setid_venda(const Value: Boolean);   
begin                
  Fid_venda := Value;   
end;                 

procedure TModelERPvendauniaoitens.Setid_movimento(const Value: Boolean);   
begin                
  Fid_movimento := Value;   
end;                 

procedure TModelERPvendauniaoitens.Setid_cupons(const Value: Boolean);   
begin                
  Fid_cupons := Value;   
end;                 

procedure TModelERPvendauniaoitens.Setnfe(const Value: Boolean);   
begin                
  Fnfe := Value;   
end;                 

procedure TModelERPvendauniaoitens.Setnfce(const Value: Boolean);   
begin                
  Fnfce := Value;   
end;                 

procedure TModelERPvendauniaoitens.Setcaixa(const Value: Boolean);   
begin                
  Fcaixa := Value;   
end;                 

procedure TModelERPvendauniaoitens.Setloja(const Value: Boolean);   
begin                
  Floja := Value;   
end;                 

procedure TModelERPvendauniaoitens.Setxml(const Value: Boolean);   
begin                
  Fxml := Value;   
end;                 

procedure TModelERPvendauniaoitens.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 

procedure TModelERPvendauniaoitens.Setxml_off(const Value: Boolean);   
begin                
  Fxml_off := Value;   
end;                 

procedure TModelERPvendauniaoitens.Setcontingencia(const Value: Boolean);   
begin                
  Fcontingencia := Value;   
end;                 

procedure TModelERPvendauniaoitens.Setassociacao(const Value: Boolean);   
begin                
  Fassociacao := Value;   
end;                 

procedure TModelERPvendauniaoitens.Setcte(const Value: Boolean);   
begin                
  Fcte := Value;   
end;                 

procedure TModelERPvendauniaoitens.Setconsulta_seq(const Value: Boolean);   
begin                
  Fconsulta_seq := Value;   
end;                 

procedure TModelERPvendauniaoitens.Setenviar_seq(const Value: Boolean);   
begin                
  Fenviar_seq := Value;   
end;                 

procedure TModelERPvendauniaoitens.Setconsulta_hora(const Value: Boolean);   
begin                
  Fconsulta_hora := Value;   
end;                 

procedure TModelERPvendauniaoitens.Setenviar_hora(const Value: Boolean);   
begin                
  Fenviar_hora := Value;   
end;                 

procedure TModelERPvendauniaoitens.Setxml_md5(const Value: Boolean);   
begin                
  Fxml_md5 := Value;   
end;                 

procedure TModelERPvendauniaoitens.Setxml_off_md5(const Value: Boolean);   
begin                
  Fxml_off_md5 := Value;   
end;                 

procedure TModelERPvendauniaoitens.Setvalidar_contingencia(const Value: Boolean);   
begin                
  Fvalidar_contingencia := Value;   
end;                 

procedure TModelERPvendauniaoitens.Setvalidar_protocolo(const Value: Boolean);   
begin                
  Fvalidar_protocolo := Value;   
end;                 

procedure TModelERPvendauniaoitens.Setdata_protocolo(const Value: Boolean);   
begin                
  Fdata_protocolo := Value;   
end;                 

procedure TModelERPvendauniaoitens.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPvendauniaoitens.Setenviado_servidor(const Value: Boolean);   
begin                
  Fenviado_servidor := Value;   
end;                 

procedure TModelERPvendauniaoitens.Setretirado_monitor(const Value: Boolean);   
begin                
  Fretirado_monitor := Value;   
end;                 


end.
