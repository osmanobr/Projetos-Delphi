
unit View.ERP.empresas_configuracoes_nfe;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.empresas_configuracoes_nfe, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPempresasconfiguracoesnfe = class(TForm) 
    Panel1: TPanel; 
    bbIncluir: TSpeedButton; 
    bbAlterar: TSpeedButton; 
    bbExcluir: TSpeedButton; 
    BBCancelar: TSpeedButton;
    BBConfirmar: TSpeedButton;

        procedure bbIncluirClick(Sender: TObject);    
        procedure bbAlterarClick(Sender: TObject);    
        procedure bbExcluirClick(Sender: TObject);    
        procedure BBCancelarClick(Sender: TObject);   
        procedure BBConfirmarClick(Sender: TObject);  

    procedure FormCreate(Sender: TObject);    
    procedure FormDestroy(Sender: TObject);    
    procedure FormShow(Sender: TObject);       

  private 
    FController : TControllerERPempresasconfiguracoesnfe; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fnome : WideString;
    Fcpf : WideString;
    Fcnpj : WideString;
    Fcrc : WideString;
    Fendereco : WideString;
    Fbairro : WideString;
    Fuf : WideString;
    Fcidade : WideString;
    Fnumero : WideString;
    Fcep : WideString;
    Fcomplemento : WideString;
    Ftelefone : WideString;
    Fcelular : WideString;
    Femail : WideString;
    Fcod_ibge : Integer;
    Fid_cidade : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setnome(const Value : WideString);
    procedure Setcpf(const Value : WideString);
    procedure Setcnpj(const Value : WideString);
    procedure Setcrc(const Value : WideString);
    procedure Setendereco(const Value : WideString);
    procedure Setbairro(const Value : WideString);
    procedure Setuf(const Value : WideString);
    procedure Setcidade(const Value : WideString);
    procedure Setnumero(const Value : WideString);
    procedure Setcep(const Value : WideString);
    procedure Setcomplemento(const Value : WideString);
    procedure Settelefone(const Value : WideString);
    procedure Setcelular(const Value : WideString);
    procedure Setemail(const Value : WideString);
    procedure Setcod_ibge(const Value : Integer);
    procedure Setid_cidade(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property nome : WideString         read Fnome    write Fnome;
    property cpf : WideString         read Fcpf    write Fcpf;
    property cnpj : WideString         read Fcnpj    write Fcnpj;
    property crc : WideString         read Fcrc    write Fcrc;
    property endereco : WideString         read Fendereco    write Fendereco;
    property bairro : WideString         read Fbairro    write Fbairro;
    property uf : WideString         read Fuf    write Fuf;
    property cidade : WideString         read Fcidade    write Fcidade;
    property numero : WideString         read Fnumero    write Fnumero;
    property cep : WideString         read Fcep    write Fcep;
    property complemento : WideString         read Fcomplemento    write Fcomplemento;
    property telefone : WideString         read Ftelefone    write Ftelefone;
    property celular : WideString         read Fcelular    write Fcelular;
    property email : WideString         read Femail    write Femail;
    property cod_ibge : Integer         read Fcod_ibge    write Fcod_ibge;
    property id_cidade : Integer         read Fid_cidade    write Fid_cidade;

  end;

var
  Frm_ViewERPempresasconfiguracoesnfe : TFrm_ViewERPempresasconfiguracoesnfe; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 18; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cpf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cnpj); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].crc); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].endereco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].bairro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].uf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].numero); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cep); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].complemento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].telefone); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].celular); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].email); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cod_ibge); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cidade); 
    end; 
end; 

procedure TFrm_ViewERPempresasconfiguracoesnfe.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.cpf := Edit_cpf.text;
      FController.Model.cnpj := Edit_cnpj.text;
      FController.Model.crc := Edit_crc.text;
      FController.Model.endereco := Edit_endereco.text;
      FController.Model.bairro := Edit_bairro.text;
      FController.Model.uf := Edit_uf.text;
      FController.Model.cidade := Edit_cidade.text;
      FController.Model.numero := Edit_numero.text;
      FController.Model.cep := Edit_cep.text;
      FController.Model.complemento := Edit_complemento.text;
      FController.Model.telefone := Edit_telefone.text;
      FController.Model.celular := Edit_celular.text;
      FController.Model.email := Edit_email.text;
      FController.Model.cod_ibge := Edit_cod_ibge.text;
      FController.Model.id_cidade := Edit_id_cidade.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPempresasconfiguracoesnfe.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPempresasconfiguracoesnfe.BBCancelarClick(Sender: TObject); 
