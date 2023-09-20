unit Model.ERP.produtos_lote;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPprodutoslote = class(TModelBase)

private
    Fid : Integer;
    Fid_lote : Integer;
    Fqtd : Double;
    Fdta_validade : TDateTime;
    Fid_compra : Integer;
    Fid_codpro : Integer;
    Fproduto : WideString;
    Fconsumido : Integer;
    Fdevolvido : Integer;
    Flote_ext : WideString;
    Fativo : Boolean;

    procedure Setid(const Value: Integer);
    procedure Setid_lote(const Value: Integer);
    procedure Setqtd(const Value: Double);
    procedure Setdta_validade(const Value: TDateTime);
    procedure Setid_compra(const Value: Integer);
    procedure Setid_codpro(const Value: Integer);
    procedure Setproduto(const Value: WideString);
    procedure Setconsumido(const Value: Integer);
    procedure Setdevolvido(const Value: Integer);
    procedure Setlote_ext(const Value: WideString);
    procedure Setativo(const Value: Boolean);

public
    property id     : Integer read Fid write Setid;
    property id_lote     : Integer read Fid_lote write Setid_lote;
    property qtd     : Double read Fqtd write Setqtd;
    property dta_validade     : TDateTime read Fdta_validade write Setdta_validade;
    property id_compra     : Integer read Fid_compra write Setid_compra;
    property id_codpro     : Integer read Fid_codpro write Setid_codpro;
    property produto     : WideString read Fproduto write Setproduto;
    property consumido     : Integer read Fconsumido write Setconsumido;
    property devolvido     : Integer read Fdevolvido write Setdevolvido;
    property lote_ext     : WideString read Flote_ext write Setlote_ext;
    property ativo     : Boolean read Fativo write Setativo;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPprodutoslote.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPprodutoslote) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPprodutoslote(Model).id;
Self.Fid_lote         := TModelERPprodutoslote(Model).id_lote;
Self.Fqtd         := TModelERPprodutoslote(Model).qtd;
Self.Fdta_validade         := TModelERPprodutoslote(Model).dta_validade;
Self.Fid_compra         := TModelERPprodutoslote(Model).id_compra;
Self.Fid_codpro         := TModelERPprodutoslote(Model).id_codpro;
Self.Fproduto         := TModelERPprodutoslote(Model).produto;
Self.Fconsumido         := TModelERPprodutoslote(Model).consumido;
Self.Fdevolvido         := TModelERPprodutoslote(Model).devolvido;
Self.Flote_ext         := TModelERPprodutoslote(Model).lote_ext;
Self.Fativo         := TModelERPprodutoslote(Model).ativo;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPprodutoslote.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPprodutoslote.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPprodutoslote.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPprodutoslote.Setid_lote(const Value: Boolean);   
begin                
  Fid_lote := Value;   
end;                 

procedure TModelERPprodutoslote.Setqtd(const Value: Boolean);   
begin                
  Fqtd := Value;   
end;                 

procedure TModelERPprodutoslote.Setdta_validade(const Value: Boolean);   
begin                
  Fdta_validade := Value;   
end;                 

procedure TModelERPprodutoslote.Setid_compra(const Value: Boolean);   
begin                
  Fid_compra := Value;   
end;                 

procedure TModelERPprodutoslote.Setid_codpro(const Value: Boolean);   
begin                
  Fid_codpro := Value;   
end;                 

procedure TModelERPprodutoslote.Setproduto(const Value: Boolean);   
begin                
  Fproduto := Value;   
end;                 

procedure TModelERPprodutoslote.Setconsumido(const Value: Boolean);   
begin                
  Fconsumido := Value;   
end;                 

procedure TModelERPprodutoslote.Setdevolvido(const Value: Boolean);   
begin                
  Fdevolvido := Value;   
end;                 

procedure TModelERPprodutoslote.Setlote_ext(const Value: Boolean);   
begin                
  Flote_ext := Value;   
end;                 

procedure TModelERPprodutoslote.Setativo(const Value: Boolean);   
begin                
  Fativo := Value;   
end;                 


end.
