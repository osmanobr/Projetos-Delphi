
unit View.ERP.import_cidades;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.import_cidades, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPimportcidades = class(TForm) 
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
    FController : TControllerERPimportcidades; 
    Fid : Integer;
    Ftipo : WideString;
    Fid_empresa : Integer;
    Fnome : WideString;
    Fdata_ficha : indefinido;
    Frazao_social : WideString;
    Fid_cidade : Integer;
    Fendereco : WideString;
    Fbairro : WideString;
    Fuf : WideString;
    Fcep : WideString;
    Ftelefone : WideString;
    Fcnpj : WideString;
    Fcpf : WideString;
    Finscricao_estadual : WideString;
    Frg_ssp : WideString;
    Frg : WideString;
    Fdata_nascimento : indefinido;
    Fsexo : WideString;
    Fpai : WideString;
    Fmae : WideString;
    Fdependentes : Integer;
    Fconjugue : WideString;
    Ffuncao : WideString;
    Fspc : WideString;
    Flimite : Double;
    Fcompras : Double;
    Fcidade : WideString;
    Fativo : Boolean;
    Fatacado : Boolean;
    Festado_civil : WideString;
    Fobservacao : indefinido;
    Femail : WideString;
    Fbloqueio : Boolean;
    Fcontribuinte_icms : Boolean;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Settipo(const Value : WideString);
    procedure Setid_empresa(const Value : Integer);
    procedure Setnome(const Value : WideString);
    procedure Setdata_ficha(const Value : indefinido);
    procedure Setrazao_social(const Value : WideString);
    procedure Setid_cidade(const Value : Integer);
    procedure Setendereco(const Value : WideString);
    procedure Setbairro(const Value : WideString);
    procedure Setuf(const Value : WideString);
    procedure Setcep(const Value : WideString);
    procedure Settelefone(const Value : WideString);
    procedure Setcnpj(const Value : WideString);
    procedure Setcpf(const Value : WideString);
    procedure Setinscricao_estadual(const Value : WideString);
    procedure Setrg_ssp(const Value : WideString);
    procedure Setrg(const Value : WideString);
    procedure Setdata_nascimento(const Value : indefinido);
    procedure Setsexo(const Value : WideString);
    procedure Setpai(const Value : WideString);
    procedure Setmae(const Value : WideString);
    procedure Setdependentes(const Value : Integer);
    procedure Setconjugue(const Value : WideString);
    procedure Setfuncao(const Value : WideString);
    procedure Setspc(const Value : WideString);
    procedure Setlimite(const Value : Double);
    procedure Setcompras(const Value : Double);
    procedure Setcidade(const Value : WideString);
    procedure Setativo(const Value : Boolean);
    procedure Setatacado(const Value : Boolean);
    procedure Setestado_civil(const Value : WideString);
    procedure Setobservacao(const Value : indefinido);
    procedure Setemail(const Value : WideString);
    procedure Setbloqueio(const Value : Boolean);
    procedure Setcontribuinte_icms(const Value : Boolean);

  public

    property id : Integer         read Fid    write Fid;
    property tipo : WideString         read Ftipo    write Ftipo;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property nome : WideString         read Fnome    write Fnome;
    property data_ficha : indefinido         read Fdata_ficha    write Fdata_ficha;
    property razao_social : WideString         read Frazao_social    write Frazao_social;
    property id_cidade : Integer         read Fid_cidade    write Fid_cidade;
    property endereco : WideString         read Fendereco    write Fendereco;
    property bairro : WideString         read Fbairro    write Fbairro;
    property uf : WideString         read Fuf    write Fuf;
    property cep : WideString         read Fcep    write Fcep;
    property telefone : WideString         read Ftelefone    write Ftelefone;
    property cnpj : WideString         read Fcnpj    write Fcnpj;
    property cpf : WideString         read Fcpf    write Fcpf;
    property inscricao_estadual : WideString         read Finscricao_estadual    write Finscricao_estadual;
    property rg_ssp : WideString         read Frg_ssp    write Frg_ssp;
    property rg : WideString         read Frg    write Frg;
    property data_nascimento : indefinido         read Fdata_nascimento    write Fdata_nascimento;
    property sexo : WideString         read Fsexo    write Fsexo;
    property pai : WideString         read Fpai    write Fpai;
    property mae : WideString         read Fmae    write Fmae;
    property dependentes : Integer         read Fdependentes    write Fdependentes;
    property conjugue : WideString         read Fconjugue    write Fconjugue;
    property funcao : WideString         read Ffuncao    write Ffuncao;
    property spc : WideString         read Fspc    write Fspc;
    property limite : Double         read Flimite    write Flimite;
    property compras : Double         read Fcompras    write Fcompras;
    property cidade : WideString         read Fcidade    write Fcidade;
    property ativo : Boolean         read Fativo    write Fativo;
    property atacado : Boolean         read Fatacado    write Fatacado;
    property estado_civil : WideString         read Festado_civil    write Festado_civil;
    property observacao : indefinido         read Fobservacao    write Fobservacao;
    property email : WideString         read Femail    write Femail;
    property bloqueio : Boolean         read Fbloqueio    write Fbloqueio;
    property contribuinte_icms : Boolean         read Fcontribuinte_icms    write Fcontribuinte_icms;

  end;

