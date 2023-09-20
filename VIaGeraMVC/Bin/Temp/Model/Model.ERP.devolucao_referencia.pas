unit Model.ERP.devolucao_item;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPdevolucaoitem = class(TModelBase)

private
    Fid : Integer;
    Fid_devolucao : Integer;
    Ftipo : WideString;
    Fnfe : WideString;
    Fuf : Integer;
    Faamm : WideString;
    Fcnpj : WideString;
    Fcnpjcpf : WideString;
    Fie : WideString;
    Fmodelo : WideString;
    Fserie : Integer;
    Fnf : Integer;
    Fecf : WideString;
    Fcoo : WideString;
    Fid_devolvido : Integer;
    Fnfce_chave : WideString;
    Fnfce : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_devolucao(const Value: Integer);
    procedure Settipo(const Value: WideString);
    procedure Setnfe(const Value: WideString);
    procedure Setuf(const Value: Integer);
    procedure Setaamm(const Value: WideString);
    procedure Setcnpj(const Value: WideString);
    procedure Setcnpjcpf(const Value: WideString);
    procedure Setie(const Value: WideString);
    procedure Setmodelo(const Value: WideString);
    procedure Setserie(const Value: Integer);
    procedure Setnf(const Value: Integer);
    procedure Setecf(const Value: WideString);
    procedure Setcoo(const Value: WideString);
    procedure Setid_devolvido(const Value: Integer);
    procedure Setnfce_chave(const Value: WideString);
    procedure Setnfce(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_devolucao     : Integer read Fid_devolucao write Setid_devolucao;
    property tipo     : WideString read Ftipo write Settipo;
    property nfe     : WideString read Fnfe write Setnfe;
    property uf     : Integer read Fuf write Setuf;
    property aamm     : WideString read Faamm write Setaamm;
    property cnpj     : WideString read Fcnpj write Setcnpj;
    property cnpjcpf     : WideString read Fcnpjcpf write Setcnpjcpf;
    property ie     : WideString read Fie write Setie;
    property modelo     : WideString read Fmodelo write Setmodelo;
    property serie     : Integer read Fserie write Setserie;
    property nf     : Integer read Fnf write Setnf;
    property ecf     : WideString read Fecf write Setecf;
    property coo     : WideString read Fcoo write Setcoo;
    property id_devolvido     : Integer read Fid_devolvido write Setid_devolvido;
    property nfce_chave     : WideString read Fnfce_chave write Setnfce_chave;
    property nfce     : WideString read Fnfce write Setnfce;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPdevolucaoitem.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPdevolucaoitem) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPdevolucaoitem(Model).id;
Self.Fid_devolucao         := TModelERPdevolucaoitem(Model).id_devolucao;
Self.Ftipo         := TModelERPdevolucaoitem(Model).tipo;
Self.Fnfe         := TModelERPdevolucaoitem(Model).nfe;
Self.Fuf         := TModelERPdevolucaoitem(Model).uf;
Self.Faamm         := TModelERPdevolucaoitem(Model).aamm;
Self.Fcnpj         := TModelERPdevolucaoitem(Model).cnpj;
Self.Fcnpjcpf         := TModelERPdevolucaoitem(Model).cnpjcpf;
Self.Fie         := TModelERPdevolucaoitem(Model).ie;
Self.Fmodelo         := TModelERPdevolucaoitem(Model).modelo;
Self.Fserie         := TModelERPdevolucaoitem(Model).serie;
Self.Fnf         := TModelERPdevolucaoitem(Model).nf;
Self.Fecf         := TModelERPdevolucaoitem(Model).ecf;
Self.Fcoo         := TModelERPdevolucaoitem(Model).coo;
Self.Fid_devolvido         := TModelERPdevolucaoitem(Model).id_devolvido;
Self.Fnfce_chave         := TModelERPdevolucaoitem(Model).nfce_chave;
Self.Fnfce         := TModelERPdevolucaoitem(Model).nfce;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPdevolucaoitem.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPdevolucaoitem.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPdevolucaoitem.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPdevolucaoitem.Setid_devolucao(const Value: Boolean);   
begin                
  Fid_devolucao := Value;   
end;                 

procedure TModelERPdevolucaoitem.Settipo(const Value: Boolean);   
begin                
  Ftipo := Value;   
end;                 

procedure TModelERPdevolucaoitem.Setnfe(const Value: Boolean);   
begin                
  Fnfe := Value;   
end;                 

procedure TModelERPdevolucaoitem.Setuf(const Value: Boolean);   
begin                
  Fuf := Value;   
end;                 

procedure TModelERPdevolucaoitem.Setaamm(const Value: Boolean);   
begin                
  Faamm := Value;   
end;                 

procedure TModelERPdevolucaoitem.Setcnpj(const Value: Boolean);   
begin                
  Fcnpj := Value;   
end;                 

procedure TModelERPdevolucaoitem.Setcnpjcpf(const Value: Boolean);   
begin                
  Fcnpjcpf := Value;   
end;                 

procedure TModelERPdevolucaoitem.Setie(const Value: Boolean);   
begin                
  Fie := Value;   
end;                 

procedure TModelERPdevolucaoitem.Setmodelo(const Value: Boolean);   
begin                
  Fmodelo := Value;   
end;                 

procedure TModelERPdevolucaoitem.Setserie(const Value: Boolean);   
begin                
  Fserie := Value;   
end;                 

procedure TModelERPdevolucaoitem.Setnf(const Value: Boolean);   
begin                
  Fnf := Value;   
end;                 

procedure TModelERPdevolucaoitem.Setecf(const Value: Boolean);   
begin                
  Fecf := Value;   
end;                 

procedure TModelERPdevolucaoitem.Setcoo(const Value: Boolean);   
begin                
  Fcoo := Value;   
end;                 

procedure TModelERPdevolucaoitem.Setid_devolvido(const Value: Boolean);   
begin                
  Fid_devolvido := Value;   
end;                 

procedure TModelERPdevolucaoitem.Setnfce_chave(const Value: Boolean);   
begin                
  Fnfce_chave := Value;   
end;                 

procedure TModelERPdevolucaoitem.Setnfce(const Value: Boolean);   
begin                
  Fnfce := Value;   
end;                 


end.
