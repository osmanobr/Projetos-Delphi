unit Model.ERP.grupo;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPgrupo = class(TModelBase)

private
    Fid : Integer;
    Fnome : WideString;
    Fclick : Boolean;
    Fcomissao : Double;
    Fmargem_lucro : Double;
    Fmargem_lucro_atacado : Double;
    Fgera_comissao : Boolean;
    Fcoeficiente_fabricacao : Double;
    Ffrete_valor : Double;
    Fcomissao_vendedor : Double;

    procedure Setid(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setclick(const Value: Boolean);
    procedure Setcomissao(const Value: Double);
    procedure Setmargem_lucro(const Value: Double);
    procedure Setmargem_lucro_atacado(const Value: Double);
    procedure Setgera_comissao(const Value: Boolean);
    procedure Setcoeficiente_fabricacao(const Value: Double);
    procedure Setfrete_valor(const Value: Double);
    procedure Setcomissao_vendedor(const Value: Double);

public
    property id     : Integer read Fid write Setid;
    property nome     : WideString read Fnome write Setnome;
    property click     : Boolean read Fclick write Setclick;
    property comissao     : Double read Fcomissao write Setcomissao;
    property margem_lucro     : Double read Fmargem_lucro write Setmargem_lucro;
    property margem_lucro_atacado     : Double read Fmargem_lucro_atacado write Setmargem_lucro_atacado;
    property gera_comissao     : Boolean read Fgera_comissao write Setgera_comissao;
    property coeficiente_fabricacao     : Double read Fcoeficiente_fabricacao write Setcoeficiente_fabricacao;
    property frete_valor     : Double read Ffrete_valor write Setfrete_valor;
    property comissao_vendedor     : Double read Fcomissao_vendedor write Setcomissao_vendedor;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPgrupo.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPgrupo) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPgrupo(Model).id;
Self.Fnome         := TModelERPgrupo(Model).nome;
Self.Fclick         := TModelERPgrupo(Model).click;
Self.Fcomissao         := TModelERPgrupo(Model).comissao;
Self.Fmargem_lucro         := TModelERPgrupo(Model).margem_lucro;
Self.Fmargem_lucro_atacado         := TModelERPgrupo(Model).margem_lucro_atacado;
Self.Fgera_comissao         := TModelERPgrupo(Model).gera_comissao;
Self.Fcoeficiente_fabricacao         := TModelERPgrupo(Model).coeficiente_fabricacao;
Self.Ffrete_valor         := TModelERPgrupo(Model).frete_valor;
Self.Fcomissao_vendedor         := TModelERPgrupo(Model).comissao_vendedor;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPgrupo.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPgrupo.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPgrupo.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPgrupo.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPgrupo.Setclick(const Value: Boolean);   
begin                
  Fclick := Value;   
end;                 

procedure TModelERPgrupo.Setcomissao(const Value: Boolean);   
begin                
  Fcomissao := Value;   
end;                 

procedure TModelERPgrupo.Setmargem_lucro(const Value: Boolean);   
begin                
  Fmargem_lucro := Value;   
end;                 

procedure TModelERPgrupo.Setmargem_lucro_atacado(const Value: Boolean);   
begin                
  Fmargem_lucro_atacado := Value;   
end;                 

procedure TModelERPgrupo.Setgera_comissao(const Value: Boolean);   
begin                
  Fgera_comissao := Value;   
end;                 

procedure TModelERPgrupo.Setcoeficiente_fabricacao(const Value: Boolean);   
begin                
  Fcoeficiente_fabricacao := Value;   
end;                 

procedure TModelERPgrupo.Setfrete_valor(const Value: Boolean);   
begin                
  Ffrete_valor := Value;   
end;                 

procedure TModelERPgrupo.Setcomissao_vendedor(const Value: Boolean);   
begin                
  Fcomissao_vendedor := Value;   
end;                 


end.
