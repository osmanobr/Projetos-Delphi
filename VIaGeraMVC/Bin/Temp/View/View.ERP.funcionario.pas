
unit View.ERP.fornecedor_produtos;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.fornecedor_produtos, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPfornecedorprodutos = class(TForm) 
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
    FController : TControllerERPfornecedorprodutos; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fnome : WideString;
    Fendereco : WideString;
    Fbairro : WideString;
    Fid_cidade : Integer;
    Fuf : WideString;
    Fcep : WideString;
    Fcpf : WideString;
    Ffone : WideString;
    Fcelular : WideString;
    Ffax : WideString;
    Fdesconto : Double;
    Fcomissao_avista : Double;
    Fcomissao_aprazo : Double;
    Fcomissao_servico : Double;
    Fdata_nasc : TDateTime;
    Fdata_admi : TDateTime;
    Fdata_demi : TDateTime;
    Fsalario : Double;
    Frg : WideString;
    Fcart_trabalho : WideString;
    Ftitulo : WideString;
    Fescolaridade : WideString;
    Fobs : indefinido;
    Fclick : Boolean;
    Fdata_ferias : TDateTime;
    Finss : Double;
    Fvale_transporte : Double;
    Fcargo : WideString;
    Fid_grupo : Integer;
    Fconta : WideString;
    Fagencia : WideString;
    Fativo : WideString;
    Fop : WideString;
    Fsindicato : Double;
    Fvalor_sindicato : Double;
    Fvalor_inss : Double;
    Fdigital : indefinido;
    Fsenha : WideString;
    Fespecializacao : WideString;
    Fregistro : WideString;
    Fresponsavel_tecnico : Boolean;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setnome(const Value : WideString);
    procedure Setendereco(const Value : WideString);
    procedure Setbairro(const Value : WideString);
    procedure Setid_cidade(const Value : Integer);
    procedure Setuf(const Value : WideString);
    procedure Setcep(const Value : WideString);
    procedure Setcpf(const Value : WideString);
    procedure Setfone(const Value : WideString);
    procedure Setcelular(const Value : WideString);
    procedure Setfax(const Value : WideString);
    procedure Setdesconto(const Value : Double);
    procedure Setcomissao_avista(const Value : Double);
    procedure Setcomissao_aprazo(const Value : Double);
    procedure Setcomissao_servico(const Value : Double);
    procedure Setdata_nasc(const Value : TDateTime);
    procedure Setdata_admi(const Value : TDateTime);
    procedure Setdata_demi(const Value : TDateTime);
    procedure Setsalario(const Value : Double);
    procedure Setrg(const Value : WideString);
    procedure Setcart_trabalho(const Value : WideString);
    procedure Settitulo(const Value : WideString);
    procedure Setescolaridade(const Value : WideString);
    procedure Setobs(const Value : indefinido);
    procedure Setclick(const Value : Boolean);
    procedure Setdata_ferias(const Value : TDateTime);
    procedure Setinss(const Value : Double);
    procedure Setvale_transporte(const Value : Double);
    procedure Setcargo(const Value : WideString);
    procedure Setid_grupo(const Value : Integer);
    procedure Setconta(const Value : WideString);
    procedure Setagencia(const Value : WideString);
    procedure Setativo(const Value : WideString);
    procedure Setop(const Value : WideString);
    procedure Setsindicato(const Value : Double);
    procedure Setvalor_sindicato(const Value : Double);
    procedure Setvalor_inss(const Value : Double);
    procedure Setdigital(const Value : indefinido);
    procedure Setsenha(const Value : WideString);
    procedure Setespecializacao(const Value : WideString);
    procedure Setregistro(const Value : WideString);
    procedure Setresponsavel_tecnico(const Value : Boolean);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property nome : WideString         read Fnome    write Fnome;
    property endereco : WideString         read Fendereco    write Fendereco;
    property bairro : WideString         read Fbairro    write Fbairro;
    property id_cidade : Integer         read Fid_cidade    write Fid_cidade;
    property uf : WideString         read Fuf    write Fuf;
    property cep : WideString         read Fcep    write Fcep;
    property cpf : WideString         read Fcpf    write Fcpf;
    property fone : WideString         read Ffone    write Ffone;
    property celular : WideString         read Fcelular    write Fcelular;
    property fax : WideString         read Ffax    write Ffax;
    property desconto : Double         read Fdesconto    write Fdesconto;
    property comissao_avista : Double         read Fcomissao_avista    write Fcomissao_avista;
    property comissao_aprazo : Double         read Fcomissao_aprazo    write Fcomissao_aprazo;
    property comissao_servico : Double         read Fcomissao_servico    write Fcomissao_servico;
    property data_nasc : TDateTime         read Fdata_nasc    write Fdata_nasc;
    property data_admi : TDateTime         read Fdata_admi    write Fdata_admi;
    property data_demi : TDateTime         read Fdata_demi    write Fdata_demi;
    property salario : Double         read Fsalario    write Fsalario;
    property rg : WideString         read Frg    write Frg;
    property cart_trabalho : WideString         read Fcart_trabalho    write Fcart_trabalho;
    property titulo : WideString         read Ftitulo    write Ftitulo;
    property escolaridade : WideString         read Fescolaridade    write Fescolaridade;
    property obs : indefinido         read Fobs    write Fobs;
    property click : Boolean         read Fclick    write Fclick;
    property data_ferias : TDateTime         read Fdata_ferias    write Fdata_ferias;
    property inss : Double         read Finss    write Finss;
    property vale_transporte : Double         read Fvale_transporte    write Fvale_transporte;
    property cargo : WideString         read Fcargo    write Fcargo;
    property id_grupo : Integer         read Fid_grupo    write Fid_grupo;
    property conta : WideString         read Fconta    write Fconta;
    property agencia : WideString         read Fagencia    write Fagencia;
    property ativo : WideString         read Fativo    write Fativo;
    property op : WideString         read Fop    write Fop;
    property sindicato : Double         read Fsindicato    write Fsindicato;
    property valor_sindicato : Double         read Fvalor_sindicato    write Fvalor_sindicato;
    property valor_inss : Double         read Fvalor_inss    write Fvalor_inss;
    property digital : indefinido         read Fdigital    write Fdigital;
    property senha : WideString         read Fsenha    write Fsenha;
    property especializacao : WideString         read Fespecializacao    write Fespecializacao;
    property registro : WideString         read Fregistro    write Fregistro;
    property responsavel_tecnico : Boolean         read Fresponsavel_tecnico    write Fresponsavel_tecnico;

  end;

