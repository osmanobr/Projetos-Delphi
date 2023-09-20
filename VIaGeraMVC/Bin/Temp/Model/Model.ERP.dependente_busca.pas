unit Model.ERP.declaracao_importacao;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPdeclaracaoimportacao = class(TModelBase)

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
 function TModelERPdeclaracaoimportacao.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPdeclaracaoimportacao) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPdeclaracaoimportacao(Model).id;
Self.Fid_empresa         := TModelERPdeclaracaoimportacao(Model).id_empresa;
Self.Fid_cliente         := TModelERPdeclaracaoimportacao(Model).id_cliente;
Self.Fnome         := TModelERPdeclaracaoimportacao(Model).nome;
Self.Ftelefone         := TModelERPdeclaracaoimportacao(Model).telefone;
Self.Fcelular         := TModelERPdeclaracaoimportacao(Model).celular;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPdeclaracaoimportacao.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPdeclaracaoimportacao.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPdeclaracaoimportacao.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPdeclaracaoimportacao.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPdeclaracaoimportacao.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPdeclaracaoimportacao.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPdeclaracaoimportacao.Settelefone(const Value: Boolean);   
begin                
  Ftelefone := Value;   
end;                 

procedure TModelERPdeclaracaoimportacao.Setcelular(const Value: Boolean);   
begin                
  Fcelular := Value;   
end;                 


end.
