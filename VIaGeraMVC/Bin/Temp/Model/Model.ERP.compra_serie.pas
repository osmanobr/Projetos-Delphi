unit Model.ERP.compra_kit;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPcomprakit = class(TModelBase)

private
    Fid : Integer;
    Fid_empresa : Integer;
    Fnf : WideString;
    Fid_compra : Integer;
    Fid_produto : Integer;
    Fnro_serie_1 : WideString;
    Fnro_serie_2 : WideString;
    Fnro_serie_3 : WideString;
    Fvenda : WideString;
    Fnro_serie_4 : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_empresa(const Value: Integer);
    procedure Setnf(const Value: WideString);
    procedure Setid_compra(const Value: Integer);
    procedure Setid_produto(const Value: Integer);
    procedure Setnro_serie_1(const Value: WideString);
    procedure Setnro_serie_2(const Value: WideString);
    procedure Setnro_serie_3(const Value: WideString);
    procedure Setvenda(const Value: WideString);
    procedure Setnro_serie_4(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_empresa     : Integer read Fid_empresa write Setid_empresa;
    property nf     : WideString read Fnf write Setnf;
    property id_compra     : Integer read Fid_compra write Setid_compra;
    property id_produto     : Integer read Fid_produto write Setid_produto;
    property nro_serie_1     : WideString read Fnro_serie_1 write Setnro_serie_1;
    property nro_serie_2     : WideString read Fnro_serie_2 write Setnro_serie_2;
    property nro_serie_3     : WideString read Fnro_serie_3 write Setnro_serie_3;
    property venda     : WideString read Fvenda write Setvenda;
    property nro_serie_4     : WideString read Fnro_serie_4 write Setnro_serie_4;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPcomprakit.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPcomprakit) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPcomprakit(Model).id;
Self.Fid_empresa         := TModelERPcomprakit(Model).id_empresa;
Self.Fnf         := TModelERPcomprakit(Model).nf;
Self.Fid_compra         := TModelERPcomprakit(Model).id_compra;
Self.Fid_produto         := TModelERPcomprakit(Model).id_produto;
Self.Fnro_serie_1         := TModelERPcomprakit(Model).nro_serie_1;
Self.Fnro_serie_2         := TModelERPcomprakit(Model).nro_serie_2;
Self.Fnro_serie_3         := TModelERPcomprakit(Model).nro_serie_3;
Self.Fvenda         := TModelERPcomprakit(Model).venda;
Self.Fnro_serie_4         := TModelERPcomprakit(Model).nro_serie_4;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPcomprakit.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPcomprakit.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPcomprakit.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPcomprakit.Setid_empresa(const Value: Boolean);   
begin                
  Fid_empresa := Value;   
end;                 

procedure TModelERPcomprakit.Setnf(const Value: Boolean);   
begin                
  Fnf := Value;   
end;                 

procedure TModelERPcomprakit.Setid_compra(const Value: Boolean);   
begin                
  Fid_compra := Value;   
end;                 

procedure TModelERPcomprakit.Setid_produto(const Value: Boolean);   
begin                
  Fid_produto := Value;   
end;                 

procedure TModelERPcomprakit.Setnro_serie_1(const Value: Boolean);   
begin                
  Fnro_serie_1 := Value;   
end;                 

procedure TModelERPcomprakit.Setnro_serie_2(const Value: Boolean);   
begin                
  Fnro_serie_2 := Value;   
end;                 

procedure TModelERPcomprakit.Setnro_serie_3(const Value: Boolean);   
begin                
  Fnro_serie_3 := Value;   
end;                 

procedure TModelERPcomprakit.Setvenda(const Value: Boolean);   
begin                
  Fvenda := Value;   
end;                 

procedure TModelERPcomprakit.Setnro_serie_4(const Value: Boolean);   
begin                
  Fnro_serie_4 := Value;   
end;                 


end.