var
  Frm_ViewERPfornecedorprodutos : TFrm_ViewERPfornecedorprodutos; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 43; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].endereco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].bairro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].uf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cep); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cpf); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fone); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].celular); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fax); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].desconto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comissao_avista); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comissao_aprazo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comissao_servico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_nasc); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_admi); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_demi); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].salario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].rg); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cart_trabalho); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].titulo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].escolaridade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_ferias); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].inss); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vale_transporte); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cargo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_grupo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].conta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].agencia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ativo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].op); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].sindicato); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_sindicato); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_inss); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].digital); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].senha); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].especializacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].registro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].responsavel_tecnico); 
    end; 
end; 

procedure TFrm_ViewERPfornecedorprodutos.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.endereco := Edit_endereco.text;
      FController.Model.bairro := Edit_bairro.text;
      FController.Model.id_cidade := Edit_id_cidade.text;
      FController.Model.uf := Edit_uf.text;
      FController.Model.cep := Edit_cep.text;
      FController.Model.cpf := Edit_cpf.text;
      FController.Model.fone := Edit_fone.text;
      FController.Model.celular := Edit_celular.text;
      FController.Model.fax := Edit_fax.text;
      FController.Model.desconto := Edit_desconto.text;
      FController.Model.comissao_avista := Edit_comissao_avista.text;
      FController.Model.comissao_aprazo := Edit_comissao_aprazo.text;
      FController.Model.comissao_servico := Edit_comissao_servico.text;
      FController.Model.data_nasc := Edit_data_nasc.text;
      FController.Model.data_admi := Edit_data_admi.text;
      FController.Model.data_demi := Edit_data_demi.text;
      FController.Model.salario := Edit_salario.text;
      FController.Model.rg := Edit_rg.text;
      FController.Model.cart_trabalho := Edit_cart_trabalho.text;
      FController.Model.titulo := Edit_titulo.text;
      FController.Model.escolaridade := Edit_escolaridade.text;
      FController.Model.obs := Edit_obs.text;
      FController.Model.click := Edit_click.text;
      FController.Model.data_ferias := Edit_data_ferias.text;
      FController.Model.inss := Edit_inss.text;
      FController.Model.vale_transporte := Edit_vale_transporte.text;
      FController.Model.cargo := Edit_cargo.text;
      FController.Model.id_grupo := Edit_id_grupo.text;
      FController.Model.conta := Edit_conta.text;
      FController.Model.agencia := Edit_agencia.text;
      FController.Model.ativo := Edit_ativo.text;
      FController.Model.op := Edit_op.text;
      FController.Model.sindicato := Edit_sindicato.text;
      FController.Model.valor_sindicato := Edit_valor_sindicato.text;
      FController.Model.valor_inss := Edit_valor_inss.text;
      FController.Model.digital := Edit_digital.text;
      FController.Model.senha := Edit_senha.text;
      FController.Model.especializacao := Edit_especializacao.text;
      FController.Model.registro := Edit_registro.text;
      FController.Model.responsavel_tecnico := Edit_responsavel_tecnico.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPfornecedorprodutos.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPfornecedorprodutos.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPfornecedorprodutos.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPfornecedorprodutos.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPfornecedorprodutos.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPfornecedorprodutos.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPfornecedorprodutos.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 43;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := endereco;  
     Grid.Cells[inttostr(i),0] := bairro;  
     Grid.Cells[inttostr(i),0] := id_cidade;  
     Grid.Cells[inttostr(i),0] := uf;  
     Grid.Cells[inttostr(i),0] := cep;  
     Grid.Cells[inttostr(i),0] := cpf;  
     Grid.Cells[inttostr(i),0] := fone;  
     Grid.Cells[inttostr(i),0] := celular;  
     Grid.Cells[inttostr(i),0] := fax;  
     Grid.Cells[inttostr(i),0] := desconto;  
     Grid.Cells[inttostr(i),0] := comissao_avista;  
     Grid.Cells[inttostr(i),0] := comissao_aprazo;  
     Grid.Cells[inttostr(i),0] := comissao_servico;  
     Grid.Cells[inttostr(i),0] := data_nasc;  
     Grid.Cells[inttostr(i),0] := data_admi;  
     Grid.Cells[inttostr(i),0] := data_demi;  
     Grid.Cells[inttostr(i),0] := salario;  
     Grid.Cells[inttostr(i),0] := rg;  
     Grid.Cells[inttostr(i),0] := cart_trabalho;  
     Grid.Cells[inttostr(i),0] := titulo;  
     Grid.Cells[inttostr(i),0] := escolaridade;  
     Grid.Cells[inttostr(i),0] := obs;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := data_ferias;  
     Grid.Cells[inttostr(i),0] := inss;  
     Grid.Cells[inttostr(i),0] := vale_transporte;  
     Grid.Cells[inttostr(i),0] := cargo;  
     Grid.Cells[inttostr(i),0] := id_grupo;  
     Grid.Cells[inttostr(i),0] := conta;  
     Grid.Cells[inttostr(i),0] := agencia;  
     Grid.Cells[inttostr(i),0] := ativo;  
     Grid.Cells[inttostr(i),0] := op;  
     Grid.Cells[inttostr(i),0] := sindicato;  
     Grid.Cells[inttostr(i),0] := valor_sindicato;  
     Grid.Cells[inttostr(i),0] := valor_inss;  
     Grid.Cells[inttostr(i),0] := digital;  
     Grid.Cells[inttostr(i),0] := senha;  
     Grid.Cells[inttostr(i),0] := especializacao;  
     Grid.Cells[inttostr(i),0] := registro;  
     Grid.Cells[inttostr(i),0] := responsavel_tecnico;  
