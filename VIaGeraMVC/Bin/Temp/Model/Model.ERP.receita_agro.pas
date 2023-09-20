unit Model.ERP.reajuste_preco_itens;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPreajusteprecoitens = class(TModelBase)

private
    Fid : Integer;
    Fdata_emissao : TDateTime;
    Fart : indefinido;
    Fvisto : indefinido;
    Fuf : indefinido;
    Fid_venda : Integer;
    Fnfe : indefinido;
    Fserie : indefinido;
    Fid_cliente : Integer;
    Fnome_cliente : indefinido;
    Flocal_aplicacao : indefinido;
    Funidade_recebimento : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setdata_emissao(const Value: TDateTime);
    procedure Setart(const Value: indefinido);
    procedure Setvisto(const Value: indefinido);
    procedure Setuf(const Value: indefinido);
    procedure Setid_venda(const Value: Integer);
    procedure Setnfe(const Value: indefinido);
    procedure Setserie(const Value: indefinido);
    procedure Setid_cliente(const Value: Integer);
    procedure Setnome_cliente(const Value: indefinido);
    procedure Setlocal_aplicacao(const Value: indefinido);
    procedure Setunidade_recebimento(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property data_emissao     : TDateTime read Fdata_emissao write Setdata_emissao;
    property art     : indefinido read Fart write Setart;
    property visto     : indefinido read Fvisto write Setvisto;
    property uf     : indefinido read Fuf write Setuf;
    property id_venda     : Integer read Fid_venda write Setid_venda;
    property nfe     : indefinido read Fnfe write Setnfe;
    property serie     : indefinido read Fserie write Setserie;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property nome_cliente     : indefinido read Fnome_cliente write Setnome_cliente;
    property local_aplicacao     : indefinido read Flocal_aplicacao write Setlocal_aplicacao;
    property unidade_recebimento     : indefinido read Funidade_recebimento write Setunidade_recebimento;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPreajusteprecoitens.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPreajusteprecoitens) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPreajusteprecoitens(Model).id;
Self.Fdata_emissao         := TModelERPreajusteprecoitens(Model).data_emissao;
Self.Fart         := TModelERPreajusteprecoitens(Model).art;
Self.Fvisto         := TModelERPreajusteprecoitens(Model).visto;
Self.Fuf         := TModelERPreajusteprecoitens(Model).uf;
Self.Fid_venda         := TModelERPreajusteprecoitens(Model).id_venda;
Self.Fnfe         := TModelERPreajusteprecoitens(Model).nfe;
Self.Fserie         := TModelERPreajusteprecoitens(Model).serie;
Self.Fid_cliente         := TModelERPreajusteprecoitens(Model).id_cliente;
Self.Fnome_cliente         := TModelERPreajusteprecoitens(Model).nome_cliente;
Self.Flocal_aplicacao         := TModelERPreajusteprecoitens(Model).local_aplicacao;
Self.Funidade_recebimento         := TModelERPreajusteprecoitens(Model).unidade_recebimento;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPreajusteprecoitens.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPreajusteprecoitens.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPreajusteprecoitens.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPreajusteprecoitens.Setdata_emissao(const Value: Boolean);   
begin                
  Fdata_emissao := Value;   
end;                 

procedure TModelERPreajusteprecoitens.Setart(const Value: Boolean);   
begin                
  Fart := Value;   
end;                 

procedure TModelERPreajusteprecoitens.Setvisto(const Value: Boolean);   
begin                
  Fvisto := Value;   
end;                 

procedure TModelERPreajusteprecoitens.Setuf(const Value: Boolean);   
begin                
  Fuf := Value;   
end;                 

procedure TModelERPreajusteprecoitens.Setid_venda(const Value: Boolean);   
begin                
  Fid_venda := Value;   
end;                 

procedure TModelERPreajusteprecoitens.Setnfe(const Value: Boolean);   
begin                
  Fnfe := Value;   
end;                 

procedure TModelERPreajusteprecoitens.Setserie(const Value: Boolean);   
begin                
  Fserie := Value;   
end;                 

procedure TModelERPreajusteprecoitens.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPreajusteprecoitens.Setnome_cliente(const Value: Boolean);   
begin                
  Fnome_cliente := Value;   
end;                 

procedure TModelERPreajusteprecoitens.Setlocal_aplicacao(const Value: Boolean);   
begin                
  Flocal_aplicacao := Value;   
end;                 

procedure TModelERPreajusteprecoitens.Setunidade_recebimento(const Value: Boolean);   
begin                
  Funidade_recebimento := Value;   
end;                 


end.
