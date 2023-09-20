unit Model.ERP.dependente_busca;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPdependentebusca = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_cliente : Integer;
    Fnome : WideString;
    Ftelefone : WideString;
    Fcelular : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Settelefone(const Value: WideString);
    procedure Setcelular(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property nome     : WideString read Fnome write Setnome;
    property telefone     : WideString read Ftelefone write Settelefone;
    property celular     : WideString read Fcelular write Setcelular;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPdependentebusca.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPdependentebusca) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPdependentebusca(Model).id;
Self.Fid_empresa         := TModelERPdependentebusca(Model).id_empresa;
Self.Fid_cliente         := TModelERPdependentebusca(Model).id_cliente;
Self.Fnome         := TModelERPdependentebusca(Model).nome;
Self.Ftelefone         := TModelERPdependentebusca(Model).telefone;
Self.Fcelular         := TModelERPdependentebusca(Model).celular;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPdependentebusca.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPdependentebusca.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPdependentebusca.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPdependentebusca.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPdependentebusca.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPdependentebusca.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPdependentebusca.Settelefone(const Value: Boolean);   
begin                
  Ftelefone := Value;   
end;                 

procedure TModelERPdependentebusca.Setcelular(const Value: Boolean);   
begin                
  Fcelular := Value;   
end;                 


end.