var
  Frm_ViewERPimportcidades : TFrm_ViewERPimportcidades; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 35; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_ficha); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].razao_social); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].endereco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].bairro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].uf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cep); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].telefone); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cnpj); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cpf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].inscricao_estadual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].rg_ssp); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].rg); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_nascimento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].sexo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pai); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].mae); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dependentes); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].conjugue); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].funcao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].spc); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].limite); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].compras); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ativo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].atacado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estado_civil); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].observacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].email); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].bloqueio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].contribuinte_icms); 
    end; 
end; 

procedure TFrm_ViewERPimportcidades.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.tipo := Edit_tipo.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.data_ficha := Edit_data_ficha.text;
      FController.Model.razao_social := Edit_razao_social.text;
      FController.Model.id_cidade := Edit_id_cidade.text;
      FController.Model.endereco := Edit_endereco.text;
      FController.Model.bairro := Edit_bairro.text;
      FController.Model.uf := Edit_uf.text;
      FController.Model.cep := Edit_cep.text;
      FController.Model.telefone := Edit_telefone.text;
      FController.Model.cnpj := Edit_cnpj.text;
      FController.Model.cpf := Edit_cpf.text;
      FController.Model.inscricao_estadual := Edit_inscricao_estadual.text;
      FController.Model.rg_ssp := Edit_rg_ssp.text;
      FController.Model.rg := Edit_rg.text;
      FController.Model.data_nascimento := Edit_data_nascimento.text;
      FController.Model.sexo := Edit_sexo.text;
      FController.Model.pai := Edit_pai.text;
      FController.Model.mae := Edit_mae.text;
      FController.Model.dependentes := Edit_dependentes.text;
      FController.Model.conjugue := Edit_conjugue.text;
      FController.Model.funcao := Edit_funcao.text;
      FController.Model.spc := Edit_spc.text;
      FController.Model.limite := Edit_limite.text;
      FController.Model.compras := Edit_compras.text;
      FController.Model.cidade := Edit_cidade.text;
      FController.Model.ativo := Edit_ativo.text;
      FController.Model.atacado := Edit_atacado.text;
      FController.Model.estado_civil := Edit_estado_civil.text;
      FController.Model.observacao := Edit_observacao.text;
      FController.Model.email := Edit_email.text;
      FController.Model.bloqueio := Edit_bloqueio.text;
      FController.Model.contribuinte_icms := Edit_contribuinte_icms.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPimportcidades.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPimportcidades.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPimportcidades.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPimportcidades.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPimportcidades.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPimportcidades.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPimportcidades.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 35;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := tipo;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := data_ficha;  
     Grid.Cells[inttostr(i),0] := razao_social;  
     Grid.Cells[inttostr(i),0] := id_cidade;  
     Grid.Cells[inttostr(i),0] := endereco;  
     Grid.Cells[inttostr(i),0] := bairro;  
     Grid.Cells[inttostr(i),0] := uf;  
     Grid.Cells[inttostr(i),0] := cep;  
     Grid.Cells[inttostr(i),0] := telefone;  
     Grid.Cells[inttostr(i),0] := cnpj;  
     Grid.Cells[inttostr(i),0] := cpf;  
     Grid.Cells[inttostr(i),0] := inscricao_estadual;  
     Grid.Cells[inttostr(i),0] := rg_ssp;  
     Grid.Cells[inttostr(i),0] := rg;  
     Grid.Cells[inttostr(i),0] := data_nascimento;  
     Grid.Cells[inttostr(i),0] := sexo;  
     Grid.Cells[inttostr(i),0] := pai;  
     Grid.Cells[inttostr(i),0] := mae;  
     Grid.Cells[inttostr(i),0] := dependentes;  
     Grid.Cells[inttostr(i),0] := conjugue;  
     Grid.Cells[inttostr(i),0] := funcao;  
     Grid.Cells[inttostr(i),0] := spc;  
     Grid.Cells[inttostr(i),0] := limite;  
     Grid.Cells[inttostr(i),0] := compras;  
     Grid.Cells[inttostr(i),0] := cidade;  
     Grid.Cells[inttostr(i),0] := ativo;  
     Grid.Cells[inttostr(i),0] := atacado;  
     Grid.Cells[inttostr(i),0] := estado_civil;  
     Grid.Cells[inttostr(i),0] := observacao;  
     Grid.Cells[inttostr(i),0] := email;  
     Grid.Cells[inttostr(i),0] := bloqueio;  
     Grid.Cells[inttostr(i),0] := contribuinte_icms;  
