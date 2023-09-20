
unit View.ERP.formas_pagamento;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.formas_pagamento, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPformaspagamento = class(TForm) 
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
    FController : TControllerERPformaspagamento; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata_ficha : TDateTime;
    Fnome : WideString;
    Frazao_social : WideString;
    Fendereco : WideString;
    Fbairro : WideString;
    Fid_cidade : Integer;
    Fcidade : WideString;
    Fuf : WideString;
    Fcep : WideString;
    Fcaixa_postal : WideString;
    Ffone1 : WideString;
    Ffone2 : WideString;
    Fcelular1 : WideString;
    Fcnpj : WideString;
    Finscricao_estadual : WideString;
    Fe_mail : WideString;
    Fhome_page : WideString;
    Ficms : Double;
    Frepresentante_nome : WideString;
    Frepresentante_fone : WideString;
    Frepresentante_celular : WideString;
    Frepresentante_e_mail : WideString;
    Fobs : indefinido;
    Fclick : Boolean;
    Frepresentante_skype : WideString;
    Frepresentante_msn : WideString;
    Fcondicoes_pagamento : WideString;
    Fcpf : WideString;
    Fprodutor_rural : Boolean;
    Ffornecedor : WideString;
    Fviacentral : Boolean;
    Fid_servidor : Integer;
    Fhash_local : WideString;
    Fhash_matriz : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setdata_ficha(const Value : TDateTime);
    procedure Setnome(const Value : WideString);
    procedure Setrazao_social(const Value : WideString);
    procedure Setendereco(const Value : WideString);
    procedure Setbairro(const Value : WideString);
    procedure Setid_cidade(const Value : Integer);
    procedure Setcidade(const Value : WideString);
    procedure Setuf(const Value : WideString);
    procedure Setcep(const Value : WideString);
    procedure Setcaixa_postal(const Value : WideString);
    procedure Setfone1(const Value : WideString);
    procedure Setfone2(const Value : WideString);
    procedure Setcelular1(const Value : WideString);
    procedure Setcnpj(const Value : WideString);
    procedure Setinscricao_estadual(const Value : WideString);
    procedure Sete_mail(const Value : WideString);
    procedure Sethome_page(const Value : WideString);
    procedure Seticms(const Value : Double);
    procedure Setrepresentante_nome(const Value : WideString);
    procedure Setrepresentante_fone(const Value : WideString);
    procedure Setrepresentante_celular(const Value : WideString);
    procedure Setrepresentante_e_mail(const Value : WideString);
    procedure Setobs(const Value : indefinido);
    procedure Setclick(const Value : Boolean);
    procedure Setrepresentante_skype(const Value : WideString);
    procedure Setrepresentante_msn(const Value : WideString);
    procedure Setcondicoes_pagamento(const Value : WideString);
    procedure Setcpf(const Value : WideString);
    procedure Setprodutor_rural(const Value : Boolean);
    procedure Setfornecedor(const Value : WideString);
    procedure Setviacentral(const Value : Boolean);
    procedure Setid_servidor(const Value : Integer);
    procedure Sethash_local(const Value : WideString);
    procedure Sethash_matriz(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property data_ficha : TDateTime         read Fdata_ficha    write Fdata_ficha;
    property nome : WideString         read Fnome    write Fnome;
    property razao_social : WideString         read Frazao_social    write Frazao_social;
    property endereco : WideString         read Fendereco    write Fendereco;
    property bairro : WideString         read Fbairro    write Fbairro;
    property id_cidade : Integer         read Fid_cidade    write Fid_cidade;
    property cidade : WideString         read Fcidade    write Fcidade;
    property uf : WideString         read Fuf    write Fuf;
    property cep : WideString         read Fcep    write Fcep;
    property caixa_postal : WideString         read Fcaixa_postal    write Fcaixa_postal;
    property fone1 : WideString         read Ffone1    write Ffone1;
    property fone2 : WideString         read Ffone2    write Ffone2;
    property celular1 : WideString         read Fcelular1    write Fcelular1;
    property cnpj : WideString         read Fcnpj    write Fcnpj;
    property inscricao_estadual : WideString         read Finscricao_estadual    write Finscricao_estadual;
    property e_mail : WideString         read Fe_mail    write Fe_mail;
    property home_page : WideString         read Fhome_page    write Fhome_page;
    property icms : Double         read Ficms    write Ficms;
    property representante_nome : WideString         read Frepresentante_nome    write Frepresentante_nome;
    property representante_fone : WideString         read Frepresentante_fone    write Frepresentante_fone;
    property representante_celular : WideString         read Frepresentante_celular    write Frepresentante_celular;
    property representante_e_mail : WideString         read Frepresentante_e_mail    write Frepresentante_e_mail;
    property obs : indefinido         read Fobs    write Fobs;
    property click : Boolean         read Fclick    write Fclick;
    property representante_skype : WideString         read Frepresentante_skype    write Frepresentante_skype;
    property representante_msn : WideString         read Frepresentante_msn    write Frepresentante_msn;
    property condicoes_pagamento : WideString         read Fcondicoes_pagamento    write Fcondicoes_pagamento;
    property cpf : WideString         read Fcpf    write Fcpf;
    property produtor_rural : Boolean         read Fprodutor_rural    write Fprodutor_rural;
    property fornecedor : WideString         read Ffornecedor    write Ffornecedor;
    property viacentral : Boolean         read Fviacentral    write Fviacentral;
    property id_servidor : Integer         read Fid_servidor    write Fid_servidor;
    property hash_local : WideString         read Fhash_local    write Fhash_local;
    property hash_matriz : WideString         read Fhash_matriz    write Fhash_matriz;

  end;

var
  Frm_ViewERPformaspagamento : TFrm_ViewERPformaspagamento; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 36; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_ficha); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].razao_social); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].endereco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].bairro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].uf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cep); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].caixa_postal); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fone1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fone2); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].celular1); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cnpj); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].inscricao_estadual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].e_mail); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].home_page); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].representante_nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].representante_fone); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].representante_celular); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].representante_e_mail); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].representante_skype); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].representante_msn); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].condicoes_pagamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cpf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].produtor_rural); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fornecedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].viacentral); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_servidor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].hash_local); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].hash_matriz); 
    end; 
