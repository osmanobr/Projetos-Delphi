unit Model.ERP.contrato_licitacao;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcontratolicitacao = class(TModelBase)

private
    Fid : Integer;
    Fid_contrato_licitacao : Integer;
    Fitem : Integer;
    Fqtd : WideString;
    Funidade : WideString;
    Fproduto : indefinido;
    Fvalor : Double;

    procedure Setid(const Value: Integer);
    procedure Setid_contrato_licitacao(const Value: Integer);
    procedure Setitem(const Value: Integer);
    procedure Setqtd(const Value: WideString);
    procedure Setunidade(const Value: WideString);
    procedure Setproduto(const Value: indefinido);
    procedure Setvalor(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property id_contrato_licitacao     : Integer read Fid_contrato_licitacao write Setid_contrato_licitacao;
    property item     : Integer read Fitem write Setitem;
    property qtd     : WideString read Fqtd write Setqtd;
    property unidade     : WideString read Funidade write Setunidade;
    property produto     : indefinido read Fproduto write Setproduto;
    property valor     : Double read Fvalor write Setvalor;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcontratolicitacao.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcontratolicitacao) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcontratolicitacao(Model).id;
Self.Fid_contrato_licitacao         := TModelERPcontratolicitacao(Model).id_contrato_licitacao;
Self.Fitem         := TModelERPcontratolicitacao(Model).item;
Self.Fqtd         := TModelERPcontratolicitacao(Model).qtd;
Self.Funidade         := TModelERPcontratolicitacao(Model).unidade;
Self.Fproduto         := TModelERPcontratolicitacao(Model).produto;
Self.Fvalor         := TModelERPcontratolicitacao(Model).valor;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcontratolicitacao.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcontratolicitacao.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcontratolicitacao.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcontratolicitacao.Setid_contrato_licitacao(const Value: Boolean);   
begin                
  Fid_contrato_licitacao := Value;   
end;                 

procedure TModelERPcontratolicitacao.Setitem(const Value: Boolean);   
begin                
  Fitem := Value;   
end;                 

procedure TModelERPcontratolicitacao.Setqtd(const Value: Boolean);   
begin                
  Fqtd := Value;   
end;                 

procedure TModelERPcontratolicitacao.Setunidade(const Value: Boolean);   
begin                
  Funidade := Value;   
end;                 

procedure TModelERPcontratolicitacao.Setproduto(const Value: Boolean);   
begin                
  Fproduto := Value;   
end;                 

procedure TModelERPcontratolicitacao.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 


end.
