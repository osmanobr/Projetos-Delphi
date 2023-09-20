unit Model.ERP.conversao_ncm_to;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPconversaoncmto = class(TModelBase)

private
    Fid : Integer;
    Fid_classe : Integer;
    Fcredencial : Integer;
    Fnome : WideString;
    Fendereco : WideString;
    Fcpf : WideString;
    Frg : WideString;
    Frg_ssp : WideString;
    Fclasse : WideString;
    Fficha : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_classe(const Value: Integer);
    procedure Setcredencial(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setendereco(const Value: WideString);
    procedure Setcpf(const Value: WideString);
    procedure Setrg(const Value: WideString);
    procedure Setrg_ssp(const Value: WideString);
    procedure Setclasse(const Value: WideString);
    procedure Setficha(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_classe     : Integer read Fid_classe write Setid_classe;
    property credencial     : Integer read Fcredencial write Setcredencial;
    property nome     : WideString read Fnome write Setnome;
    property endereco     : WideString read Fendereco write Setendereco;
    property cpf     : WideString read Fcpf write Setcpf;
    property rg     : WideString read Frg write Setrg;
    property rg_ssp     : WideString read Frg_ssp write Setrg_ssp;
    property classe     : WideString read Fclasse write Setclasse;
    property ficha     : indefinido read Fficha write Setficha;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPconversaoncmto.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPconversaoncmto) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPconversaoncmto(Model).id;
Self.Fid_classe         := TModelERPconversaoncmto(Model).id_classe;
Self.Fcredencial         := TModelERPconversaoncmto(Model).credencial;
Self.Fnome         := TModelERPconversaoncmto(Model).nome;
Self.Fendereco         := TModelERPconversaoncmto(Model).endereco;
Self.Fcpf         := TModelERPconversaoncmto(Model).cpf;
Self.Frg         := TModelERPconversaoncmto(Model).rg;
Self.Frg_ssp         := TModelERPconversaoncmto(Model).rg_ssp;
Self.Fclasse         := TModelERPconversaoncmto(Model).classe;
Self.Fficha         := TModelERPconversaoncmto(Model).ficha;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPconversaoncmto.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPconversaoncmto.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPconversaoncmto.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPconversaoncmto.Setid_classe(const Value: Boolean);   
begin                
  Fid_classe := Value;   
end;                 

procedure TModelERPconversaoncmto.Setcredencial(const Value: Boolean);   
begin                
  Fcredencial := Value;   
end;                 

procedure TModelERPconversaoncmto.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPconversaoncmto.Setendereco(const Value: Boolean);   
begin                
  Fendereco := Value;   
end;                 

procedure TModelERPconversaoncmto.Setcpf(const Value: Boolean);   
begin                
  Fcpf := Value;   
end;                 

procedure TModelERPconversaoncmto.Setrg(const Value: Boolean);   
begin                
  Frg := Value;   
end;                 

procedure TModelERPconversaoncmto.Setrg_ssp(const Value: Boolean);   
begin                
  Frg_ssp := Value;   
end;                 

procedure TModelERPconversaoncmto.Setclasse(const Value: Boolean);   
begin                
  Fclasse := Value;   
end;                 

procedure TModelERPconversaoncmto.Setficha(const Value: Boolean);   
begin                
  Fficha := Value;   
end;                 


end.
