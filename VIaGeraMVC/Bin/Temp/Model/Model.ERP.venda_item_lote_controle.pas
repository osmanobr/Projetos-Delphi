unit Model.ERP.venda_item_alteracao;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPvendaitemalteracao = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_venda_item : Integer;
    Fid_venda : Integer;
    Fid_lote : Integer;
    Fid_produto : Integer;
    Fgerado : Boolean;
    Fquantidade : Double;
    Freserva : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_venda_item(const Value: Integer);
    procedure Setid_venda(const Value: Integer);
    procedure Setid_lote(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setgerado(const Value: Boolean);
    procedure Setquantidade(const Value: Double);
    procedure Setreserva(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_venda_item     : Integer read Fid_venda_item write Setid_venda_item;
    property id_venda     : Integer read Fid_venda write Setid_venda;
    property id_lote     : Integer read Fid_lote write Setid_lote;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property gerado     : Boolean read Fgerado write Setgerado;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property reserva     : Boolean read Freserva write Setreserva;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPvendaitemalteracao.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPvendaitemalteracao) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPvendaitemalteracao(Model).id;
Self.Fid_empresa         := TModelERPvendaitemalteracao(Model).id_empresa;
Self.Fid_venda_item         := TModelERPvendaitemalteracao(Model).id_venda_item;
Self.Fid_venda         := TModelERPvendaitemalteracao(Model).id_venda;
Self.Fid_lote         := TModelERPvendaitemalteracao(Model).id_lote;
Self.Fid_produto         := TModelERPvendaitemalteracao(Model).id_produto;
Self.Fgerado         := TModelERPvendaitemalteracao(Model).gerado;
Self.Fquantidade         := TModelERPvendaitemalteracao(Model).quantidade;
Self.Freserva         := TModelERPvendaitemalteracao(Model).reserva;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPvendaitemalteracao.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPvendaitemalteracao.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPvendaitemalteracao.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPvendaitemalteracao.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPvendaitemalteracao.Setid_venda_item(const Value: Boolean);   
begin                
  Fid_venda_item := Value;   
end;                 

procedure TModelERPvendaitemalteracao.Setid_venda(const Value: Boolean);   
begin                
  Fid_venda := Value;   
end;                 

procedure TModelERPvendaitemalteracao.Setid_lote(const Value: Boolean);   
begin                
  Fid_lote := Value;   
end;                 

procedure TModelERPvendaitemalteracao.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPvendaitemalteracao.Setgerado(const Value: Boolean);   
begin                
  Fgerado := Value;   
end;                 

procedure TModelERPvendaitemalteracao.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPvendaitemalteracao.Setreserva(const Value: Boolean);   
begin                
  Freserva := Value;   
end;                 


end.
