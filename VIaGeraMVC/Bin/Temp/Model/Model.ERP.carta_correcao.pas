unit Model.ERP.carne;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcarne = class(TModelBase)

private
    Fid : Integer;
    Flote : WideString;
    Fnfe_chave : WideString;
    Fprotocolo : WideString;
    Fnseqevento : WideString;
    Fevento : WideString;
    Fdata : TDateTime;
    Fhora : WideString;
    Fversao : WideString;
    Fdescricao_evento : WideString;
    Fcorrecao : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setlote(const Value: WideString);
    procedure Setnfe_chave(const Value: WideString);
    procedure Setprotocolo(const Value: WideString);
    procedure Setnseqevento(const Value: WideString);
    procedure Setevento(const Value: WideString);
    procedure Setdata(const Value: TDateTime);
    procedure Sethora(const Value: WideString);
    procedure Setversao(const Value: WideString);
    procedure Setdescricao_evento(const Value: WideString);
    procedure Setcorrecao(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property lote     : WideString read Flote write Setlote;
    property nfe_chave     : WideString read Fnfe_chave write Setnfe_chave;
    property protocolo     : WideString read Fprotocolo write Setprotocolo;
    property nseqevento     : WideString read Fnseqevento write Setnseqevento;
    property evento     : WideString read Fevento write Setevento;
    property data     : TDateTime read Fdata write Setdata;
    property hora     : WideString read Fhora write Sethora;
    property versao     : WideString read Fversao write Setversao;
    property descricao_evento     : WideString read Fdescricao_evento write Setdescricao_evento;
    property correcao     : indefinido read Fcorrecao write Setcorrecao;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcarne.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcarne) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcarne(Model).id;
Self.Flote         := TModelERPcarne(Model).lote;
Self.Fnfe_chave         := TModelERPcarne(Model).nfe_chave;
Self.Fprotocolo         := TModelERPcarne(Model).protocolo;
Self.Fnseqevento         := TModelERPcarne(Model).nseqevento;
Self.Fevento         := TModelERPcarne(Model).evento;
Self.Fdata         := TModelERPcarne(Model).data;
Self.Fhora         := TModelERPcarne(Model).hora;
Self.Fversao         := TModelERPcarne(Model).versao;
Self.Fdescricao_evento         := TModelERPcarne(Model).descricao_evento;
Self.Fcorrecao         := TModelERPcarne(Model).correcao;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcarne.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcarne.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcarne.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcarne.Setlote(const Value: Boolean);   
begin                
  Flote := Value;   
end;                 

procedure TModelERPcarne.Setnfe_chave(const Value: Boolean);   
begin                
  Fnfe_chave := Value;   
end;                 

procedure TModelERPcarne.Setprotocolo(const Value: Boolean);   
begin                
  Fprotocolo := Value;   
end;                 

procedure TModelERPcarne.Setnseqevento(const Value: Boolean);   
begin                
  Fnseqevento := Value;   
end;                 

procedure TModelERPcarne.Setevento(const Value: Boolean);   
begin                
  Fevento := Value;   
end;                 

procedure TModelERPcarne.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPcarne.Sethora(const Value: Boolean);   
begin                
  Fhora := Value;   
end;                 

procedure TModelERPcarne.Setversao(const Value: Boolean);   
begin                
  Fversao := Value;   
end;                 

procedure TModelERPcarne.Setdescricao_evento(const Value: Boolean);   
begin                
  Fdescricao_evento := Value;   
end;                 

procedure TModelERPcarne.Setcorrecao(const Value: Boolean);   
begin                
  Fcorrecao := Value;   
end;                 


end.
