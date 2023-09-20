unit Model.ERP.cartao;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcartao = class(TModelBase)

private
    Fid : Integer;
    Fbin : WideString;
    Fnome_cartao : WideString;
    Ftipo_operacao : WideString;
    Frede : WideString;

    procedure Setid(const Value: Integer);
    procedure Setbin(const Value: WideString);
    procedure Setnome_cartao(const Value: WideString);
    procedure Settipo_operacao(const Value: WideString);
    procedure Setrede(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property bin     : WideString read Fbin write Setbin;
    property nome_cartao     : WideString read Fnome_cartao write Setnome_cartao;
    property tipo_operacao     : WideString read Ftipo_operacao write Settipo_operacao;
    property rede     : WideString read Frede write Setrede;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcartao.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcartao) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcartao(Model).id;
Self.Fbin         := TModelERPcartao(Model).bin;
Self.Fnome_cartao         := TModelERPcartao(Model).nome_cartao;
Self.Ftipo_operacao         := TModelERPcartao(Model).tipo_operacao;
Self.Frede         := TModelERPcartao(Model).rede;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcartao.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcartao.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcartao.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcartao.Setbin(const Value: Boolean);   
begin                
  Fbin := Value;   
end;                 

procedure TModelERPcartao.Setnome_cartao(const Value: Boolean);   
begin                
  Fnome_cartao := Value;   
end;                 

procedure TModelERPcartao.Settipo_operacao(const Value: Boolean);   
begin                
  Ftipo_operacao := Value;   
end;                 

procedure TModelERPcartao.Setrede(const Value: Boolean);   
begin                
  Frede := Value;   
end;                 


end.
