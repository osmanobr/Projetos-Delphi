unit Model.ERP.fechamento_caixa_detalhe;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPfechamentocaixadetalhe = class(TModelBase)

private
    Fid : Integer;
    Fid_fechamento_caixa : Integer;
    Fid_usuario : Integer;
    Fnome_usuario : WideString;
    Facao : WideString;
    Fdatahora : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_fechamento_caixa(const Value: Integer);
    procedure Setid_usuario(const Value: Integer);
    procedure Setnome_usuario(const Value: WideString);
    procedure Setacao(const Value: WideString);
    procedure Setdatahora(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_fechamento_caixa     : Integer read Fid_fechamento_caixa write Setid_fechamento_caixa;
    property id_usuario     : Integer read Fid_usuario write Setid_usuario;
    property nome_usuario     : WideString read Fnome_usuario write Setnome_usuario;
    property acao     : WideString read Facao write Setacao;
    property datahora     : indefinido read Fdatahora write Setdatahora;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPfechamentocaixadetalhe.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPfechamentocaixadetalhe) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPfechamentocaixadetalhe(Model).id;
Self.Fid_fechamento_caixa         := TModelERPfechamentocaixadetalhe(Model).id_fechamento_caixa;
Self.Fid_usuario         := TModelERPfechamentocaixadetalhe(Model).id_usuario;
Self.Fnome_usuario         := TModelERPfechamentocaixadetalhe(Model).nome_usuario;
Self.Facao         := TModelERPfechamentocaixadetalhe(Model).acao;
Self.Fdatahora         := TModelERPfechamentocaixadetalhe(Model).datahora;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPfechamentocaixadetalhe.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPfechamentocaixadetalhe.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPfechamentocaixadetalhe.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPfechamentocaixadetalhe.Setid_fechamento_caixa(const Value: Boolean);   
begin                
  Fid_fechamento_caixa := Value;   
end;                 

procedure TModelERPfechamentocaixadetalhe.Setid_usuario(const Value: Boolean);   
begin                
  Fid_usuario := Value;   
end;                 

procedure TModelERPfechamentocaixadetalhe.Setnome_usuario(const Value: Boolean);   
begin                
  Fnome_usuario := Value;   
end;                 

procedure TModelERPfechamentocaixadetalhe.Setacao(const Value: Boolean);   
begin                
  Facao := Value;   
end;                 

procedure TModelERPfechamentocaixadetalhe.Setdatahora(const Value: Boolean);   
begin                
  Fdatahora := Value;   
end;                 


end.
