unit Model.ERP.movimento_financeira;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPmovimentofinanceira = class(TModelBase)

private
    Fid : Integer;
    Fdata : TDateTime;
    Fid_funcionario : Integer;
    Fnome : WideString;
    Fdebcre : WideString;
    Fvalor : Double;
    Fobs : WideString;
    Fclick : Boolean;
    Fdata_baixa : TDateTime;
    Fsituacao : WideString;
    Foperacao : WideString;
    Fid_operacao : Integer;
    Fid_conta : WideString;
    Fid_conta_pagar : Integer;

    procedure Setid(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setid_funcionario(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setdebcre(const Value: WideString);
    procedure Setvalor(const Value: Double);
    procedure Setobs(const Value: WideString);
    procedure Setclick(const Value: Boolean);
    procedure Setdata_baixa(const Value: TDateTime);
    procedure Setsituacao(const Value: WideString);
    procedure Setoperacao(const Value: WideString);
    procedure Setid_operacao(const Value: Integer);
    procedure Setid_conta(const Value: WideString);
    procedure Setid_conta_pagar(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property data     : TDateTime read Fdata write Setdata;
    property id_funcionario     : Integer read Fid_funcionario write Setid_funcionario;
    property nome     : WideString read Fnome write Setnome;
    property debcre     : WideString read Fdebcre write Setdebcre;
    property valor     : Double read Fvalor write Setvalor;
    property obs     : WideString read Fobs write Setobs;
    property click     : Boolean read Fclick write Setclick;
    property data_baixa     : TDateTime read Fdata_baixa write Setdata_baixa;
    property situacao     : WideString read Fsituacao write Setsituacao;
    property operacao     : WideString read Foperacao write Setoperacao;
    property id_operacao     : Integer read Fid_operacao write Setid_operacao;
    property id_conta     : WideString read Fid_conta write Setid_conta;
    property id_conta_pagar     : Integer read Fid_conta_pagar write Setid_conta_pagar;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPmovimentofinanceira.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPmovimentofinanceira) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPmovimentofinanceira(Model).id;
Self.Fdata         := TModelERPmovimentofinanceira(Model).data;
Self.Fid_funcionario         := TModelERPmovimentofinanceira(Model).id_funcionario;
Self.Fnome         := TModelERPmovimentofinanceira(Model).nome;
Self.Fdebcre         := TModelERPmovimentofinanceira(Model).debcre;
Self.Fvalor         := TModelERPmovimentofinanceira(Model).valor;
Self.Fobs         := TModelERPmovimentofinanceira(Model).obs;
Self.Fclick         := TModelERPmovimentofinanceira(Model).click;
Self.Fdata_baixa         := TModelERPmovimentofinanceira(Model).data_baixa;
Self.Fsituacao         := TModelERPmovimentofinanceira(Model).situacao;
Self.Foperacao         := TModelERPmovimentofinanceira(Model).operacao;
Self.Fid_operacao         := TModelERPmovimentofinanceira(Model).id_operacao;
Self.Fid_conta         := TModelERPmovimentofinanceira(Model).id_conta;
Self.Fid_conta_pagar         := TModelERPmovimentofinanceira(Model).id_conta_pagar;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPmovimentofinanceira.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPmovimentofinanceira.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPmovimentofinanceira.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPmovimentofinanceira.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPmovimentofinanceira.Setid_funcionario(const Value: Boolean);   
begin                
  Fid_funcionario := Value;   
end;                 

procedure TModelERPmovimentofinanceira.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPmovimentofinanceira.Setdebcre(const Value: Boolean);   
begin                
  Fdebcre := Value;   
end;                 

procedure TModelERPmovimentofinanceira.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 

procedure TModelERPmovimentofinanceira.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 

procedure TModelERPmovimentofinanceira.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPmovimentofinanceira.Setdata_baixa(const Value: Boolean);   
begin                
  Fdata_baixa := Value;   
end;                 

procedure TModelERPmovimentofinanceira.Setsituacao(const Value: Boolean);   
begin                
  Fsituacao := Value;   
end;                 

procedure TModelERPmovimentofinanceira.Setoperacao(const Value: Boolean);   
begin                
  Foperacao := Value;   
end;                 

procedure TModelERPmovimentofinanceira.Setid_operacao(const Value: Boolean);   
begin                
  Fid_operacao := Value;   
end;                 

procedure TModelERPmovimentofinanceira.Setid_conta(const Value: Boolean);   
begin                
  Fid_conta := Value;   
end;                 

procedure TModelERPmovimentofinanceira.Setid_conta_pagar(const Value: Boolean);   
begin                
  Fid_conta_pagar := Value;   
end;                 


end.
