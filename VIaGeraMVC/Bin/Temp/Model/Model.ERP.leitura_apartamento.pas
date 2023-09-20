unit Model.ERP.lancamento_vendedor;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPlancamentovendedor = class(TModelBase)

private
    Fid : Integer;
    Fid_condominio : Integer;
    Fid_bloco : Integer;
    Fnumero : Integer;
    Fativo : Boolean;
    Fapelido : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_condominio(const Value: Integer);
    procedure Setid_bloco(const Value: Integer);
    procedure Setnumero(const Value: Integer);
    procedure Setativo(const Value: Boolean);
    procedure Setapelido(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_condominio     : Integer read Fid_condominio write Setid_condominio;
    property id_bloco     : Integer read Fid_bloco write Setid_bloco;
    property numero     : Integer read Fnumero write Setnumero;
    property ativo     : Boolean read Fativo write Setativo;
    property apelido     : WideString read Fapelido write Setapelido;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPlancamentovendedor.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPlancamentovendedor) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPlancamentovendedor(Model).id;
Self.Fid_condominio         := TModelERPlancamentovendedor(Model).id_condominio;
Self.Fid_bloco         := TModelERPlancamentovendedor(Model).id_bloco;
Self.Fnumero         := TModelERPlancamentovendedor(Model).numero;
Self.Fativo         := TModelERPlancamentovendedor(Model).ativo;
Self.Fapelido         := TModelERPlancamentovendedor(Model).apelido;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPlancamentovendedor.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPlancamentovendedor.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPlancamentovendedor.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPlancamentovendedor.Setid_condominio(const Value: Boolean);   
begin                
  Fid_condominio := Value;   
end;                 

procedure TModelERPlancamentovendedor.Setid_bloco(const Value: Boolean);   
begin                
  Fid_bloco := Value;   
end;                 

procedure TModelERPlancamentovendedor.Setnumero(const Value: Boolean);   
begin                
  Fnumero := Value;   
end;                 

procedure TModelERPlancamentovendedor.Setativo(const Value: Boolean);   
begin                
  Fativo := Value;   
end;                 

procedure TModelERPlancamentovendedor.Setapelido(const Value: Boolean);   
begin                
  Fapelido := Value;   
end;                 


end.
