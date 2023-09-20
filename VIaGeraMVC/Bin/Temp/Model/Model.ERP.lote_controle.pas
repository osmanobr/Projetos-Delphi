unit Model.ERP.lote_controlado;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPlotecontrolado = class(TModelBase)

private
    Fid : Integer;
    Fid_produto : Integer;
    Fdata : TDateTime;
    Fdata_fabricacao : TDateTime;
    Fdata_validade : TDateTime;
    Fnome_produto : WideString;
    Festoque : indefinido;
    Foperacao : indefinido;
    Fquantidade : indefinido;
    Fid_operacao : Integer;
    Fnota : indefinido;
    Fid_empresa : Integer;
    Flote : WideString;
    Fcontrole : indefinido;
    Faviso_dias : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setdata_fabricacao(const Value: TDateTime);
    procedure Setdata_validade(const Value: TDateTime);
    procedure Setnome_produto(const Value: WideString);
    procedure Setestoque(const Value: indefinido);
    procedure Setoperacao(const Value: indefinido);
    procedure Setquantidade(const Value: indefinido);
    procedure Setid_operacao(const Value: Integer);
    procedure Setnota(const Value: indefinido);
    procedure Setid_empresa(const Value: Integer);
    procedure Setlote(const Value: WideString);
    procedure Setcontrole(const Value: indefinido);
    procedure Setaviso_dias(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property data     : TDateTime read Fdata write Setdata;
    property data_fabricacao     : TDateTime read Fdata_fabricacao write Setdata_fabricacao;
    property data_validade     : TDateTime read Fdata_validade write Setdata_validade;
    property nome_produto     : WideString read Fnome_produto write Setnome_produto;
    property estoque     : indefinido read Festoque write Setestoque;
    property operacao     : indefinido read Foperacao write Setoperacao;
    property quantidade     : indefinido read Fquantidade write Setquantidade;
    property id_operacao     : Integer read Fid_operacao write Setid_operacao;
    property nota     : indefinido read Fnota write Setnota;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property lote     : WideString read Flote write Setlote;
    property controle     : indefinido read Fcontrole write Setcontrole;
    property aviso_dias     : Integer read Faviso_dias write Setaviso_dias;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPlotecontrolado.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPlotecontrolado) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPlotecontrolado(Model).id;
Self.Fid_produto         := TModelERPlotecontrolado(Model).id_produto;
Self.Fdata         := TModelERPlotecontrolado(Model).data;
Self.Fdata_fabricacao         := TModelERPlotecontrolado(Model).data_fabricacao;
Self.Fdata_validade         := TModelERPlotecontrolado(Model).data_validade;
Self.Fnome_produto         := TModelERPlotecontrolado(Model).nome_produto;
Self.Festoque         := TModelERPlotecontrolado(Model).estoque;
Self.Foperacao         := TModelERPlotecontrolado(Model).operacao;
Self.Fquantidade         := TModelERPlotecontrolado(Model).quantidade;
Self.Fid_operacao         := TModelERPlotecontrolado(Model).id_operacao;
Self.Fnota         := TModelERPlotecontrolado(Model).nota;
Self.Fid_empresa         := TModelERPlotecontrolado(Model).id_empresa;
Self.Flote         := TModelERPlotecontrolado(Model).lote;
Self.Fcontrole         := TModelERPlotecontrolado(Model).controle;
Self.Faviso_dias         := TModelERPlotecontrolado(Model).aviso_dias;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPlotecontrolado.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPlotecontrolado.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPlotecontrolado.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPlotecontrolado.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPlotecontrolado.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPlotecontrolado.Setdata_fabricacao(const Value: Boolean);   
begin                
  Fdata_fabricacao := Value;   
end;                 

procedure TModelERPlotecontrolado.Setdata_validade(const Value: Boolean);   
begin                
  Fdata_validade := Value;   
end;                 

procedure TModelERPlotecontrolado.Setnome_produto(const Value: Boolean);   
begin                
  Fnome_produto := Value;   
end;                 

procedure TModelERPlotecontrolado.Setestoque(const Value: Boolean);   
begin                
  Festoque := Value;   
end;                 

procedure TModelERPlotecontrolado.Setoperacao(const Value: Boolean);   
begin                
  Foperacao := Value;   
end;                 

procedure TModelERPlotecontrolado.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPlotecontrolado.Setid_operacao(const Value: Boolean);   
begin                
  Fid_operacao := Value;   
end;                 

procedure TModelERPlotecontrolado.Setnota(const Value: Boolean);   
begin                
  Fnota := Value;   
end;                 

procedure TModelERPlotecontrolado.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPlotecontrolado.Setlote(const Value: Boolean);   
begin                
  Flote := Value;   
end;                 

procedure TModelERPlotecontrolado.Setcontrole(const Value: Boolean);   
begin                
  Fcontrole := Value;   
end;                 

procedure TModelERPlotecontrolado.Setaviso_dias(const Value: Boolean);   
begin                
  Faviso_dias := Value;   
end;                 


end.
