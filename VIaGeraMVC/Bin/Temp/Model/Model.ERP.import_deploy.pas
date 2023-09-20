unit Model.ERP.import_controller;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPimportcontroller = class(TModelBase)

private
    Fid : Integer;
    Fimportacao : Integer;
    Fdescricao : WideString;
    Ftotal : Boolean;
    Fgeracoes : Boolean;
    Ftempo : Integer;
    Finicio : WideString;
    Ffim : WideString;
    Fgerado : indefinido;

    procedure Setid(const Value: Integer);
    procedure Setimportacao(const Value: Integer);
    procedure Setdescricao(const Value: WideString);
    procedure Settotal(const Value: Boolean);
    procedure Setgeracoes(const Value: Boolean);
    procedure Settempo(const Value: Integer);
    procedure Setinicio(const Value: WideString);
    procedure Setfim(const Value: WideString);
    procedure Setgerado(const Value: indefinido);

public
    property id     : Integer read Fid write Setid;
    property importacao     : Integer read Fimportacao write Setimportacao;
    property descricao     : WideString read Fdescricao write Setdescricao;
    property total     : Boolean read Ftotal write Settotal;
    property geracoes     : Boolean read Fgeracoes write Setgeracoes;
    property tempo     : Integer read Ftempo write Settempo;
    property inicio     : WideString read Finicio write Setinicio;
    property fim     : WideString read Ffim write Setfim;
    property gerado     : indefinido read Fgerado write Setgerado;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPimportcontroller.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPimportcontroller) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPimportcontroller(Model).id;
Self.Fimportacao         := TModelERPimportcontroller(Model).importacao;
Self.Fdescricao         := TModelERPimportcontroller(Model).descricao;
Self.Ftotal         := TModelERPimportcontroller(Model).total;
Self.Fgeracoes         := TModelERPimportcontroller(Model).geracoes;
Self.Ftempo         := TModelERPimportcontroller(Model).tempo;
Self.Finicio         := TModelERPimportcontroller(Model).inicio;
Self.Ffim         := TModelERPimportcontroller(Model).fim;
Self.Fgerado         := TModelERPimportcontroller(Model).gerado;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPimportcontroller.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPimportcontroller.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPimportcontroller.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPimportcontroller.Setimportacao(const Value: Boolean);   
begin                
  Fimportacao := Value;   
end;                 

procedure TModelERPimportcontroller.Setdescricao(const Value: Boolean);   
begin                
  Fdescricao := Value;   
end;                 

procedure TModelERPimportcontroller.Settotal(const Value: Boolean);   
begin                
  Ftotal := Value;   
end;                 

procedure TModelERPimportcontroller.Setgeracoes(const Value: Boolean);   
begin                
  Fgeracoes := Value;   
end;                 

procedure TModelERPimportcontroller.Settempo(const Value: Boolean);   
begin                
  Ftempo := Value;   
end;                 

procedure TModelERPimportcontroller.Setinicio(const Value: Boolean);   
begin                
  Finicio := Value;   
end;                 

procedure TModelERPimportcontroller.Setfim(const Value: Boolean);   
begin                
  Ffim := Value;   
end;                 

procedure TModelERPimportcontroller.Setgerado(const Value: Boolean);   
begin                
  Fgerado := Value;   
end;                 


end.
