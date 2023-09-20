unit Model.ERP.leitura_valores;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPleituravalores = class(TModelBase)

private
    Fid : Integer;
    Fid_cliente : Integer;
    Fcontato : WideString;
    Fdata_instalacao : TDateTime;
    Fdata_mensal : TDateTime;
    Fmensagemid : WideString;
    Fmensagempublic : WideString;
    Fsendmid : indefinido;
    Fsendmpublic : indefinido;
    Fnotifyinsert : indefinido;
    Fnotifyalter : indefinido;
    Fproduto : indefinido;
    Fcode : WideString;
    Fserie : WideString;
    Fparceiro : WideString;
    Fbonus : indefinido;
    Fbloqueio : indefinido;
    Faplicar_alteracao : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setcontato(const Value: WideString);
    procedure Setdata_instalacao(const Value: TDateTime);
    procedure Setdata_mensal(const Value: TDateTime);
    procedure Setmensagemid(const Value: WideString);
    procedure Setmensagempublic(const Value: WideString);
    procedure Setsendmid(const Value: indefinido);
    procedure Setsendmpublic(const Value: indefinido);
    procedure Setnotifyinsert(const Value: indefinido);
    procedure Setnotifyalter(const Value: indefinido);
    procedure Setproduto(const Value: indefinido);
    procedure Setcode(const Value: WideString);
    procedure Setserie(const Value: WideString);
    procedure Setparceiro(const Value: WideString);
    procedure Setbonus(const Value: indefinido);
    procedure Setbloqueio(const Value: indefinido);
    procedure Setaplicar_alteracao(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property contato     : WideString read Fcontato write Setcontato;
    property data_instalacao     : TDateTime read Fdata_instalacao write Setdata_instalacao;
    property data_mensal     : TDateTime read Fdata_mensal write Setdata_mensal;
    property mensagemid     : WideString read Fmensagemid write Setmensagemid;
    property mensagempublic     : WideString read Fmensagempublic write Setmensagempublic;
    property sendmid     : indefinido read Fsendmid write Setsendmid;
    property sendmpublic     : indefinido read Fsendmpublic write Setsendmpublic;
    property notifyinsert     : indefinido read Fnotifyinsert write Setnotifyinsert;
    property notifyalter     : indefinido read Fnotifyalter write Setnotifyalter;
    property produto     : indefinido read Fproduto write Setproduto;
    property code     : WideString read Fcode write Setcode;
    property serie     : WideString read Fserie write Setserie;
    property parceiro     : WideString read Fparceiro write Setparceiro;
    property bonus     : indefinido read Fbonus write Setbonus;
    property bloqueio     : indefinido read Fbloqueio write Setbloqueio;
    property aplicar_alteracao     : indefinido read Faplicar_alteracao write Setaplicar_alteracao;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPleituravalores.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPleituravalores) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPleituravalores(Model).id;
Self.Fid_cliente         := TModelERPleituravalores(Model).id_cliente;
Self.Fcontato         := TModelERPleituravalores(Model).contato;
Self.Fdata_instalacao         := TModelERPleituravalores(Model).data_instalacao;
Self.Fdata_mensal         := TModelERPleituravalores(Model).data_mensal;
Self.Fmensagemid         := TModelERPleituravalores(Model).mensagemid;
Self.Fmensagempublic         := TModelERPleituravalores(Model).mensagempublic;
Self.Fsendmid         := TModelERPleituravalores(Model).sendmid;
Self.Fsendmpublic         := TModelERPleituravalores(Model).sendmpublic;
Self.Fnotifyinsert         := TModelERPleituravalores(Model).notifyinsert;
Self.Fnotifyalter         := TModelERPleituravalores(Model).notifyalter;
Self.Fproduto         := TModelERPleituravalores(Model).produto;
Self.Fcode         := TModelERPleituravalores(Model).code;
Self.Fserie         := TModelERPleituravalores(Model).serie;
Self.Fparceiro         := TModelERPleituravalores(Model).parceiro;
Self.Fbonus         := TModelERPleituravalores(Model).bonus;
Self.Fbloqueio         := TModelERPleituravalores(Model).bloqueio;
Self.Faplicar_alteracao         := TModelERPleituravalores(Model).aplicar_alteracao;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPleituravalores.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPleituravalores.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPleituravalores.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPleituravalores.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPleituravalores.Setcontato(const Value: Boolean);   
begin                
  Fcontato := Value;   
end;                 

procedure TModelERPleituravalores.Setdata_instalacao(const Value: Boolean);   
begin                
  Fdata_instalacao := Value;   
end;                 

procedure TModelERPleituravalores.Setdata_mensal(const Value: Boolean);   
begin                
  Fdata_mensal := Value;   
end;                 

procedure TModelERPleituravalores.Setmensagemid(const Value: Boolean);   
begin                
  Fmensagemid := Value;   
end;                 

procedure TModelERPleituravalores.Setmensagempublic(const Value: Boolean);   
begin                
  Fmensagempublic := Value;   
end;                 

procedure TModelERPleituravalores.Setsendmid(const Value: Boolean);   
begin                
  Fsendmid := Value;   
end;                 

procedure TModelERPleituravalores.Setsendmpublic(const Value: Boolean);   
begin                
  Fsendmpublic := Value;   
end;                 

procedure TModelERPleituravalores.Setnotifyinsert(const Value: Boolean);   
begin                
  Fnotifyinsert := Value;   
end;                 

procedure TModelERPleituravalores.Setnotifyalter(const Value: Boolean);   
begin                
  Fnotifyalter := Value;   
end;                 

procedure TModelERPleituravalores.Setproduto(const Value: Boolean);   
begin                
  Fproduto := Value;   
end;                 

procedure TModelERPleituravalores.Setcode(const Value: Boolean);   
begin                
  Fcode := Value;   
end;                 

procedure TModelERPleituravalores.Setserie(const Value: Boolean);   
begin                
  Fserie := Value;   
end;                 

procedure TModelERPleituravalores.Setparceiro(const Value: Boolean);   
begin                
  Fparceiro := Value;   
end;                 

procedure TModelERPleituravalores.Setbonus(const Value: Boolean);   
begin                
  Fbonus := Value;   
end;                 

procedure TModelERPleituravalores.Setbloqueio(const Value: Boolean);   
begin                
  Fbloqueio := Value;   
end;                 

procedure TModelERPleituravalores.Setaplicar_alteracao(const Value: Boolean);   
begin                
  Faplicar_alteracao := Value;   
end;                 


end.