begin                         
  LimparTela;                 
end;                          

Function  SoNumeros(Texto: String):Boolean;   
var Resultado:Boolean;                        
    nContador:Integer;                        
begin                                         
  Resultado := false;                         
  For nContador:=1 to Length(Texto) do        
    begin                                     
      {Verifica sé é uma letra}               
       if Texto[nContador] in ['a'..'z','A'..'Z'] then  
      else                                    
         Resultado := true;                   
    end;                                      
    Result:=Resultado;                        
end;                                          

procedure TFrm_ViewERPempresasconfiguracoesnfe.BBConfirmarClick(Sender: TObject);  
begin                                                                     
  if MessageInfo('Confirma a gravação dos dados digitados?', tmPergunta,tbNaoSim) = rbSim then 
  begin                                              
    ScreenToModel;                                   
    if Self.FController.Status = vsInsert then       
    begin                                            
      Self.FController.Post;                         
    end                                              
    else                                             
      begin                                          
        Self.FController.Update;                     
      end;                                           
    MessageInfo('Dados gravados com sucesso.');    
    Self.FController.Model.id := 0;                  
    Self.FController.Get;                            
    ModelToScreen;                                   
  end;                                               
end;                                                 

procedure TFrm_ViewERPempresasconfiguracoesnfe.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPempresasconfiguracoesnfe.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPempresasconfiguracoesnfe.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPempresasconfiguracoesnfe.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 18;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := cpf;  
     Grid.Cells[inttostr(i),0] := cnpj;  
     Grid.Cells[inttostr(i),0] := crc;  
     Grid.Cells[inttostr(i),0] := endereco;  
     Grid.Cells[inttostr(i),0] := bairro;  
     Grid.Cells[inttostr(i),0] := uf;  
     Grid.Cells[inttostr(i),0] := cidade;  
     Grid.Cells[inttostr(i),0] := numero;  
     Grid.Cells[inttostr(i),0] := cep;  
     Grid.Cells[inttostr(i),0] := complemento;  
     Grid.Cells[inttostr(i),0] := telefone;  
     Grid.Cells[inttostr(i),0] := celular;  
     Grid.Cells[inttostr(i),0] := email;  
     Grid.Cells[inttostr(i),0] := cod_ibge;  
     Grid.Cells[inttostr(i),0] := id_cidade;  
end;

procedure TFrm_ViewERPempresasconfiguracoesnfe.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPempresasconfiguracoesnfe.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPempresasconfiguracoesnfe.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.nome := Grid.Cells[2,Grid.row];
    FController.Model.cpf := Grid.Cells[3,Grid.row];
    FController.Model.cnpj := Grid.Cells[4,Grid.row];
    FController.Model.crc := Grid.Cells[5,Grid.row];
    FController.Model.endereco := Grid.Cells[6,Grid.row];
    FController.Model.bairro := Grid.Cells[7,Grid.row];
    FController.Model.uf := Grid.Cells[8,Grid.row];
    FController.Model.cidade := Grid.Cells[9,Grid.row];
    FController.Model.numero := Grid.Cells[10,Grid.row];
    FController.Model.cep := Grid.Cells[11,Grid.row];
    FController.Model.complemento := Grid.Cells[12,Grid.row];
    FController.Model.telefone := Grid.Cells[13,Grid.row];
    FController.Model.celular := Grid.Cells[14,Grid.row];
    FController.Model.email := Grid.Cells[15,Grid.row];
    FController.Model.cod_ibge := Grid.Cells[16,Grid.row];
    FController.Model.id_cidade := Grid.Cells[17,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPempresasconfiguracoesnfe.LimparTela;  
var   
  I: Integer;  
begin       
  for i := 0 to ComponentCount -1 do   
    BEGIN                              
      if Components[i] is TEdit then   
      begin                            
        TEdit(Components[i]).Text := ''; 
      end; 
    END;   
end;       

procedure TFrm_ViewERPempresasconfiguracoesnfe.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfe.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfe.Setnome(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfe.Setcpf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfe.Setcnpj(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfe.Setcrc(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfe.Setendereco(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfe.Setbairro(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfe.Setuf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfe.Setcidade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfe.Setnumero(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfe.Setcep(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfe.Setcomplemento(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfe.Settelefone(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfe.Setcelular(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfe.Setemail(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfe.Setcod_ibge(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPempresasconfiguracoesnfe.Setid_cidade(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