end; 

procedure TFrm_ViewERPformaspagamento.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.data_ficha := Edit_data_ficha.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.razao_social := Edit_razao_social.text;
      FController.Model.endereco := Edit_endereco.text;
      FController.Model.bairro := Edit_bairro.text;
      FController.Model.id_cidade := Edit_id_cidade.text;
      FController.Model.cidade := Edit_cidade.text;
      FController.Model.uf := Edit_uf.text;
      FController.Model.cep := Edit_cep.text;
      FController.Model.caixa_postal := Edit_caixa_postal.text;
      FController.Model.fone1 := Edit_fone1.text;
      FController.Model.fone2 := Edit_fone2.text;
      FController.Model.celular1 := Edit_celular1.text;
      FController.Model.cnpj := Edit_cnpj.text;
      FController.Model.inscricao_estadual := Edit_inscricao_estadual.text;
      FController.Model.e_mail := Edit_e_mail.text;
      FController.Model.home_page := Edit_home_page.text;
      FController.Model.icms := Edit_icms.text;
      FController.Model.representante_nome := Edit_representante_nome.text;
      FController.Model.representante_fone := Edit_representante_fone.text;
      FController.Model.representante_celular := Edit_representante_celular.text;
      FController.Model.representante_e_mail := Edit_representante_e_mail.text;
      FController.Model.obs := Edit_obs.text;
      FController.Model.click := Edit_click.text;
      FController.Model.representante_skype := Edit_representante_skype.text;
      FController.Model.representante_msn := Edit_representante_msn.text;
      FController.Model.condicoes_pagamento := Edit_condicoes_pagamento.text;
      FController.Model.cpf := Edit_cpf.text;
      FController.Model.produtor_rural := Edit_produtor_rural.text;
      FController.Model.fornecedor := Edit_fornecedor.text;
      FController.Model.viacentral := Edit_viacentral.text;
      FController.Model.id_servidor := Edit_id_servidor.text;
      FController.Model.hash_local := Edit_hash_local.text;
      FController.Model.hash_matriz := Edit_hash_matriz.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPformaspagamento.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPformaspagamento.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPformaspagamento.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPformaspagamento.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPformaspagamento.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPformaspagamento.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPformaspagamento.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 36;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := data_ficha;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := razao_social;  
     Grid.Cells[inttostr(i),0] := endereco;  
     Grid.Cells[inttostr(i),0] := bairro;  
     Grid.Cells[inttostr(i),0] := id_cidade;  
     Grid.Cells[inttostr(i),0] := cidade;  
     Grid.Cells[inttostr(i),0] := uf;  
     Grid.Cells[inttostr(i),0] := cep;  
     Grid.Cells[inttostr(i),0] := caixa_postal;  
     Grid.Cells[inttostr(i),0] := fone1;  
     Grid.Cells[inttostr(i),0] := fone2;  
     Grid.Cells[inttostr(i),0] := celular1;  
     Grid.Cells[inttostr(i),0] := cnpj;  
     Grid.Cells[inttostr(i),0] := inscricao_estadual;  
     Grid.Cells[inttostr(i),0] := e_mail;  
     Grid.Cells[inttostr(i),0] := home_page;  
     Grid.Cells[inttostr(i),0] := icms;  
     Grid.Cells[inttostr(i),0] := representante_nome;  
     Grid.Cells[inttostr(i),0] := representante_fone;  
     Grid.Cells[inttostr(i),0] := representante_celular;  
     Grid.Cells[inttostr(i),0] := representante_e_mail;  
     Grid.Cells[inttostr(i),0] := obs;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := representante_skype;  
     Grid.Cells[inttostr(i),0] := representante_msn;  
     Grid.Cells[inttostr(i),0] := condicoes_pagamento;  
     Grid.Cells[inttostr(i),0] := cpf;  
     Grid.Cells[inttostr(i),0] := produtor_rural;  
     Grid.Cells[inttostr(i),0] := fornecedor;  
     Grid.Cells[inttostr(i),0] := viacentral;  
     Grid.Cells[inttostr(i),0] := id_servidor;  
     Grid.Cells[inttostr(i),0] := hash_local;  
     Grid.Cells[inttostr(i),0] := hash_matriz;  
