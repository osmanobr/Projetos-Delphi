unit Model.ERP.referencias_pessoais;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPreferenciaspessoais = class(TModelBase)

private
    Fid : Integer;
    Fid_cliente : Integer;
    Fcontato : indefinido;
    Fdata_instalacao : TDateTime;
    Fdata_mensal : TDateTime;
    Fmensagemid : indefinido;
    Fmensagempublic : indefinido;
    Fsendmid : indefinido;
    Fsendmpublic : indefinido;
    Fcode : indefinido;
    Fserie : indefinido;
    Fparceiro : indefinido;
    Fproduto : indefinido;
    Fbloqueio : indefinido;
    Fhash : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setcontato(const Value: indefinido);
    procedure Setdata_instalacao(const Value: TDateTime);
    procedure Setdata_mensal(const Value: TDateTime);
    procedure Setmensagemid(const Value: indefinido);
    procedure Setmensagempublic(const Value: indefinido);
    procedure Setsendmid(const Value: indefinido);
    procedure Setsendmpublic(const Value: indefinido);
    procedure Setcode(const Value: indefinido);
    procedure Setserie(const Value: indefinido);
    procedure Setparceiro(const Value: indefinido);
    procedure Setproduto(const Value: indefinido);
    procedure Setbloqueio(const Value: indefinido);
    procedure Sethash(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property contato     : indefinido read Fcontato write Setcontato;
    property data_instalacao     : TDateTime read Fdata_instalacao write Setdata_instalacao;
    property data_mensal     : TDateTime read Fdata_mensal write Setdata_mensal;
    property mensagemid     : indefinido read Fmensagemid write Setmensagemid;
    property mensagempublic     : indefinido read Fmensagempublic write Setmensagempublic;
    property sendmid     : indefinido read Fsendmid write Setsendmid;
    property sendmpublic     : indefinido read Fsendmpublic write Setsendmpublic;
    property code     : indefinido read Fcode write Setcode;
    property serie     : indefinido read Fserie write Setserie;
    property parceiro     : indefinido read Fparceiro write Setparceiro;
    property produto     : indefinido read Fproduto write Setproduto;
    property bloqueio     : indefinido read Fbloqueio write Setbloqueio;
    property hash     : indefinido read Fhash write Sethash;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPreferenciaspessoais.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPreferenciaspessoais) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPreferenciaspessoais(Model).id;
Self.Fid_cliente         := TModelERPreferenciaspessoais(Model).id_cliente;
Self.Fcontato         := TModelERPreferenciaspessoais(Model).contato;
Self.Fdata_instalacao         := TModelERPreferenciaspessoais(Model).data_instalacao;
Self.Fdata_mensal         := TModelERPreferenciaspessoais(Model).data_mensal;
Self.Fmensagemid         := TModelERPreferenciaspessoais(Model).mensagemid;
Self.Fmensagempublic         := TModelERPreferenciaspessoais(Model).mensagempublic;
Self.Fsendmid         := TModelERPreferenciaspessoais(Model).sendmid;
Self.Fsendmpublic         := TModelERPreferenciaspessoais(Model).sendmpublic;
Self.Fcode         := TModelERPreferenciaspessoais(Model).code;
Self.Fserie         := TModelERPreferenciaspessoais(Model).serie;
Self.Fparceiro         := TModelERPreferenciaspessoais(Model).parceiro;
Self.Fproduto         := TModelERPreferenciaspessoais(Model).produto;
Self.Fbloqueio         := TModelERPreferenciaspessoais(Model).bloqueio;
Self.Fhash         := TModelERPreferenciaspessoais(Model).hash;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPreferenciaspessoais.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPreferenciaspessoais.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPreferenciaspessoais.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPreferenciaspessoais.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPreferenciaspessoais.Setcontato(const Value: Boolean);   
begin                
  Fcontato := Value;   
end;                 

procedure TModelERPreferenciaspessoais.Setdata_instalacao(const Value: Boolean);   
begin                
  Fdata_instalacao := Value;   
end;                 

procedure TModelERPreferenciaspessoais.Setdata_mensal(const Value: Boolean);   
begin                
  Fdata_mensal := Value;   
end;                 

procedure TModelERPreferenciaspessoais.Setmensagemid(const Value: Boolean);   
begin                
  Fmensagemid := Value;   
end;                 

procedure TModelERPreferenciaspessoais.Setmensagempublic(const Value: Boolean);   
begin                
  Fmensagempublic := Value;   
end;                 

procedure TModelERPreferenciaspessoais.Setsendmid(const Value: Boolean);   
begin                
  Fsendmid := Value;   
end;                 

procedure TModelERPreferenciaspessoais.Setsendmpublic(const Value: Boolean);   
begin                
  Fsendmpublic := Value;   
end;                 

procedure TModelERPreferenciaspessoais.Setcode(const Value: Boolean);   
begin                
  Fcode := Value;   
end;                 

procedure TModelERPreferenciaspessoais.Setserie(const Value: Boolean);   
begin                
  Fserie := Value;   
end;                 

procedure TModelERPreferenciaspessoais.Setparceiro(const Value: Boolean);   
begin                
  Fparceiro := Value;   
end;                 

procedure TModelERPreferenciaspessoais.Setproduto(const Value: Boolean);   
begin                
  Fproduto := Value;   
end;                 

procedure TModelERPreferenciaspessoais.Setbloqueio(const Value: Boolean);   
begin                
  Fbloqueio := Value;   
end;                 

procedure TModelERPreferenciaspessoais.Sethash(const Value: Boolean);   
begin                
  Fhash := Value;   
end;                 


end.
