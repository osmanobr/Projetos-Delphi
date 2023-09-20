unit Model.ERP.tabela_precos;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPtabelaprecos = class(TModelBase)

private
    Fid : Integer;
    Fnome : WideString;
    Fconteudo : WideString;
    Fid_produto : Integer;

    procedure Setid(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setconteudo(const Value: WideString);
    procedure Setid_produto(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property nome     : WideString read Fnome write Setnome;
    property conteudo     : WideString read Fconteudo write Setconteudo;
    property id_produto     : Integer read Fid_produto write Setid_produto;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPtabelaprecos.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPtabelaprecos) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPtabelaprecos(Model).id;
Self.Fnome         := TModelERPtabelaprecos(Model).nome;
Self.Fconteudo         := TModelERPtabelaprecos(Model).conteudo;
Self.Fid_produto         := TModelERPtabelaprecos(Model).id_produto;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPtabelaprecos.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPtabelaprecos.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPtabelaprecos.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPtabelaprecos.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPtabelaprecos.Setconteudo(const Value: Boolean);   
begin                
  Fconteudo := Value;   
end;                 

procedure TModelERPtabelaprecos.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 


end.
