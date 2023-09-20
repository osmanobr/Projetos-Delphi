unit Model.ERP.contrato_licitacao_item;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcontratolicitacaoitem = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_dependente : Integer;
    Fmodalidade : WideString;
    Fvalor : Double;
    Fdia_mensalidade : Integer;
    Fparcela : Integer;
    Fserie : Integer;
    Fdata : TDateTime;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setid_dependente(const Value: Integer);
    procedure Setmodalidade(const Value: WideString);
    procedure Setvalor(const Value: Double);
    procedure Setdia_mensalidade(const Value: Integer);
    procedure Setparcela(const Value: Integer);
    procedure Setserie(const Value: Integer);
    procedure Setdata(const Value: TDateTime);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property id_dependente     : Integer read Fid_dependente write Setid_dependente;
    property modalidade     : WideString read Fmodalidade write Setmodalidade;
    property valor     : Double read Fvalor write Setvalor;
    property dia_mensalidade     : Integer read Fdia_mensalidade write Setdia_mensalidade;
    property parcela     : Integer read Fparcela write Setparcela;
    property serie     : Integer read Fserie write Setserie;
    property data     : TDateTime read Fdata write Setdata;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcontratolicitacaoitem.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcontratolicitacaoitem) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcontratolicitacaoitem(Model).id;
Self.Fid_empresa         := TModelERPcontratolicitacaoitem(Model).id_empresa;
Self.Fid_dependente         := TModelERPcontratolicitacaoitem(Model).id_dependente;
Self.Fmodalidade         := TModelERPcontratolicitacaoitem(Model).modalidade;
Self.Fvalor         := TModelERPcontratolicitacaoitem(Model).valor;
Self.Fdia_mensalidade         := TModelERPcontratolicitacaoitem(Model).dia_mensalidade;
Self.Fparcela         := TModelERPcontratolicitacaoitem(Model).parcela;
Self.Fserie         := TModelERPcontratolicitacaoitem(Model).serie;
Self.Fdata         := TModelERPcontratolicitacaoitem(Model).data;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcontratolicitacaoitem.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcontratolicitacaoitem.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcontratolicitacaoitem.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcontratolicitacaoitem.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPcontratolicitacaoitem.Setid_dependente(const Value: Boolean);   
begin                
  Fid_dependente := Value;   
end;                 

procedure TModelERPcontratolicitacaoitem.Setmodalidade(const Value: Boolean);   
begin                
  Fmodalidade := Value;   
end;                 

procedure TModelERPcontratolicitacaoitem.Setvalor(const Value: Boolean);   
begin                
  Fvalor := Value;   
end;                 

procedure TModelERPcontratolicitacaoitem.Setdia_mensalidade(const Value: Boolean);   
begin                
  Fdia_mensalidade := Value;   
end;                 

procedure TModelERPcontratolicitacaoitem.Setparcela(const Value: Boolean);   
begin                
  Fparcela := Value;   
end;                 

procedure TModelERPcontratolicitacaoitem.Setserie(const Value: Boolean);   
begin                
  Fserie := Value;   
end;                 

procedure TModelERPcontratolicitacaoitem.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 


end.
