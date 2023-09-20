unit Model.ERP.monitor_repair;

interface

uses
System.SysUtils, System.Classes, ModelBase;

type
TModelERPmonitorrepair = class(TModelBase)

private
    Fid : Integer;
    Fnome : WideString;
    Fcpf : WideString;
    Frg : WideString;
    Frg_ssp : WideString;
    Ftelefone : WideString;
    Fcelular : WideString;
    Fprop_rntc : WideString;
    Fprop_ie : WideString;
    Fprop_uf : WideString;
    Fprop_tpprop : Integer;

    procedure Setid(const Value: Integer);
    procedure Setnome(const Value: WideString);
    procedure Setcpf(const Value: WideString);
    procedure Setrg(const Value: WideString);
    procedure Setrg_ssp(const Value: WideString);
    procedure Settelefone(const Value: WideString);
    procedure Setcelular(const Value: WideString);
    procedure Setprop_rntc(const Value: WideString);
    procedure Setprop_ie(const Value: WideString);
    procedure Setprop_uf(const Value: WideString);
    procedure Setprop_tpprop(const Value: Integer);

public
    property id     : Integer read Fid write Setid;
    property nome     : WideString read Fnome write Setnome;
    property cpf     : WideString read Fcpf write Setcpf;
    property rg     : WideString read Frg write Setrg;
    property rg_ssp     : WideString read Frg_ssp write Setrg_ssp;
    property telefone     : WideString read Ftelefone write Settelefone;
    property celular     : WideString read Fcelular write Setcelular;
    property prop_rntc     : WideString read Fprop_rntc write Setprop_rntc;
    property prop_ie     : WideString read Fprop_ie write Setprop_ie;
    property prop_uf     : WideString read Fprop_uf write Setprop_uf;
    property prop_tpprop     : Integer read Fprop_tpprop write Setprop_tpprop;

procedure Clear; override;                               

function Assign(Model : TModelBase): Boolean; override;  
function IsEmpty      : Boolean; override;               
function Validate     : Boolean; override;               
function ToString     : String; override;                

end;                                                     

implementation                                                               
 function TModelERPmonitorrepair.Assign(Model: TModelBase): Boolean;    
begin                                                                         
  if not (Model is TModelERPmonitorrepair) then                         
  begin                                                                       
    ListError.Insert('Copia do Modelo', 'Modelo passado incorreto!');
    Result := (ListError.Count = 0);                                          
    Exit; 
  end; 
Self.Fid         := TModelERPmonitorrepair(Model).id;
Self.Fnome         := TModelERPmonitorrepair(Model).nome;
Self.Fcpf         := TModelERPmonitorrepair(Model).cpf;
Self.Frg         := TModelERPmonitorrepair(Model).rg;
Self.Frg_ssp         := TModelERPmonitorrepair(Model).rg_ssp;
Self.Ftelefone         := TModelERPmonitorrepair(Model).telefone;
Self.Fcelular         := TModelERPmonitorrepair(Model).celular;
Self.Fprop_rntc         := TModelERPmonitorrepair(Model).prop_rntc;
Self.Fprop_ie         := TModelERPmonitorrepair(Model).prop_ie;
Self.Fprop_uf         := TModelERPmonitorrepair(Model).prop_uf;
Self.Fprop_tpprop         := TModelERPmonitorrepair(Model).prop_tpprop;
   Result := (ListError.Count = 0);  
end;                                 

procedure TModelERPmonitorrepair.Clear;             
begin                                                      
  inherited;                                               

end;                                                       

function TModelERPmonitorrepair.IsEmpty: Boolean;   
begin                                                      

end;                                                       

procedure TModelERPmonitorrepair.Setid(const Value: Boolean);   
begin                
  Fid := Value;   
end;                 

procedure TModelERPmonitorrepair.Setnome(const Value: Boolean);   
begin                
  Fnome := Value;   
end;                 

procedure TModelERPmonitorrepair.Setcpf(const Value: Boolean);   
begin                
  Fcpf := Value;   
end;                 

procedure TModelERPmonitorrepair.Setrg(const Value: Boolean);   
begin                
  Frg := Value;   
end;                 

procedure TModelERPmonitorrepair.Setrg_ssp(const Value: Boolean);   
begin                
  Frg_ssp := Value;   
end;                 

procedure TModelERPmonitorrepair.Settelefone(const Value: Boolean);   
begin                
  Ftelefone := Value;   
end;                 

procedure TModelERPmonitorrepair.Setcelular(const Value: Boolean);   
begin                
  Fcelular := Value;   
end;                 

procedure TModelERPmonitorrepair.Setprop_rntc(const Value: Boolean);   
begin                
  Fprop_rntc := Value;   
end;                 

procedure TModelERPmonitorrepair.Setprop_ie(const Value: Boolean);   
begin                
  Fprop_ie := Value;   
end;                 

procedure TModelERPmonitorrepair.Setprop_uf(const Value: Boolean);   
begin                
  Fprop_uf := Value;   
end;                 

procedure TModelERPmonitorrepair.Setprop_tpprop(const Value: Boolean);   
begin                
  Fprop_tpprop := Value;   
end;                 


end.
