unit Model.ERP.contas_fixas_geradas_controle;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcontasfixasgeradascontrole = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata_contrato : TDateTime;
    Fvalor : Double;
    Fdia_vencimento : WideString;
    Fdata_rescisao : TDateTime;
    Fid_cliente : Integer;
    Fnome_cliente : WideString;
    Fcobra_maodeobra : WideString;
    Fcobra_peca : WideString;
    Fgera_comissao : WideString;
    Fbloqueado : WideString;
    Fdata_bloqueio : TDateTime;
    Fmotivo_bloqueio : WideString;
    Fservico : WideString;
    Fclick : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setdata_contrato(const Value: TDateTime);
    procedure Setvalor(const Value: Double);
    procedure Setdia_vencimento(const Value: WideString);
    procedure Setdata_rescisao(const Value: TDateTime);
    procedure Setid_cliente(const Value: Integer);
    procedure Setnome_cliente(const Value: WideString);
    procedure Setcobra_maodeobra(const Value: WideString);
    procedure Setcobra_peca(const Value: WideString);
    procedure Setgera_comissao(const Value: WideString);
    procedure Setbloqueado(const Value: WideString);
    procedure Setdata_bloqueio(const Value: TDateTime);
    procedure Setmotivo_bloqueio(const Value: WideString);
    procedure Setservico(const Value: WideString);
    procedure Setclick(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property data_contrato     : TDateTime read Fdata_contrato write Setdata_contrato;
    property valor     : Double read Fvalor write Setvalor;
    property dia_vencimento     : WideString read Fdia_vencimento write Setdia_vencimento;
    property data_rescisao     : TDateTime read Fdata_rescisao write Setdata_rescisao;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property nome_cliente     : WideString read Fnome_cliente write Setnome_cliente;
    property cobra_maodeobra     : WideString read Fcobra_maodeobra write Setcobra_maodeobra;
    property cobra_peca     : WideString read Fcobra_peca write Setcobra_peca;
    property gera_comissao     : WideString read Fgera_comissao write Setgera_comissao;
    property bloqueado     : WideString read Fbloqueado write Setbloqueado;
    property data_bloqueio     : TDateTime read Fdata_bloqueio write Setdata_bloqueio;
    property motivo_bloqueio     : WideString read Fmotivo_bloqueio write Setmotivo_bloqueio;
    property servico     : WideString read Fservico write Setservico;
    property click     : Boolean read Fclick write Setclick;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcontasfixasgeradascontrole.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcontasfixasgeradascontrole) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcontasfixasgeradascontrole(Model).id;
Self.Fid_empresa         := TModelERPcontasfixasgeradascontrole(Model).id_empresa;
Self.Fdata_contrato         := TModelERPcontasfixasgeradascontrole(Model).data_contrato;
Self.Fvalor         := TModelERPcontasfixasgeradascontrole(Model).valor;
Self.Fdia_vencimento         := TModelERPcontasfixasgeradascontrole(Model).dia_vencimento;
Self.Fdata_rescisao         := TModelERPcontasfixasgeradascontrole(Model).data_rescisao;
Self.Fid_cliente         := TModelERPcontasfixasgeradascontrole(Model).id_cliente;
Self.Fnome_cliente         := TModelERPcontasfixasgeradascontrole(Model).nome_cliente;
Self.Fcobra_maodeobra         := TModelERPcontasfixasgeradascontrole(Model).cobra_maodeobra;
Self.Fcobra_peca         := TModelERPcontasfixasgeradascontrole(Model).cobra_peca;
Self.Fgera_comissao         := TModelERPcontasfixasgeradascontrole(Model).gera_comissao;
Self.Fbloqueado         := TModelERPcontasfixasgeradascontrole(Model).bloqueado;
Self.Fdata_bloqueio         := TModelERPcontasfixasgeradascontrole(Model).data_bloqueio;
Self.Fmotivo_bloqueio         := TModelERPcontasfixasgeradascontrole(Model).motivo_bloqueio;
Self.Fservico         := TModelERPcontasfixasgeradascontrole(Model).servico;
Self.Fclick         := TModelERPcontasfixasgeradascontrole(Model).click;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcontasfixasgeradascontrole.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcontasfixasgeradascontrole.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcontasfixasgeradascontrole.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcontasfixasgeradascontrole.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPcontasfixasgeradascontrole.Setdata_contrato(const Value: Boolean);   
begin                
  Fdata_contrato := Value;   
end;                 

procedure TModelERPcontasfixasgeradascontrole.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 

procedure TModelERPcontasfixasgeradascontrole.Setdia_vencimento(const Value: Boolean);   
begin                
  Fdia_vencimento := Value;   
end;                 

procedure TModelERPcontasfixasgeradascontrole.Setdata_rescisao(const Value: Boolean);   
begin                
  Fdata_rescisao := Value;   
end;                 

procedure TModelERPcontasfixasgeradascontrole.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPcontasfixasgeradascontrole.Setnome_cliente(const Value: Boolean);   
begin                
  Fnome_cliente := Value;   
end;                 

procedure TModelERPcontasfixasgeradascontrole.Setcobra_maodeobra(const Value: Boolean);   
begin                
  Fcobra_maodeobra := Value;   
end;                 

procedure TModelERPcontasfixasgeradascontrole.Setcobra_peca(const Value: Boolean);   
begin                
  Fcobra_peca := Value;   
end;                 

procedure TModelERPcontasfixasgeradascontrole.Setgera_comissao(const Value: Boolean);   
begin                
  Fgera_comissao := Value;   
end;                 

procedure TModelERPcontasfixasgeradascontrole.Setbloqueado(const Value: Boolean);   
begin                
  Fbloqueado := Value;   
end;                 

procedure TModelERPcontasfixasgeradascontrole.Setdata_bloqueio(const Value: Boolean);   
begin                
  Fdata_bloqueio := Value;   
end;                 

procedure TModelERPcontasfixasgeradascontrole.Setmotivo_bloqueio(const Value: Boolean);   
begin                
  Fmotivo_bloqueio := Value;   
end;                 

procedure TModelERPcontasfixasgeradascontrole.Setservico(const Value: Boolean);   
begin                
  Fservico := Value;   
end;                 

procedure TModelERPcontasfixasgeradascontrole.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 


end.
