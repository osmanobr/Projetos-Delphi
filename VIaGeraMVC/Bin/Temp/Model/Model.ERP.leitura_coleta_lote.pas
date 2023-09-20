unit Model.ERP.leitura_coleta_importacao;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPleituracoletaimportacao = class(TModelBase)

private
    Fid : Integer;
    Fid_condominio : Integer;
    Fid_bloco : Integer;
    Fleitura_inicial : TDateTime;
    Fleitura_final : TDateTime;
    Ffator : Double;
    Fpreco : Double;
    Fobservacao : WideString;
    Fvazamento : Integer;

    procedure Setid(const Value: Integer);
    procedure Setid_condominio(const Value: Integer);
    procedure Setid_bloco(const Value: Integer);
    procedure Setleitura_inicial(const Value: TDateTime);
    procedure Setleitura_final(const Value: TDateTime);
    procedure Setfator(const Value: Double);
    procedure Setpreco(const Value: Double);
    procedure Setobservacao(const Value: WideString);
    procedure Setvazamento(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property id_condominio     : Integer read Fid_condominio write Setid_condominio;
    property id_bloco     : Integer read Fid_bloco write Setid_bloco;
    property leitura_inicial     : TDateTime read Fleitura_inicial write Setleitura_inicial;
    property leitura_final     : TDateTime read Fleitura_final write Setleitura_final;
    property fator     : Double read Ffator write Setfator;
    property preco     : Double read Fpreco write Setpreco;
    property observacao     : WideString read Fobservacao write Setobservacao;
    property vazamento     : Integer read Fvazamento write Setvazamento;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPleituracoletaimportacao.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPleituracoletaimportacao) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPleituracoletaimportacao(Model).id;
Self.Fid_condominio         := TModelERPleituracoletaimportacao(Model).id_condominio;
Self.Fid_bloco         := TModelERPleituracoletaimportacao(Model).id_bloco;
Self.Fleitura_inicial         := TModelERPleituracoletaimportacao(Model).leitura_inicial;
Self.Fleitura_final         := TModelERPleituracoletaimportacao(Model).leitura_final;
Self.Ffator         := TModelERPleituracoletaimportacao(Model).fator;
Self.Fpreco         := TModelERPleituracoletaimportacao(Model).preco;
Self.Fobservacao         := TModelERPleituracoletaimportacao(Model).observacao;
Self.Fvazamento         := TModelERPleituracoletaimportacao(Model).vazamento;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPleituracoletaimportacao.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPleituracoletaimportacao.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPleituracoletaimportacao.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPleituracoletaimportacao.Setid_condominio(const Value: Boolean);   
begin                
  Fid_condominio := Value;   
end;                 

procedure TModelERPleituracoletaimportacao.Setid_bloco(const Value: Boolean);   
begin                
  Fid_bloco := Value;   
end;                 

procedure TModelERPleituracoletaimportacao.Setleitura_inicial(const Value: Boolean);   
begin                
  Fleitura_inicial := Value;   
end;                 

procedure TModelERPleituracoletaimportacao.Setleitura_final(const Value: Boolean);   
begin                
  Fleitura_final := Value;   
end;                 

procedure TModelERPleituracoletaimportacao.Setfator(const Value: Boolean);   
begin                
  Ffator := Value;   
end;                 

procedure TModelERPleituracoletaimportacao.Setpreco(const Value: Boolean);   
begin                
  Fpreco := Value;   
end;                 

procedure TModelERPleituracoletaimportacao.Setobservacao(const Value: Boolean);   
begin                
  Fobservacao := Value;   
end;                 

procedure TModelERPleituracoletaimportacao.Setvazamento(const Value: Boolean);   
begin                
  Fvazamento := Value;   
end;                 


end.
