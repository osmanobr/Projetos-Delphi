unit Model.ERP.ean_produtos_alterados;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPeanprodutosalterados = class(TModelBase)

private
    Fid : Integer;
    Fdata : TDateTime;
    Fserie : WideString;
    Fdoc_ini : WideString;
    Fdoc_fim : WideString;
    Fautorizacao : WideString;

    procedure Setid(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setserie(const Value: WideString);
    procedure Setdoc_ini(const Value: WideString);
    procedure Setdoc_fim(const Value: WideString);
    procedure Setautorizacao(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property data     : TDateTime read Fdata write Setdata;
    property serie     : WideString read Fserie write Setserie;
    property doc_ini     : WideString read Fdoc_ini write Setdoc_ini;
    property doc_fim     : WideString read Fdoc_fim write Setdoc_fim;
    property autorizacao     : WideString read Fautorizacao write Setautorizacao;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPeanprodutosalterados.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPeanprodutosalterados) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPeanprodutosalterados(Model).id;
Self.Fdata         := TModelERPeanprodutosalterados(Model).data;
Self.Fserie         := TModelERPeanprodutosalterados(Model).serie;
Self.Fdoc_ini         := TModelERPeanprodutosalterados(Model).doc_ini;
Self.Fdoc_fim         := TModelERPeanprodutosalterados(Model).doc_fim;
Self.Fautorizacao         := TModelERPeanprodutosalterados(Model).autorizacao;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPeanprodutosalterados.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPeanprodutosalterados.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPeanprodutosalterados.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPeanprodutosalterados.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPeanprodutosalterados.Setserie(const Value: Boolean);   
begin                
  Fserie := Value;   
end;                 

procedure TModelERPeanprodutosalterados.Setdoc_ini(const Value: Boolean);   
begin                
  Fdoc_ini := Value;   
end;                 

procedure TModelERPeanprodutosalterados.Setdoc_fim(const Value: Boolean);   
begin                
  Fdoc_fim := Value;   
end;                 

procedure TModelERPeanprodutosalterados.Setautorizacao(const Value: Boolean);   
begin                
  Fautorizacao := Value;   
end;                 


end.
