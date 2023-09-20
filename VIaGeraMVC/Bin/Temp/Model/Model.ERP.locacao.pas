unit Model.ERP.lmc_item;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPlmcitem = class(TModelBase)

private
    Fid : Integer;
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
    Faditivo : WideString;
    Finicio_aditivo : TDateTime;
    Fdevolucao_aditivo : TDateTime;
    Ftipo_aditivo : WideString;
    Fdias_aditivo : Integer;
    Fresponsavel : WideString;
    Fcpf : WideString;
    Frg : WideString;
    Ftelefone : WideString;
    Ffrete : Double;
    Fbusca : WideString;
    Fvalor_aluguel : Double;

    procedure Setid(const Value: Integer);
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
    procedure Setaditivo(const Value: WideString);
    procedure Setinicio_aditivo(const Value: TDateTime);
    procedure Setdevolucao_aditivo(const Value: TDateTime);
    procedure Settipo_aditivo(const Value: WideString);
    procedure Setdias_aditivo(const Value: Integer);
    procedure Setresponsavel(const Value: WideString);
    procedure Setcpf(const Value: WideString);
    procedure Setrg(const Value: WideString);
    procedure Settelefone(const Value: WideString);
    procedure Setfrete(const Value: Double);
    procedure Setbusca(const Value: WideString);
    procedure Setvalor_aluguel(const Value: Double);

public
    property id     : Integer read Fid write Setid;
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
    property aditivo     : WideString read Faditivo write Setaditivo;
    property inicio_aditivo     : TDateTime read Finicio_aditivo write Setinicio_aditivo;
    property devolucao_aditivo     : TDateTime read Fdevolucao_aditivo write Setdevolucao_aditivo;
    property tipo_aditivo     : WideString read Ftipo_aditivo write Settipo_aditivo;
    property dias_aditivo     : Integer read Fdias_aditivo write Setdias_aditivo;
    property responsavel     : WideString read Fresponsavel write Setresponsavel;
    property cpf     : WideString read Fcpf write Setcpf;
    property rg     : WideString read Frg write Setrg;
    property telefone     : WideString read Ftelefone write Settelefone;
    property frete     : Double read Ffrete write Setfrete;
    property busca     : WideString read Fbusca write Setbusca;
    property valor_aluguel     : Double read Fvalor_aluguel write Setvalor_aluguel;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPlmcitem.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPlmcitem) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPlmcitem(Model).id;
Self.Fdata         := TModelERPlmcitem(Model).data;
Self.Fstatus         := TModelERPlmcitem(Model).status;
Self.Fid_cliente         := TModelERPlmcitem(Model).id_cliente;
Self.Fnome_cliente         := TModelERPlmcitem(Model).nome_cliente;
Self.Finicio         := TModelERPlmcitem(Model).inicio;
Self.Fdevolucao         := TModelERPlmcitem(Model).devolucao;
Self.Ftipo         := TModelERPlmcitem(Model).tipo;
Self.Flocalizacao         := TModelERPlmcitem(Model).localizacao;
Self.Fobs         := TModelERPlmcitem(Model).obs;
Self.Fvl_equipamento         := TModelERPlmcitem(Model).vl_equipamento;
Self.Fvl_desconto         := TModelERPlmcitem(Model).vl_desconto;
Self.Fvl_acrescimo         := TModelERPlmcitem(Model).vl_acrescimo;
Self.Fvl_total         := TModelERPlmcitem(Model).vl_total;
Self.Fid_forma         := TModelERPlmcitem(Model).id_forma;
Self.Fparcelas         := TModelERPlmcitem(Model).parcelas;
Self.Fdata_vencto         := TModelERPlmcitem(Model).data_vencto;
Self.Fevento         := TModelERPlmcitem(Model).evento;
Self.Ffinanceiro         := TModelERPlmcitem(Model).financeiro;
Self.Fdevolvido         := TModelERPlmcitem(Model).devolvido;
Self.Fdias         := TModelERPlmcitem(Model).dias;
Self.Fclick         := TModelERPlmcitem(Model).click;
Self.Faditivo         := TModelERPlmcitem(Model).aditivo;
Self.Finicio_aditivo         := TModelERPlmcitem(Model).inicio_aditivo;
Self.Fdevolucao_aditivo         := TModelERPlmcitem(Model).devolucao_aditivo;
Self.Ftipo_aditivo         := TModelERPlmcitem(Model).tipo_aditivo;
Self.Fdias_aditivo         := TModelERPlmcitem(Model).dias_aditivo;
Self.Fresponsavel         := TModelERPlmcitem(Model).responsavel;
Self.Fcpf         := TModelERPlmcitem(Model).cpf;
Self.Frg         := TModelERPlmcitem(Model).rg;
Self.Ftelefone         := TModelERPlmcitem(Model).telefone;
Self.Ffrete         := TModelERPlmcitem(Model).frete;
Self.Fbusca         := TModelERPlmcitem(Model).busca;
Self.Fvalor_aluguel         := TModelERPlmcitem(Model).valor_aluguel;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPlmcitem.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPlmcitem.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPlmcitem.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPlmcitem.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPlmcitem.Setstatus(const Value: Boolean);   
begin                
  Fstatus := Value;   