end;

procedure TFrm_ViewERPimportcidades.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPimportcidades.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPimportcidades.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.tipo := Grid.Cells[1,Grid.row];
    FController.Model.id_empresa := Grid.Cells[2,Grid.row];
    FController.Model.nome := Grid.Cells[3,Grid.row];
    FController.Model.data_ficha := Grid.Cells[4,Grid.row];
    FController.Model.razao_social := Grid.Cells[5,Grid.row];
    FController.Model.id_cidade := Grid.Cells[6,Grid.row];
    FController.Model.endereco := Grid.Cells[7,Grid.row];
    FController.Model.bairro := Grid.Cells[8,Grid.row];
    FController.Model.uf := Grid.Cells[9,Grid.row];
    FController.Model.cep := Grid.Cells[10,Grid.row];
    FController.Model.telefone := Grid.Cells[11,Grid.row];
    FController.Model.cnpj := Grid.Cells[12,Grid.row];
    FController.Model.cpf := Grid.Cells[13,Grid.row];
    FController.Model.inscricao_estadual := Grid.Cells[14,Grid.row];
    FController.Model.rg_ssp := Grid.Cells[15,Grid.row];
    FController.Model.rg := Grid.Cells[16,Grid.row];
    FController.Model.data_nascimento := Grid.Cells[17,Grid.row];
    FController.Model.sexo := Grid.Cells[18,Grid.row];
    FController.Model.pai := Grid.Cells[19,Grid.row];
    FController.Model.mae := Grid.Cells[20,Grid.row];
    FController.Model.dependentes := Grid.Cells[21,Grid.row];
    FController.Model.conjugue := Grid.Cells[22,Grid.row];
    FController.Model.funcao := Grid.Cells[23,Grid.row];
    FController.Model.spc := Grid.Cells[24,Grid.row];
    FController.Model.limite := Grid.Cells[25,Grid.row];
    FController.Model.compras := Grid.Cells[26,Grid.row];
    FController.Model.cidade := Grid.Cells[27,Grid.row];
    FController.Model.ativo := Grid.Cells[28,Grid.row];
    FController.Model.atacado := Grid.Cells[29,Grid.row];
    FController.Model.estado_civil := Grid.Cells[30,Grid.row];
    FController.Model.observacao := Grid.Cells[31,Grid.row];
    FController.Model.email := Grid.Cells[32,Grid.row];
    FController.Model.bloqueio := Grid.Cells[33,Grid.row];
    FController.Model.contribuinte_icms := Grid.Cells[34,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPimportcidades.LimparTela;  
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

procedure TFrm_ViewERPimportcidades.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcidades.Settipo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcidades.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcidades.Setnome(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcidades.Setdata_ficha(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcidades.Setrazao_social(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcidades.Setid_cidade(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcidades.Setendereco(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcidades.Setbairro(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcidades.Setuf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcidades.Setcep(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcidades.Settelefone(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcidades.Setcnpj(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcidades.Setcpf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcidades.Setinscricao_estadual(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcidades.Setrg_ssp(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcidades.Setrg(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcidades.Setdata_nascimento(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcidades.Setsexo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcidades.Setpai(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcidades.Setmae(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcidades.Setdependentes(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcidades.Setconjugue(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcidades.Setfuncao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcidades.Setspc(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcidades.Setlimite(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcidades.Setcompras(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcidades.Setcidade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcidades.Setativo(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcidades.Setatacado(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcidades.Setestado_civil(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcidades.Setobservacao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcidades.Setemail(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcidades.Setbloqueio(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimportcidades.Setcontribuinte_icms(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
