unit Model.ERP.lote_comissao_pagamento_item;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPlotecomissaopagamentoitem = class(TModelBase)

private
    Fid : Integer;
    Fid_lote : Integer;
    Fid_estoque : Integer;
    Fid_empresa : Integer;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Fdata : TDateTime;
    Fquantidade : indefinido;
    Festoque : WideString;
    Foperacao : WideString;
    Fid_operacao : Integer;
    Fnota : WideString;
    Ftipo : WideString;
    Fquantidade_atual : indefinido;
    Festoque_atual : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_lote(const Value: Integer);
    procedure Setid_estoque(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setnome_produto(const Value: WideString);
    procedure Setdata(const Value: TDateTime);
    procedure Setquantidade(const Value: indefinido);
    procedure Setestoque(const Value: WideString);
    procedure Setoperacao(const Value: WideString);
    procedure Setid_operacao(const Value: Integer);
    procedure Setnota(const Value: WideString);
    procedure Settipo(const Value: WideString);
    procedure Setquantidade_atual(const Value: indefinido);
    procedure Setestoque_atual(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_lote     : Integer read Fid_lote write Setid_lote;
    property id_estoque     : Integer read Fid_estoque write Setid_estoque;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property nome_produto     : WideString read Fnome_produto write Setnome_produto;
    property data     : TDateTime read Fdata write Setdata;
    property quantidade     : indefinido read Fquantidade write Setquantidade;
    property estoque     : WideString read Festoque write Setestoque;
    property operacao     : WideString read Foperacao write Setoperacao;
    property id_operacao     : Integer read Fid_operacao write Setid_operacao;
    property nota     : WideString read Fnota write Setnota;
    property tipo     : WideString read Ftipo write Settipo;
    property quantidade_atual     : indefinido read Fquantidade_atual write Setquantidade_atual;
    property estoque_atual     : indefinido read Festoque_atual write Setestoque_atual;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPlotecomissaopagamentoitem.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPlotecomissaopagamentoitem) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPlotecomissaopagamentoitem(Model).id;
Self.Fid_lote         := TModelERPlotecomissaopagamentoitem(Model).id_lote;
Self.Fid_estoque         := TModelERPlotecomissaopagamentoitem(Model).id_estoque;
Self.Fid_empresa         := TModelERPlotecomissaopagamentoitem(Model).id_empresa;
Self.Fid_produto         := TModelERPlotecomissaopagamentoitem(Model).id_produto;
Self.Fnome_produto         := TModelERPlotecomissaopagamentoitem(Model).nome_produto;
Self.Fdata         := TModelERPlotecomissaopagamentoitem(Model).data;
Self.Fquantidade         := TModelERPlotecomissaopagamentoitem(Model).quantidade;
Self.Festoque         := TModelERPlotecomissaopagamentoitem(Model).estoque;
Self.Foperacao         := TModelERPlotecomissaopagamentoitem(Model).operacao;
Self.Fid_operacao         := TModelERPlotecomissaopagamentoitem(Model).id_operacao;
Self.Fnota         := TModelERPlotecomissaopagamentoitem(Model).nota;
Self.Ftipo         := TModelERPlotecomissaopagamentoitem(Model).tipo;
Self.Fquantidade_atual         := TModelERPlotecomissaopagamentoitem(Model).quantidade_atual;
Self.Festoque_atual         := TModelERPlotecomissaopagamentoitem(Model).estoque_atual;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPlotecomissaopagamentoitem.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPlotecomissaopagamentoitem.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPlotecomissaopagamentoitem.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPlotecomissaopagamentoitem.Setid_lote(const Value: Boolean);   
begin                
  Fid_lote := Value;   
end;                 

procedure TModelERPlotecomissaopagamentoitem.Setid_estoque(const Value: Boolean);   
begin                
  Fid_estoque := Value;   
end;                 

procedure TModelERPlotecomissaopagamentoitem.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPlotecomissaopagamentoitem.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPlotecomissaopagamentoitem.Setnome_produto(const Value: Boolean);   
begin                
  Fnome_produto := Value;   
end;                 

procedure TModelERPlotecomissaopagamentoitem.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPlotecomissaopagamentoitem.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPlotecomissaopagamentoitem.Setestoque(const Value: Boolean);   
begin                
  Festoque := Value;   
end;                 

procedure TModelERPlotecomissaopagamentoitem.Setoperacao(const Value: Boolean);   
begin                
  Foperacao := Value;   
end;                 

procedure TModelERPlotecomissaopagamentoitem.Setid_operacao(const Value: Boolean);   
begin                
  Fid_operacao := Value;   
end;                 

procedure TModelERPlotecomissaopagamentoitem.Setnota(const Value: Boolean);   
begin                
  Fnota := Value;   
end;                 

procedure TModelERPlotecomissaopagamentoitem.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPlotecomissaopagamentoitem.Setquantidade_atual(const Value: Boolean);   
begin                
  Fquantidade_atual := Value;   
end;                 

procedure TModelERPlotecomissaopagamentoitem.Setestoque_atual(const Value: Boolean);   
begin                
  Festoque_atual := Value;   
end;                 


end.
