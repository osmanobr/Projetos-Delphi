
unit View.ERP.transferencia_portador;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.transferencia_portador, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPtransferenciaportador = class(TForm) 
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
    FController : TControllerERPtransferenciaportador; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata_ficha : TDateTime;
    Fnome : indefinido;
    Frazao_social : indefinido;
    Fendereco : indefinido;
    Fbairro : indefinido;
    Fid_cidade : Integer;
    Fcidade : indefinido;
    Fuf : indefinido;
    Fcep : indefinido;
    Fcaixa_postal : indefinido;
    Ffone1 : indefinido;
    Ffone2 : indefinido;
    Fcelular1 : indefinido;
    Fcnpj : indefinido;
    Finscricao_estadual : indefinido;
    Fe_mail : indefinido;
    Fhome_page : indefinido;
    Ficms : Double;
    Fcontato_nome : indefinido;
    Fcontato_fone : indefinido;
    Fcontato_celular : indefinido;
    Fcontato_e_mail : indefinido;
    Fobs : indefinido;
    Fclick : Boolean;
    Fcpf : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setdata_ficha(const Value : TDateTime);
    procedure Setnome(const Value : indefinido);
    procedure Setrazao_social(const Value : indefinido);
    procedure Setendereco(const Value : indefinido);
    procedure Setbairro(const Value : indefinido);
    procedure Setid_cidade(const Value : Integer);
    procedure Setcidade(const Value : indefinido);
    procedure Setuf(const Value : indefinido);
    procedure Setcep(const Value : indefinido);
    procedure Setcaixa_postal(const Value : indefinido);
    procedure Setfone1(const Value : indefinido);
    procedure Setfone2(const Value : indefinido);
    procedure Setcelular1(const Value : indefinido);
    procedure Setcnpj(const Value : indefinido);
    procedure Setinscricao_estadual(const Value : indefinido);
    procedure Sete_mail(const Value : indefinido);
    procedure Sethome_page(const Value : indefinido);
    procedure Seticms(const Value : Double);
    procedure Setcontato_nome(const Value : indefinido);
    procedure Setcontato_fone(const Value : indefinido);
    procedure Setcontato_celular(const Value : indefinido);
    procedure Setcontato_e_mail(const Value : indefinido);
    procedure Setobs(const Value : indefinido);
    procedure Setclick(const Value : Boolean);
    procedure Setcpf(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property data_ficha : TDateTime         read Fdata_ficha    write Fdata_ficha;
    property nome : indefinido         read Fnome    write Fnome;
    property razao_social : indefinido         read Frazao_social    write Frazao_social;
    property endereco : indefinido         read Fendereco    write Fendereco;
    property bairro : indefinido         read Fbairro    write Fbairro;
    property id_cidade : Integer         read Fid_cidade    write Fid_cidade;
    property cidade : indefinido         read Fcidade    write Fcidade;
    property uf : indefinido         read Fuf    write Fuf;
    property cep : indefinido         read Fcep    write Fcep;
    property caixa_postal : indefinido         read Fcaixa_postal    write Fcaixa_postal;
    property fone1 : indefinido         read Ffone1    write Ffone1;
    property fone2 : indefinido         read Ffone2    write Ffone2;
    property celular1 : indefinido         read Fcelular1    write Fcelular1;
    property cnpj : indefinido         read Fcnpj    write Fcnpj;
    property inscricao_estadual : indefinido         read Finscricao_estadual    write Finscricao_estadual;
    property e_mail : indefinido         read Fe_mail    write Fe_mail;
    property home_page : indefinido         read Fhome_page    write Fhome_page;
    property icms : Double         read Ficms    write Ficms;
    property contato_nome : indefinido         read Fcontato_nome    write Fcontato_nome;
    property contato_fone : indefinido         read Fcontato_fone    write Fcontato_fone;
    property contato_celular : indefinido         read Fcontato_celular    write Fcontato_celular;
    property contato_e_mail : indefinido         read Fcontato_e_mail    write Fcontato_e_mail;
    property obs : indefinido         read Fobs    write Fobs;
    property click : Boolean         read Fclick    write Fclick;
    property cpf : WideString         read Fcpf    write Fcpf;

  end;

var
  Frm_ViewERPtransferenciaportador : TFrm_ViewERPtransferenciaportador; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 27; 
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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].contato_nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].contato_fone); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].contato_celular); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].contato_e_mail); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cpf); 
    end; 
end; 

procedure TFrm_ViewERPtransferenciaportador.ScreenToModel;  
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
      FController.Model.contato_nome := Edit_contato_nome.text;
      FController.Model.contato_fone := Edit_contato_fone.text;
      FController.Model.contato_celular := Edit_contato_celular.text;
      FController.Model.contato_e_mail := Edit_contato_e_mail.text;
      FController.Model.obs := Edit_obs.text;
      FController.Model.click := Edit_click.text;
      FController.Model.cpf := Edit_cpf.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPtransferenciaportador.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPtransferenciaportador.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPtransferenciaportador.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPtransferenciaportador.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPtransferenciaportador.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPtransferenciaportador.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPtransferenciaportador.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 27;         
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
     Grid.Cells[inttostr(i),0] := contato_nome;  
     Grid.Cells[inttostr(i),0] := contato_fone;  
     Grid.Cells[inttostr(i),0] := contato_celular;  
     Grid.Cells[inttostr(i),0] := contato_e_mail;  
     Grid.Cells[inttostr(i),0] := obs;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := cpf;  
end;

procedure TFrm_ViewERPtransferenciaportador.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPtransferenciaportador.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPtransferenciaportador.GridClick(Sender: TObject);   
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
    FController.Model.contato_nome := Grid.Cells[20,Grid.row];
    FController.Model.contato_fone := Grid.Cells[21,Grid.row];
    FController.Model.contato_celular := Grid.Cells[22,Grid.row];
    FController.Model.contato_e_mail := Grid.Cells[23,Grid.row];
    FController.Model.obs := Grid.Cells[24,Grid.row];
    FController.Model.click := Grid.Cells[25,Grid.row];
    FController.Model.cpf := Grid.Cells[26,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPtransferenciaportador.LimparTela;  
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

procedure TFrm_ViewERPtransferenciaportador.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransferenciaportador.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransferenciaportador.Setdata_ficha(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransferenciaportador.Setnome(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransferenciaportador.Setrazao_social(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransferenciaportador.Setendereco(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransferenciaportador.Setbairro(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransferenciaportador.Setid_cidade(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransferenciaportador.Setcidade(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransferenciaportador.Setuf(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransferenciaportador.Setcep(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransferenciaportador.Setcaixa_postal(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransferenciaportador.Setfone1(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransferenciaportador.Setfone2(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransferenciaportador.Setcelular1(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransferenciaportador.Setcnpj(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransferenciaportador.Setinscricao_estadual(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransferenciaportador.Sete_mail(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransferenciaportador.Sethome_page(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransferenciaportador.Seticms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransferenciaportador.Setcontato_nome(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransferenciaportador.Setcontato_fone(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransferenciaportador.Setcontato_celular(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransferenciaportador.Setcontato_e_mail(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransferenciaportador.Setobs(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransferenciaportador.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtransferenciaportador.Setcpf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
