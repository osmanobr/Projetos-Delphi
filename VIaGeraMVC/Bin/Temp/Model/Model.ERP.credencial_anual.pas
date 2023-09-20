unit Model.ERP.credencial;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcredencial = class(TModelBase)

private
    Fid : Integer;
    Fid_classe : Integer;
    Fid_credencial : Integer;
    Fcredencial : Integer;
    Fnome : WideString;
    Fendereco : WideString;
    Fcpf : WideString;
    Frg : WideString;
    Frg_ssp : WideString;
    Fclasse : WideString;
    Fficha : indefinido;
    Fano : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_classe(const Value: Integer);
    procedure Setid_credencial(const Value: Integer);
    procedure Setcredencial(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setendereco(const Value: WideString);
    procedure Setcpf(const Value: WideString);
    procedure Setrg(const Value: WideString);
    procedure Setrg_ssp(const Value: WideString);
    procedure Setclasse(const Value: WideString);
    procedure Setficha(const Value: indefinido);
    procedure Setano(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_classe     : Integer read Fid_classe write Setid_classe;
    property id_credencial     : Integer read Fid_credencial write Setid_credencial;
    property credencial     : Integer read Fcredencial write Setcredencial;
    property nome     : WideString read Fnome write Setnome;
    property endereco     : WideString read Fendereco write Setendereco;
    property cpf     : WideString read Fcpf write Setcpf;
    property rg     : WideString read Frg write Setrg;
    property rg_ssp     : WideString read Frg_ssp write Setrg_ssp;
    property classe     : WideString read Fclasse write Setclasse;
    property ficha     : indefinido read Fficha write Setficha;
    property ano     : Integer read Fano write Setano;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcredencial.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcredencial) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcredencial(Model).id;
Self.Fid_classe         := TModelERPcredencial(Model).id_classe;
Self.Fid_credencial         := TModelERPcredencial(Model).id_credencial;
Self.Fcredencial         := TModelERPcredencial(Model).credencial;
Self.Fnome         := TModelERPcredencial(Model).nome;
Self.Fendereco         := TModelERPcredencial(Model).endereco;
Self.Fcpf         := TModelERPcredencial(Model).cpf;
Self.Frg         := TModelERPcredencial(Model).rg;
Self.Frg_ssp         := TModelERPcredencial(Model).rg_ssp;
Self.Fclasse         := TModelERPcredencial(Model).classe;
Self.Fficha         := TModelERPcredencial(Model).ficha;
Self.Fano         := TModelERPcredencial(Model).ano;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcredencial.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcredencial.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcredencial.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcredencial.Setid_classe(const Value: Boolean);   
begin                
  Fid_classe := Value;   
end;                 

procedure TModelERPcredencial.Setid_credencial(const Value: Boolean);   
begin                
  Fid_credencial := Value;   
end;                 

procedure TModelERPcredencial.Setcredencial(const Value: Boolean);   
begin                
  Fcredencial := Value;   
end;                 

procedure TModelERPcredencial.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPcredencial.Setendereco(const Value: Boolean);   
begin                
  Fendereco := Value;   
end;                 

procedure TModelERPcredencial.Setcpf(const Value: Boolean);   
begin                
  Fcpf := Value;   
end;                 

procedure TModelERPcredencial.Setrg(const Value: Boolean);   
begin                
  Frg := Value;   
end;                 

procedure TModelERPcredencial.Setrg_ssp(const Value: Boolean);   
begin                
  Frg_ssp := Value;   
end;                 

procedure TModelERPcredencial.Setclasse(const Value: Boolean);   
begin                
  Fclasse := Value;   
end;                 

procedure TModelERPcredencial.Setficha(const Value: Boolean);   
begin                
  Fficha := Value;   
end;                 

procedure TModelERPcredencial.Setano(const Value: Boolean);   
begin                
  Fano := Value;   
end;                 


end.
