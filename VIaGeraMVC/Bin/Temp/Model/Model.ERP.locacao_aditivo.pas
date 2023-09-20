unit Model.ERP.locacao;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPlocacao = class(TModelBase)

private
    Fid : Integer;
    Fid_locacao : Integer;
    Fdata : TDateTime;
    Fstatus : WideString;
    Fid_cliente : Integer;
    Fnome_cliente : WideString;
    Finicio : TDateTime;
    Fdevolucao : TDateTime;
    Ftipo : WideString;
    Flocalizacao : indefinido;
    Fobs : indefinido;
    Fvl_equipamento : Double;
    Fvl_desconto : Double;
    Fvl_acrescimo : Double;
    Fvl_total : Double;
    Fid_forma : Integer;
    Fparcelas : Integer;
    Fdata_vencto : TDateTime;
    Fevento : indefinido;
    Ffinanceiro : WideString;
    Fdevolvido : WideString;
    Fdias : Integer;
    Fclick : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_locacao(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setstatus(const Value: WideString);
    procedure Setid_cliente(const Value: Integer);
    procedure Setnome_cliente(const Value: WideString);
    procedure Setinicio(const Value: TDateTime);
    procedure Setdevolucao(const Value: TDateTime);
    procedure Settipo(const Value: WideString);
    procedure Setlocalizacao(const Value: indefinido);
    procedure Setobs(const Value: indefinido);
    procedure Setvl_equipamento(const Value: Double);
    procedure Setvl_desconto(const Value: Double);
    procedure Setvl_acrescimo(const Value: Double);
    procedure Setvl_total(const Value: Double);
    procedure Setid_forma(const Value: Integer);
    procedure Setparcelas(const Value: Integer);
    procedure Setdata_vencto(const Value: TDateTime);
    procedure Setevento(const Value: indefinido);
    procedure Setfinanceiro(const Value: WideString);
    procedure Setdevolvido(const Value: WideString);
    procedure Setdias(const Value: Integer);
    procedure Setclick(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_locacao     : Integer read Fid_locacao write Setid_locacao;
    property data     : TDateTime read Fdata write Setdata;
    property status     : WideString read Fstatus write Setstatus;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property nome_cliente     : WideString read Fnome_cliente write Setnome_cliente;
    property inicio     : TDateTime read Finicio write Setinicio;
    property devolucao     : TDateTime read Fdevolucao write Setdevolucao;
    property tipo     : WideString read Ftipo write Settipo;
    property localizacao     : indefinido read Flocalizacao write Setlocalizacao;
    property obs     : indefinido read Fobs write Setobs;
    property vl_equipamento     : Double read Fvl_equipamento write Setvl_equipamento;
    property vl_desconto     : Double read Fvl_desconto write Setvl_desconto;
    property vl_acrescimo     : Double read Fvl_acrescimo write Setvl_acrescimo;
    property vl_total     : Double read Fvl_total write Setvl_total;
    property id_forma     : Integer read Fid_forma write Setid_forma;
    property parcelas     : Integer read Fparcelas write Setparcelas;
    property data_vencto     : TDateTime read Fdata_vencto write Setdata_vencto;
    property evento     : indefinido read Fevento write Setevento;
    property financeiro     : WideString read Ffinanceiro write Setfinanceiro;
    property devolvido     : WideString read Fdevolvido write Setdevolvido;
    property dias     : Integer read Fdias write Setdias;
    property click     : Boolean read Fclick write Setclick;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPlocacao.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPlocacao) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPlocacao(Model).id;
Self.Fid_locacao         := TModelERPlocacao(Model).id_locacao;
Self.Fdata         := TModelERPlocacao(Model).data;
Self.Fstatus         := TModelERPlocacao(Model).status;
Self.Fid_cliente         := TModelERPlocacao(Model).id_cliente;
Self.Fnome_cliente         := TModelERPlocacao(Model).nome_cliente;
Self.Finicio         := TModelERPlocacao(Model).inicio;
Self.Fdevolucao         := TModelERPlocacao(Model).devolucao;
Self.Ftipo         := TModelERPlocacao(Model).tipo;
Self.Flocalizacao         := TModelERPlocacao(Model).localizacao;
Self.Fobs         := TModelERPlocacao(Model).obs;
Self.Fvl_equipamento         := TModelERPlocacao(Model).vl_equipamento;
Self.Fvl_desconto         := TModelERPlocacao(Model).vl_desconto;
Self.Fvl_acrescimo         := TModelERPlocacao(Model).vl_acrescimo;
Self.Fvl_total         := TModelERPlocacao(Model).vl_total;
Self.Fid_forma         := TModelERPlocacao(Model).id_forma;
Self.Fparcelas         := TModelERPlocacao(Model).parcelas;
Self.Fdata_vencto         := TModelERPlocacao(Model).data_vencto;
Self.Fevento         := TModelERPlocacao(Model).evento;
Self.Ffinanceiro         := TModelERPlocacao(Model).financeiro;
Self.Fdevolvido         := TModelERPlocacao(Model).devolvido;
Self.Fdias         := TModelERPlocacao(Model).dias;
Self.Fclick         := TModelERPlocacao(Model).click;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPlocacao.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPlocacao.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPlocacao.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPlocacao.Setid_locacao(const Value: Boolean);   
begin                
  Fid_locacao := Value;   
end;                 

procedure TModelERPlocacao.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPlocacao.Setstatus(const Value: Boolean);   
begin                
  Fstatus := Value;   
end;                 

procedure TModelERPlocacao.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPlocacao.Setnome_cliente(const Value: Boolean);   
begin                
  Fnome_cliente := Value;   
end;                 

procedure TModelERPlocacao.Setinicio(const Value: Boolean);   
begin                
  Finicio := Value;   
end;                 

procedure TModelERPlocacao.Setdevolucao(const Value: Boolean);   
begin                
  Fdevolucao := Value;   
end;                 

procedure TModelERPlocacao.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPlocacao.Setlocalizacao(const Value: Boolean);   
begin                
  Flocalizacao := Value;   
end;                 

procedure TModelERPlocacao.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 

procedure TModelERPlocacao.Setvl_equipamento(const Value: Boolean);   
begin                
  Fvl_equipamento := Value;   
end;                 

procedure TModelERPlocacao.Setvl_desconto(const Value: Boolean);   
begin                
  Fvl_desconto := Value;   
end;                 

procedure TModelERPlocacao.Setvl_acrescimo(const Value: Boolean);   
begin                
  Fvl_acrescimo := Value;   
end;                 

procedure TModelERPlocacao.Setvl_total(const Value: Boolean);   
begin                
  Fvl_total := Value;   
end;                 

procedure TModelERPlocacao.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 

procedure TModelERPlocacao.Setparcelas(const Value: Boolean);   
begin                
  Fparcelas := Value;   
end;                 

procedure TModelERPlocacao.Setdata_vencto(const Value: Boolean);   
begin                
  Fdata_vencto := Value;   
end;                 

procedure TModelERPlocacao.Setevento(const Value: Boolean);   
begin                
  Fevento := Value;   
end;                 

procedure TModelERPlocacao.Setfinanceiro(const Value: Boolean);   
begin                
  Ffinanceiro := Value;   
end;                 

procedure TModelERPlocacao.Setdevolvido(const Value: Boolean);   
begin                
  Fdevolvido := Value;   
end;                 

procedure TModelERPlocacao.Setdias(const Value: Boolean);   
begin                
  Fdias := Value;   
end;                 

procedure TModelERPlocacao.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 


end.