end;

procedure TFrm_ViewERPformaspagamento.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPformaspagamento.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPformaspagamento.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.data_ficha := Grid.Cells[2,Grid.row];
    FController.Model.nome := Grid.Cells[3,Grid.row];
    FController.Model.razao_social := Grid.Cells[4,Grid.row];
    FController.Model.endereco := Grid.Cells[5,Grid.row];
    FController.Model.bairro := Grid.Cells[6,Grid.row];
    FController.Model.id_cidade := Grid.Cells[7,Grid.row];
    FController.Model.cidade := Grid.Cells[8,Grid.row];
    FController.Model.uf := Grid.Cells[9,Grid.row];
    FController.Model.cep := Grid.Cells[10,Grid.row];
    FController.Model.caixa_postal := Grid.Cells[11,Grid.row];
    FController.Model.fone1 := Grid.Cells[12,Grid.row];
    FController.Model.fone2 := Grid.Cells[13,Grid.row];
    FController.Model.celular1 := Grid.Cells[14,Grid.row];
    FController.Model.cnpj := Grid.Cells[15,Grid.row];
    FController.Model.inscricao_estadual := Grid.Cells[16,Grid.row];
    FController.Model.e_mail := Grid.Cells[17,Grid.row];
    FController.Model.home_page := Grid.Cells[18,Grid.row];
    FController.Model.icms := Grid.Cells[19,Grid.row];
    FController.Model.representante_nome := Grid.Cells[20,Grid.row];
    FController.Model.representante_fone := Grid.Cells[21,Grid.row];
    FController.Model.representante_celular := Grid.Cells[22,Grid.row];
    FController.Model.representante_e_mail := Grid.Cells[23,Grid.row];
    FController.Model.obs := Grid.Cells[24,Grid.row];
    FController.Model.click := Grid.Cells[25,Grid.row];
    FController.Model.representante_skype := Grid.Cells[26,Grid.row];
    FController.Model.representante_msn := Grid.Cells[27,Grid.row];
    FController.Model.condicoes_pagamento := Grid.Cells[28,Grid.row];
    FController.Model.cpf := Grid.Cells[29,Grid.row];
    FController.Model.produtor_rural := Grid.Cells[30,Grid.row];
    FController.Model.fornecedor := Grid.Cells[31,Grid.row];
    FController.Model.viacentral := Grid.Cells[32,Grid.row];
    FController.Model.id_servidor := Grid.Cells[33,Grid.row];
    FController.Model.hash_local := Grid.Cells[34,Grid.row];
    FController.Model.hash_matriz := Grid.Cells[35,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPformaspagamento.LimparTela;  
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

procedure TFrm_ViewERPformaspagamento.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformaspagamento.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformaspagamento.Setdata_ficha(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformaspagamento.Setnome(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformaspagamento.Setrazao_social(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformaspagamento.Setendereco(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformaspagamento.Setbairro(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformaspagamento.Setid_cidade(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformaspagamento.Setcidade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformaspagamento.Setuf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformaspagamento.Setcep(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformaspagamento.Setcaixa_postal(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformaspagamento.Setfone1(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformaspagamento.Setfone2(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformaspagamento.Setcelular1(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformaspagamento.Setcnpj(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformaspagamento.Setinscricao_estadual(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformaspagamento.Sete_mail(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformaspagamento.Sethome_page(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformaspagamento.Seticms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformaspagamento.Setrepresentante_nome(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformaspagamento.Setrepresentante_fone(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformaspagamento.Setrepresentante_celular(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformaspagamento.Setrepresentante_e_mail(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformaspagamento.Setobs(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformaspagamento.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformaspagamento.Setrepresentante_skype(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformaspagamento.Setrepresentante_msn(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformaspagamento.Setcondicoes_pagamento(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformaspagamento.Setcpf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformaspagamento.Setprodutor_rural(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformaspagamento.Setfornecedor(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformaspagamento.Setviacentral(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformaspagamento.Setid_servidor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformaspagamento.Sethash_local(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPformaspagamento.Sethash_matriz(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
