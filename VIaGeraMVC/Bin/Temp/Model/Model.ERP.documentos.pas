unit Model.ERP.di_adicao;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPdiadicao = class(TModelBase)

private
    Fid : Integer;
    Fid_clientes_documentos : Integer;
    Farquivo : indefinido;
    Fnome_arquivo : indefinido;
    Fativo : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_clientes_documentos(const Value: Integer);
    procedure Setarquivo(const Value: indefinido);
    procedure Setnome_arquivo(const Value: indefinido);
    procedure Setativo(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_clientes_documentos     : Integer read Fid_clientes_documentos write Setid_clientes_documentos;
    property arquivo     : indefinido read Farquivo write Setarquivo;
    property nome_arquivo     : indefinido read Fnome_arquivo write Setnome_arquivo;
    property ativo     : Boolean read Fativo write Setativo;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPdiadicao.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPdiadicao) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPdiadicao(Model).id;
Self.Fid_clientes_documentos         := TModelERPdiadicao(Model).id_clientes_documentos;
Self.Farquivo         := TModelERPdiadicao(Model).arquivo;
Self.Fnome_arquivo         := TModelERPdiadicao(Model).nome_arquivo;
Self.Fativo         := TModelERPdiadicao(Model).ativo;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPdiadicao.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPdiadicao.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPdiadicao.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPdiadicao.Setid_clientes_documentos(const Value: Boolean);   
begin                
  Fid_clientes_documentos := Value;   
end;                 

procedure TModelERPdiadicao.Setarquivo(const Value: Boolean);   
begin                
  Farquivo := Value;   
end;                 

procedure TModelERPdiadicao.Setnome_arquivo(const Value: Boolean);   
begin                
  Fnome_arquivo := Value;   
end;                 

procedure TModelERPdiadicao.Setativo(const Value: Boolean);   
begin                
  Fativo := Value;   
end;                 


end.
