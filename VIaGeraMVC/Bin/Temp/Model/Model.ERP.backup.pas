unit Model.ERP.autorizacao_compra_item;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPautorizacaocompraitem = class(TModelBase)

private
    Fid : Integer;
    Farquivo : WideString;
    Fpartes : Integer;
    Fdatahora : indefinido;
    Fenviar : Boolean;
    Fcompactar : Boolean;
    Fdatahora_enviado : indefinido;
    Fcompress_size : indefinido;
    Fdayweek : indefinido;
    Fclientcode : Integer;

    procedure Setid(const Value: Integer);
    procedure Setarquivo(const Value: WideString);
    procedure Setpartes(const Value: Integer);
    procedure Setdatahora(const Value: indefinido);
    procedure Setenviar(const Value: Boolean);
    procedure Setcompactar(const Value: Boolean);
    procedure Setdatahora_enviado(const Value: indefinido);
    procedure Setcompress_size(const Value: indefinido);
    procedure Setdayweek(const Value: indefinido);
    procedure Setclientcode(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property arquivo     : WideString read Farquivo write Setarquivo;
    property partes     : Integer read Fpartes write Setpartes;
    property datahora     : indefinido read Fdatahora write Setdatahora;
    property enviar     : Boolean read Fenviar write Setenviar;
    property compactar     : Boolean read Fcompactar write Setcompactar;
    property datahora_enviado     : indefinido read Fdatahora_enviado write Setdatahora_enviado;
    property compress_size     : indefinido read Fcompress_size write Setcompress_size;
    property dayweek     : indefinido read Fdayweek write Setdayweek;
    property clientcode     : Integer read Fclientcode write Setclientcode;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPautorizacaocompraitem.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPautorizacaocompraitem) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPautorizacaocompraitem(Model).id;
Self.Farquivo         := TModelERPautorizacaocompraitem(Model).arquivo;
Self.Fpartes         := TModelERPautorizacaocompraitem(Model).partes;
Self.Fdatahora         := TModelERPautorizacaocompraitem(Model).datahora;
Self.Fenviar         := TModelERPautorizacaocompraitem(Model).enviar;
Self.Fcompactar         := TModelERPautorizacaocompraitem(Model).compactar;
Self.Fdatahora_enviado         := TModelERPautorizacaocompraitem(Model).datahora_enviado;
Self.Fcompress_size         := TModelERPautorizacaocompraitem(Model).compress_size;
Self.Fdayweek         := TModelERPautorizacaocompraitem(Model).dayweek;
Self.Fclientcode         := TModelERPautorizacaocompraitem(Model).clientcode;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPautorizacaocompraitem.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPautorizacaocompraitem.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPautorizacaocompraitem.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPautorizacaocompraitem.Setarquivo(const Value: Boolean);   
begin                
  Farquivo := Value;   
end;                 

procedure TModelERPautorizacaocompraitem.Setpartes(const Value: Boolean);   
begin                
  Fpartes := Value;   
end;                 

procedure TModelERPautorizacaocompraitem.Setdatahora(const Value: Boolean);   
begin                
  Fdatahora := Value;   
end;                 

procedure TModelERPautorizacaocompraitem.Setenviar(const Value: Boolean);   
begin                
  Fenviar := Value;   
end;                 

procedure TModelERPautorizacaocompraitem.Setcompactar(const Value: Boolean);   
begin                
  Fcompactar := Value;   
end;                 

procedure TModelERPautorizacaocompraitem.Setdatahora_enviado(const Value: Boolean);   
begin                
  Fdatahora_enviado := Value;   
end;                 

procedure TModelERPautorizacaocompraitem.Setcompress_size(const Value: Boolean);   
begin                
  Fcompress_size := Value;   
end;                 

procedure TModelERPautorizacaocompraitem.Setdayweek(const Value: Boolean);   
begin                
  Fdayweek := Value;   
end;                 

procedure TModelERPautorizacaocompraitem.Setclientcode(const Value: Boolean);   
begin                
  Fclientcode := Value;   
end;                 


end.
