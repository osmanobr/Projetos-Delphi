unit Model.ERP.conta_pagar_comissao_parceiro;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcontapagarcomissaoparceiro = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_conta_pagar : Integer;
    Fid_parceiro : Integer;
    Fnome_parceiro : WideString;
    Fvalor : Double;
    Fsituacao : WideString;
    Fparcela : WideString;
    Fclick : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_conta_pagar(const Value: Integer);
    procedure Setid_parceiro(const Value: Integer);
    procedure Setnome_parceiro(const Value: WideString);
    procedure Setvalor(const Value: Double);
    procedure Setsituacao(const Value: WideString);
    procedure Setparcela(const Value: WideString);
    procedure Setclick(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_conta_pagar     : Integer read Fid_conta_pagar write Setid_conta_pagar;
    property id_parceiro     : Integer read Fid_parceiro write Setid_parceiro;
    property nome_parceiro     : WideString read Fnome_parceiro write Setnome_parceiro;
    property valor     : Double read Fvalor write Setvalor;
    property situacao     : WideString read Fsituacao write Setsituacao;
    property parcela     : WideString read Fparcela write Setparcela;
    property click     : Boolean read Fclick write Setclick;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcontapagarcomissaoparceiro.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcontapagarcomissaoparceiro) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcontapagarcomissaoparceiro(Model).id;
Self.Fid_empresa         := TModelERPcontapagarcomissaoparceiro(Model).id_empresa;
Self.Fid_conta_pagar         := TModelERPcontapagarcomissaoparceiro(Model).id_conta_pagar;
Self.Fid_parceiro         := TModelERPcontapagarcomissaoparceiro(Model).id_parceiro;
Self.Fnome_parceiro         := TModelERPcontapagarcomissaoparceiro(Model).nome_parceiro;
Self.Fvalor         := TModelERPcontapagarcomissaoparceiro(Model).valor;
Self.Fsituacao         := TModelERPcontapagarcomissaoparceiro(Model).situacao;
Self.Fparcela         := TModelERPcontapagarcomissaoparceiro(Model).parcela;
Self.Fclick         := TModelERPcontapagarcomissaoparceiro(Model).click;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcontapagarcomissaoparceiro.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcontapagarcomissaoparceiro.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcontapagarcomissaoparceiro.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcontapagarcomissaoparceiro.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPcontapagarcomissaoparceiro.Setid_conta_pagar(const Value: Boolean);   
begin                
  Fid_conta_pagar := Value;   
end;                 

procedure TModelERPcontapagarcomissaoparceiro.Setid_parceiro(const Value: Boolean);   
begin                
  Fid_parceiro := Value;   
end;                 

procedure TModelERPcontapagarcomissaoparceiro.Setnome_parceiro(const Value: Boolean);   
begin                
  Fnome_parceiro := Value;   
end;                 

procedure TModelERPcontapagarcomissaoparceiro.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 

procedure TModelERPcontapagarcomissaoparceiro.Setsituacao(const Value: Boolean);   
begin                
  Fsituacao := Value;   
end;                 

procedure TModelERPcontapagarcomissaoparceiro.Setparcela(const Value: Boolean);   
begin                
  Fparcela := Value;   
end;                 

procedure TModelERPcontapagarcomissaoparceiro.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 


end.
