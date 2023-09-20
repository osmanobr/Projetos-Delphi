unit Model.ERP.paf_d;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPpafd = class(TModelBase)

private
    Fcnpj : indefinido;
    Finscricao_estadual : indefinido;
    Finscricao_municipal : indefinido;
    Fdenominacao : indefinido;
    Faplicativo : indefinido;
    Fversao : indefinido;
    Fmd5 : indefinido;
    Fdata_homologacao : indefinido;
    Fdata_aplicativo : indefinido;
    Fversao_er : indefinido;
    Ftelefone : indefinido;
    Fresponsavel : indefinido;
    Fendereco : indefinido;
    Flaudo : indefinido;

    procedure Setcnpj(const Value: indefinido);
    procedure Setinscricao_estadual(const Value: indefinido);
    procedure Setinscricao_municipal(const Value: indefinido);
    procedure Setdenominacao(const Value: indefinido);
    procedure Setaplicativo(const Value: indefinido);
    procedure Setversao(const Value: indefinido);
    procedure Setmd5(const Value: indefinido);
    procedure Setdata_homologacao(const Value: indefinido);
    procedure Setdata_aplicativo(const Value: indefinido);
    procedure Setversao_er(const Value: indefinido);
    procedure Settelefone(const Value: indefinido);
    procedure Setresponsavel(const Value: indefinido);
    procedure Setendereco(const Value: indefinido);
    procedure Setlaudo(const Value: indefinido);

public
    property cnpj     : indefinido read Fcnpj write Setcnpj;
    property inscricao_estadual     : indefinido read Finscricao_estadual write Setinscricao_estadual;
    property inscricao_municipal     : indefinido read Finscricao_municipal write Setinscricao_municipal;
    property denominacao     : indefinido read Fdenominacao write Setdenominacao;
    property aplicativo     : indefinido read Faplicativo write Setaplicativo;
    property versao     : indefinido read Fversao write Setversao;
    property md5     : indefinido read Fmd5 write Setmd5;
    property data_homologacao     : indefinido read Fdata_homologacao write Setdata_homologacao;
    property data_aplicativo     : indefinido read Fdata_aplicativo write Setdata_aplicativo;
    property versao_er     : indefinido read Fversao_er write Setversao_er;
    property telefone     : indefinido read Ftelefone write Settelefone;
    property responsavel     : indefinido read Fresponsavel write Setresponsavel;
    property endereco     : indefinido read Fendereco write Setendereco;
    property laudo     : indefinido read Flaudo write Setlaudo;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPpafd.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPpafd) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fcnpj         := TModelERPpafd(Model).cnpj;
Self.Finscricao_estadual         := TModelERPpafd(Model).inscricao_estadual;
Self.Finscricao_municipal         := TModelERPpafd(Model).inscricao_municipal;
Self.Fdenominacao         := TModelERPpafd(Model).denominacao;
Self.Faplicativo         := TModelERPpafd(Model).aplicativo;
Self.Fversao         := TModelERPpafd(Model).versao;
Self.Fmd5         := TModelERPpafd(Model).md5;
Self.Fdata_homologacao         := TModelERPpafd(Model).data_homologacao;
Self.Fdata_aplicativo         := TModelERPpafd(Model).data_aplicativo;
Self.Fversao_er         := TModelERPpafd(Model).versao_er;
Self.Ftelefone         := TModelERPpafd(Model).telefone;
Self.Fresponsavel         := TModelERPpafd(Model).responsavel;
Self.Fendereco         := TModelERPpafd(Model).endereco;
Self.Flaudo         := TModelERPpafd(Model).laudo;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPpafd.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPpafd.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPpafd.Setcnpj(const Value: Boolean);   
begin                
  Fcnpj := Value;   
end;                 

procedure TModelERPpafd.Setinscricao_estadual(const Value: Boolean);   
begin                
  Finscricao_estadual := Value;   
end;                 

procedure TModelERPpafd.Setinscricao_municipal(const Value: Boolean);   
begin                
  Finscricao_municipal := Value;   
end;                 

procedure TModelERPpafd.Setdenominacao(const Value: Boolean);   
begin                
  Fdenominacao := Value;   
end;                 

procedure TModelERPpafd.Setaplicativo(const Value: Boolean);   
begin                
  Faplicativo := Value;   
end;                 

procedure TModelERPpafd.Setversao(const Value: Boolean);   
begin                
  Fversao := Value;   
end;                 

procedure TModelERPpafd.Setmd5(const Value: Boolean);   
begin                
  Fmd5 := Value;   
end;                 

procedure TModelERPpafd.Setdata_homologacao(const Value: Boolean);   
begin                
  Fdata_homologacao := Value;   
end;                 

procedure TModelERPpafd.Setdata_aplicativo(const Value: Boolean);   
begin                
  Fdata_aplicativo := Value;   
end;                 

procedure TModelERPpafd.Setversao_er(const Value: Boolean);   
begin                
  Fversao_er := Value;   
end;                 

procedure TModelERPpafd.Settelefone(const Value: Boolean);   
begin                
  Ftelefone := Value;   
end;                 

procedure TModelERPpafd.Setresponsavel(const Value: Boolean);   
begin                
  Fresponsavel := Value;   
end;                 

procedure TModelERPpafd.Setendereco(const Value: Boolean);   
begin                
  Fendereco := Value;   
end;                 

procedure TModelERPpafd.Setlaudo(const Value: Boolean);   
begin                
  Flaudo := Value;   
end;                 


end.
