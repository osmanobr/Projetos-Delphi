unit Model.ERP.estoque;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPestoque = class(TModelBase)

private
    Fid : Integer;
    Fdata : TDateTime;
    Festoque : WideString;
    Fid_equipamento : Integer;
    Fnome : WideString;
    Foperacao : WideString;
    Fid_operacao : Integer;
    Fquantidade : Double;
    Fnota : WideString;

    procedure Setid(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setestoque(const Value: WideString);
    procedure Setid_equipamento(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setoperacao(const Value: WideString);
    procedure Setid_operacao(const Value: Integer);
    procedure Setquantidade(const Value: Double);
    procedure Setnota(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property data     : TDateTime read Fdata write Setdata;
    property estoque     : WideString read Festoque write Setestoque;
    property id_equipamento     : Integer read Fid_equipamento write Setid_equipamento;
    property nome     : WideString read Fnome write Setnome;
    property operacao     : WideString read Foperacao write Setoperacao;
    property id_operacao     : Integer read Fid_operacao write Setid_operacao;
    property quantidade     : Double read Fquantidade write Setquantidade;
    property nota     : WideString read Fnota write Setnota;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPestoque.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPestoque) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPestoque(Model).id;
Self.Fdata         := TModelERPestoque(Model).data;
Self.Festoque         := TModelERPestoque(Model).estoque;
Self.Fid_equipamento         := TModelERPestoque(Model).id_equipamento;
Self.Fnome         := TModelERPestoque(Model).nome;
Self.Foperacao         := TModelERPestoque(Model).operacao;
Self.Fid_operacao         := TModelERPestoque(Model).id_operacao;
Self.Fquantidade         := TModelERPestoque(Model).quantidade;
Self.Fnota         := TModelERPestoque(Model).nota;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPestoque.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPestoque.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPestoque.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPestoque.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPestoque.Setestoque(const Value: Boolean);   
begin                
  Festoque := Value;   
end;                 

procedure TModelERPestoque.Setid_equipamento(const Value: Boolean);   
begin                
  Fid_equipamento := Value;   
end;                 

procedure TModelERPestoque.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPestoque.Setoperacao(const Value: Boolean);   
begin                
  Foperacao := Value;   
end;                 

procedure TModelERPestoque.Setid_operacao(const Value: Boolean);   
begin                
  Fid_operacao := Value;   
end;                 

procedure TModelERPestoque.Setquantidade(const Value: Boolean);   
begin                
  Fquantidade := Value;   
end;                 

procedure TModelERPestoque.Setnota(const Value: Boolean);   
begin                
  Fnota := Value;   
end;                 


end.
