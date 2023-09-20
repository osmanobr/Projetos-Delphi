unit Model.ERP.locacao_item;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPlocacaoitem = class(TModelBase)

private
    Fid : Integer;
    Fid_locacao : Integer;
    Fid_cliente : Integer;
    Fdata : TDateTime;
    Fgerado : WideString;

    procedure Setid(const Value: Integer);
    procedure Setid_locacao(const Value: Integer);
    procedure Setid_cliente(const Value: Integer);
    procedure Setdata(const Value: TDateTime);
    procedure Setgerado(const Value: WideString);

public
    property id     : Integer read Fid write Setid;
    property id_locacao     : Integer read Fid_locacao write Setid_locacao;
    property id_cliente     : Integer read Fid_cliente write Setid_cliente;
    property data     : TDateTime read Fdata write Setdata;
    property gerado     : WideString read Fgerado write Setgerado;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPlocacaoitem.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPlocacaoitem) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPlocacaoitem(Model).id;
Self.Fid_locacao         := TModelERPlocacaoitem(Model).id_locacao;
Self.Fid_cliente         := TModelERPlocacaoitem(Model).id_cliente;
Self.Fdata         := TModelERPlocacaoitem(Model).data;
Self.Fgerado         := TModelERPlocacaoitem(Model).gerado;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPlocacaoitem.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPlocacaoitem.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPlocacaoitem.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPlocacaoitem.Setid_locacao(const Value: Boolean);   
begin                
  Fid_locacao := Value;   
end;                 

procedure TModelERPlocacaoitem.Setid_cliente(const Value: Boolean);   
begin                
  Fid_cliente := Value;   
end;                 

procedure TModelERPlocacaoitem.Setdata(const Value: Boolean);   
begin                
  Fdata := Value;   
end;                 

procedure TModelERPlocacaoitem.Setgerado(const Value: Boolean);   
begin                
  Fgerado := Value;   
end;                 


end.