end;

procedure TFrm_ViewERPfornecedorprodutos.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPfornecedorprodutos.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPfornecedorprodutos.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.nome := Grid.Cells[2,Grid.row];
    FController.Model.endereco := Grid.Cells[3,Grid.row];
    FController.Model.bairro := Grid.Cells[4,Grid.row];
    FController.Model.id_cidade := Grid.Cells[5,Grid.row];
    FController.Model.uf := Grid.Cells[6,Grid.row];
    FController.Model.cep := Grid.Cells[7,Grid.row];
    FController.Model.cpf := Grid.Cells[8,Grid.row];
    FController.Model.fone := Grid.Cells[9,Grid.row];
    FController.Model.celular := Grid.Cells[10,Grid.row];
    FController.Model.fax := Grid.Cells[11,Grid.row];
    FController.Model.desconto := Grid.Cells[12,Grid.row];
    FController.Model.comissao_avista := Grid.Cells[13,Grid.row];
    FController.Model.comissao_aprazo := Grid.Cells[14,Grid.row];
    FController.Model.comissao_servico := Grid.Cells[15,Grid.row];
    FController.Model.data_nasc := Grid.Cells[16,Grid.row];
    FController.Model.data_admi := Grid.Cells[17,Grid.row];
    FController.Model.data_demi := Grid.Cells[18,Grid.row];
    FController.Model.salario := Grid.Cells[19,Grid.row];
    FController.Model.rg := Grid.Cells[20,Grid.row];
    FController.Model.cart_trabalho := Grid.Cells[21,Grid.row];
    FController.Model.titulo := Grid.Cells[22,Grid.row];
    FController.Model.escolaridade := Grid.Cells[23,Grid.row];
    FController.Model.obs := Grid.Cells[24,Grid.row];
    FController.Model.click := Grid.Cells[25,Grid.row];
    FController.Model.data_ferias := Grid.Cells[26,Grid.row];
    FController.Model.inss := Grid.Cells[27,Grid.row];
    FController.Model.vale_transporte := Grid.Cells[28,Grid.row];
    FController.Model.cargo := Grid.Cells[29,Grid.row];
    FController.Model.id_grupo := Grid.Cells[30,Grid.row];
    FController.Model.conta := Grid.Cells[31,Grid.row];
    FController.Model.agencia := Grid.Cells[32,Grid.row];
    FController.Model.ativo := Grid.Cells[33,Grid.row];
    FController.Model.op := Grid.Cells[34,Grid.row];
    FController.Model.sindicato := Grid.Cells[35,Grid.row];
    FController.Model.valor_sindicato := Grid.Cells[36,Grid.row];
    FController.Model.valor_inss := Grid.Cells[37,Grid.row];
    FController.Model.digital := Grid.Cells[38,Grid.row];
    FController.Model.senha := Grid.Cells[39,Grid.row];
    FController.Model.especializacao := Grid.Cells[40,Grid.row];
    FController.Model.registro := Grid.Cells[41,Grid.row];
    FController.Model.responsavel_tecnico := Grid.Cells[42,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPfornecedorprodutos.LimparTela;  
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

procedure TFrm_ViewERPfornecedorprodutos.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setnome(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setendereco(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setbairro(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setid_cidade(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setuf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setcep(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setcpf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setfone(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setcelular(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setfax(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setdesconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setcomissao_avista(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setcomissao_aprazo(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setcomissao_servico(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setdata_nasc(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setdata_admi(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setdata_demi(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setsalario(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setrg(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setcart_trabalho(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Settitulo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setescolaridade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setobs(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setdata_ferias(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setinss(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setvale_transporte(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setcargo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setid_grupo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setconta(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setagencia(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setativo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setop(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setsindicato(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setvalor_sindicato(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setvalor_inss(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setdigital(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setsenha(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setespecializacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setregistro(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfornecedorprodutos.Setresponsavel_tecnico(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
