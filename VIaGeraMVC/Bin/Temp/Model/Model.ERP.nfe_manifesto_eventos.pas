unit Model.ERP.nfe_manifesto_detalhe;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPnfemanifestodetalhe = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fnsu : WideString;
    Festado : WideString;
    Fxml : indefinido;
    Fmanifestacao : Boolean;
    Fch_nfe : WideString;
    Finclusao : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setnsu(const Value: WideString);
    procedure Setestado(const Value: WideString);
    procedure Setxml(const Value: indefinido);
    procedure Setmanifestacao(const Value: Boolean);
    procedure Setch_nfe(const Value: WideString);
    procedure Setinclusao(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property nsu     : WideString read Fnsu write Setnsu;
    property estado     : WideString read Festado write Setestado;
    property xml     : indefinido read Fxml write Setxml;
    property manifestacao     : Boolean read Fmanifestacao write Setmanifestacao;
    property ch_nfe     : WideString read Fch_nfe write Setch_nfe;
    property inclusao     : indefinido read Finclusao write Setinclusao;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPnfemanifestodetalhe.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPnfemanifestodetalhe) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPnfemanifestodetalhe(Model).id;
Self.Fid_empresa         := TModelERPnfemanifestodetalhe(Model).id_empresa;
Self.Fnsu         := TModelERPnfemanifestodetalhe(Model).nsu;
Self.Festado         := TModelERPnfemanifestodetalhe(Model).estado;
Self.Fxml         := TModelERPnfemanifestodetalhe(Model).xml;
Self.Fmanifestacao         := TModelERPnfemanifestodetalhe(Model).manifestacao;
Self.Fch_nfe         := TModelERPnfemanifestodetalhe(Model).ch_nfe;
Self.Finclusao         := TModelERPnfemanifestodetalhe(Model).inclusao;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPnfemanifestodetalhe.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPnfemanifestodetalhe.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPnfemanifestodetalhe.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPnfemanifestodetalhe.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPnfemanifestodetalhe.Setnsu(const Value: Boolean);   
begin                
  Fnsu := Value;   
end;                 

procedure TModelERPnfemanifestodetalhe.Setestado(const Value: Boolean);   
begin                
  Festado := Value;   
end;                 

procedure TModelERPnfemanifestodetalhe.Setxml(const Value: Boolean);   
begin                
  Fxml := Value;   
end;                 

procedure TModelERPnfemanifestodetalhe.Setmanifestacao(const Value: Boolean);   
begin                
  Fmanifestacao := Value;   
end;                 

procedure TModelERPnfemanifestodetalhe.Setch_nfe(const Value: Boolean);   
begin                
  Fch_nfe := Value;   
end;                 

procedure TModelERPnfemanifestodetalhe.Setinclusao(const Value: Boolean);   
begin                
  Finclusao := Value;   
end;                 


end.
