unit Model.ERP.import_vendedor;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPimportvendedor = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fnome : WideString;
    Fimpressao_dos : WideString;
    Fimpressao_win : WideString;
    Fcaminho : WideString;
    Fcolunas : WideString;
    Forcamento : indefinido;
    Fexpedicao : indefinido;
    Fwindows : indefinido;
    Fpapel : WideString;
    Fnfiscal : Boolean;
    Fmodelo : indefinido;
    Fentrega_windows : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setimpressao_dos(const Value: WideString);
    procedure Setimpressao_win(const Value: WideString);
    procedure Setcaminho(const Value: WideString);
    procedure Setcolunas(const Value: WideString);
    procedure Setorcamento(const Value: indefinido);
    procedure Setexpedicao(const Value: indefinido);
    procedure Setwindows(const Value: indefinido);
    procedure Setpapel(const Value: WideString);
    procedure Setnfiscal(const Value: Boolean);
    procedure Setmodelo(const Value: indefinido);
    procedure Setentrega_windows(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property nome     : WideString read Fnome write Setnome;
    property impressao_dos     : WideString read Fimpressao_dos write Setimpressao_dos;
    property impressao_win     : WideString read Fimpressao_win write Setimpressao_win;
    property caminho     : WideString read Fcaminho write Setcaminho;
    property colunas     : WideString read Fcolunas write Setcolunas;
    property orcamento     : indefinido read Forcamento write Setorcamento;
    property expedicao     : indefinido read Fexpedicao write Setexpedicao;
    property windows     : indefinido read Fwindows write Setwindows;
    property papel     : WideString read Fpapel write Setpapel;
    property nfiscal     : Boolean read Fnfiscal write Setnfiscal;
    property modelo     : indefinido read Fmodelo write Setmodelo;
    property entrega_windows     : Boolean read Fentrega_windows write Setentrega_windows;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPimportvendedor.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPimportvendedor) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPimportvendedor(Model).id;
Self.Fid_empresa         := TModelERPimportvendedor(Model).id_empresa;
Self.Fnome         := TModelERPimportvendedor(Model).nome;
Self.Fimpressao_dos         := TModelERPimportvendedor(Model).impressao_dos;
Self.Fimpressao_win         := TModelERPimportvendedor(Model).impressao_win;
Self.Fcaminho         := TModelERPimportvendedor(Model).caminho;
Self.Fcolunas         := TModelERPimportvendedor(Model).colunas;
Self.Forcamento         := TModelERPimportvendedor(Model).orcamento;
Self.Fexpedicao         := TModelERPimportvendedor(Model).expedicao;
Self.Fwindows         := TModelERPimportvendedor(Model).windows;
Self.Fpapel         := TModelERPimportvendedor(Model).papel;
Self.Fnfiscal         := TModelERPimportvendedor(Model).nfiscal;
Self.Fmodelo         := TModelERPimportvendedor(Model).modelo;
Self.Fentrega_windows         := TModelERPimportvendedor(Model).entrega_windows;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPimportvendedor.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPimportvendedor.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPimportvendedor.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPimportvendedor.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPimportvendedor.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPimportvendedor.Setimpressao_dos(const Value: Boolean);   
begin                
  Fimpressao_dos := Value;   
end;                 

procedure TModelERPimportvendedor.Setimpressao_win(const Value: Boolean);   
begin                
  Fimpressao_win := Value;   
end;                 

procedure TModelERPimportvendedor.Setcaminho(const Value: Boolean);   
begin                
  Fcaminho := Value;   
end;                 

procedure TModelERPimportvendedor.Setcolunas(const Value: Boolean);   
begin                
  Fcolunas := Value;   
end;                 

procedure TModelERPimportvendedor.Setorcamento(const Value: Boolean);   
begin                
  Forcamento := Value;   
end;                 

procedure TModelERPimportvendedor.Setexpedicao(const Value: Boolean);   
begin                
  Fexpedicao := Value;   
end;                 

procedure TModelERPimportvendedor.Setwindows(const Value: Boolean);   
begin                
  Fwindows := Value;   
end;                 

procedure TModelERPimportvendedor.Setpapel(const Value: Boolean);   
begin                
  Fpapel := Value;   
end;                 

procedure TModelERPimportvendedor.Setnfiscal(const Value: Boolean);   
begin                
  Fnfiscal := Value;   
end;                 

procedure TModelERPimportvendedor.Setmodelo(const Value: Boolean);   
begin                
  Fmodelo := Value;   
end;                 

procedure TModelERPimportvendedor.Setentrega_windows(const Value: Boolean);   
begin                
  Fentrega_windows := Value;   
end;                 


end.