end;                 

procedure TModelERPlmcitem.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPlmcitem.Setnome_cliente(const Value: Boolean);   
begin                
  Fnome_cliente := Value;   
end;                 

procedure TModelERPlmcitem.Setinicio(const Value: Boolean);   
begin                
  Finicio := Value;   
end;                 

procedure TModelERPlmcitem.Setdevolucao(const Value: Boolean);   
begin                
  Fdevolucao := Value;   
end;                 

procedure TModelERPlmcitem.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPlmcitem.Setlocalizacao(const Value: Boolean);   
begin                
  Flocalizacao := Value;   
end;                 

procedure TModelERPlmcitem.Setobs(const Value: Boolean);   
begin                
  Fobs := Value;   
end;                 

procedure TModelERPlmcitem.Setvl_equipamento(const Value: Boolean);   
begin                
  Fvl_equipamento := Value;   
end;                 

procedure TModelERPlmcitem.Setvl_desconto(const Value: Boolean);   
begin                
  Fvl_desconto := Value;   
end;                 

procedure TModelERPlmcitem.Setvl_acrescimo(const Value: Boolean);   
begin                
  Fvl_acrescimo := Value;   
end;                 

procedure TModelERPlmcitem.Setvl_total(const Value: Boolean);   
begin                
  Fvl_total := Value;   
end;                 

procedure TModelERPlmcitem.Setid_forma(const Value: Boolean);   
begin                
  Fid_forma := Value;   
end;                 

procedure TModelERPlmcitem.Setparcelas(const Value: Boolean);   
begin                
  Fparcelas := Value;   
end;                 

procedure TModelERPlmcitem.Setdata_vencto(const Value: Boolean);   
begin                
  Fdata_vencto := Value;   
end;                 

procedure TModelERPlmcitem.Setevento(const Value: Boolean);   
begin                
  Fevento := Value;   
end;                 

procedure TModelERPlmcitem.Setfinanceiro(const Value: Boolean);   
begin                
  Ffinanceiro := Value;   
end;                 

procedure TModelERPlmcitem.Setdevolvido(const Value: Boolean);   
begin                
  Fdevolvido := Value;   
end;                 

procedure TModelERPlmcitem.Setdias(const Value: Boolean);   
begin                
  Fdias := Value;   
end;                 

procedure TModelERPlmcitem.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPlmcitem.Setaditivo(const Value: Boolean);   
begin                
  Faditivo := Value;   
end;                 

procedure TModelERPlmcitem.Setinicio_aditivo(const Value: Boolean);   
begin                
  Finicio_aditivo := Value;   
end;                 

procedure TModelERPlmcitem.Setdevolucao_aditivo(const Value: Boolean);   
begin                
  Fdevolucao_aditivo := Value;   
end;                 

procedure TModelERPlmcitem.Settipo_aditivo(const Value: Boolean);   
begin                
  Ftipo_aditivo := Value;   
end;                 

procedure TModelERPlmcitem.Setdias_aditivo(const Value: Boolean);   
begin                
  Fdias_aditivo := Value;   
end;                 

procedure TModelERPlmcitem.Setresponsavel(const Value: Boolean);   
begin                
  Fresponsavel := Value;   
end;                 

procedure TModelERPlmcitem.Setcpf(const Value: Boolean);   
begin                
  Fcpf := Value;   
end;                 

procedure TModelERPlmcitem.Setrg(const Value: Boolean);   
begin                
  Frg := Value;   
end;                 

procedure TModelERPlmcitem.Settelefone(const Value: Boolean);   
begin                
  Ftelefone := Value;   
end;                 

procedure TModelERPlmcitem.Setfrete(const Value: Boolean);   
begin                
  Ffrete := Value;   
end;                 

procedure TModelERPlmcitem.Setbusca(const Value: Boolean);   
begin                
  Fbusca := Value;   
end;                 

procedure TModelERPlmcitem.Setvalor_aluguel(const Value: Boolean);   
begin                
  Fvalor_aluguel := Value;   
end;                 


end.
