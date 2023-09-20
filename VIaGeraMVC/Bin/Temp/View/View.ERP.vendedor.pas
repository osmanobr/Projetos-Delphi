
unit View.ERP.venda_xml_nfe;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.venda_xml_nfe, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPvendaxmlnfe = class(TForm) 
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
    FController : TControllerERPvendaxmlnfe; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fnome : indefinido;
    Fendereco : indefinido;
    Fbairro : indefinido;
    Fid_cidade : Integer;
    Fuf : indefinido;
    Fcep : indefinido;
    Fcpf : indefinido;
    Ffone : indefinido;
    Fcelular : indefinido;
    Ffax : indefinido;
    Fdesconto : Double;
    Fcomissao_avista : Double;
    Fcomissao_aprazo : Double;
    Fcomissao_servico : Double;
    Fdata_nasc : TDateTime;
    Fdata_admi : TDateTime;
    Fdata_demi : TDateTime;
    Fsalario : Double;
    Frg : indefinido;
    Fcart_trabalho : indefinido;
    Ftitulo : indefinido;
    Fescolaridade : indefinido;
    Fobs : indefinido;
    Fclick : Boolean;
    Ftipo : indefinido;
    Fid_supervisor : Integer;
    Ffpb_senha : indefinido;
    Fativo : indefinido;
    Fcomissao_financeiro : Double;
    Fmeta : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setnome(const Value : indefinido);
    procedure Setendereco(const Value : indefinido);
    procedure Setbairro(const Value : indefinido);
    procedure Setid_cidade(const Value : Integer);
    procedure Setuf(const Value : indefinido);
    procedure Setcep(const Value : indefinido);
    procedure Setcpf(const Value : indefinido);
    procedure Setfone(const Value : indefinido);
    procedure Setcelular(const Value : indefinido);
    procedure Setfax(const Value : indefinido);
    procedure Setdesconto(const Value : Double);
    procedure Setcomissao_avista(const Value : Double);
    procedure Setcomissao_aprazo(const Value : Double);
    procedure Setcomissao_servico(const Value : Double);
    procedure Setdata_nasc(const Value : TDateTime);
    procedure Setdata_admi(const Value : TDateTime);
    procedure Setdata_demi(const Value : TDateTime);
    procedure Setsalario(const Value : Double);
    procedure Setrg(const Value : indefinido);
    procedure Setcart_trabalho(const Value : indefinido);
    procedure Settitulo(const Value : indefinido);
    procedure Setescolaridade(const Value : indefinido);
    procedure Setobs(const Value : indefinido);
    procedure Setclick(const Value : Boolean);
    procedure Settipo(const Value : indefinido);
    procedure Setid_supervisor(const Value : Integer);
    procedure Setfpb_senha(const Value : indefinido);
    procedure Setativo(const Value : indefinido);
    procedure Setcomissao_financeiro(const Value : Double);
    procedure Setmeta(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property nome : indefinido         read Fnome    write Fnome;
    property endereco : indefinido         read Fendereco    write Fendereco;
    property bairro : indefinido         read Fbairro    write Fbairro;
    property id_cidade : Integer         read Fid_cidade    write Fid_cidade;
    property uf : indefinido         read Fuf    write Fuf;
    property cep : indefinido         read Fcep    write Fcep;
    property cpf : indefinido         read Fcpf    write Fcpf;
    property fone : indefinido         read Ffone    write Ffone;
    property celular : indefinido         read Fcelular    write Fcelular;
    property fax : indefinido         read Ffax    write Ffax;
    property desconto : Double         read Fdesconto    write Fdesconto;
    property comissao_avista : Double         read Fcomissao_avista    write Fcomissao_avista;
    property comissao_aprazo : Double         read Fcomissao_aprazo    write Fcomissao_aprazo;
    property comissao_servico : Double         read Fcomissao_servico    write Fcomissao_servico;
    property data_nasc : TDateTime         read Fdata_nasc    write Fdata_nasc;
    property data_admi : TDateTime         read Fdata_admi    write Fdata_admi;
    property data_demi : TDateTime         read Fdata_demi    write Fdata_demi;
    property salario : Double         read Fsalario    write Fsalario;
    property rg : indefinido         read Frg    write Frg;
    property cart_trabalho : indefinido         read Fcart_trabalho    write Fcart_trabalho;
    property titulo : indefinido         read Ftitulo    write Ftitulo;
    property escolaridade : indefinido         read Fescolaridade    write Fescolaridade;
    property obs : indefinido         read Fobs    write Fobs;
    property click : Boolean         read Fclick    write Fclick;
    property tipo : indefinido         read Ftipo    write Ftipo;
    property id_supervisor : Integer         read Fid_supervisor    write Fid_supervisor;
    property fpb_senha : indefinido         read Ffpb_senha    write Ffpb_senha;
    property ativo : indefinido         read Fativo    write Fativo;
    property comissao_financeiro : Double         read Fcomissao_financeiro    write Fcomissao_financeiro;
    property meta : Double         read Fmeta    write Fmeta;

  end;

var
  Frm_ViewERPvendaxmlnfe : TFrm_ViewERPvendaxmlnfe; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 32; 
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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_supervisor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fpb_senha); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ativo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comissao_financeiro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].meta); 
    end; 
end; 

procedure TFrm_ViewERPvendaxmlnfe.ScreenToModel;  
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
      FController.Model.tipo := Edit_tipo.text;
      FController.Model.id_supervisor := Edit_id_supervisor.text;
      FController.Model.fpb_senha := Edit_fpb_senha.text;
      FController.Model.ativo := Edit_ativo.text;
      FController.Model.comissao_financeiro := Edit_comissao_financeiro.text;
      FController.Model.meta := Edit_meta.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPvendaxmlnfe.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPvendaxmlnfe.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPvendaxmlnfe.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPvendaxmlnfe.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPvendaxmlnfe.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPvendaxmlnfe.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPvendaxmlnfe.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 32;         
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
     Grid.Cells[inttostr(i),0] := tipo;  
     Grid.Cells[inttostr(i),0] := id_supervisor;  
     Grid.Cells[inttostr(i),0] := fpb_senha;  
     Grid.Cells[inttostr(i),0] := ativo;  
     Grid.Cells[inttostr(i),0] := comissao_financeiro;  
     Grid.Cells[inttostr(i),0] := meta;  
end;

procedure TFrm_ViewERPvendaxmlnfe.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPvendaxmlnfe.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPvendaxmlnfe.GridClick(Sender: TObject);   
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
    FController.Model.tipo := Grid.Cells[26,Grid.row];
    FController.Model.id_supervisor := Grid.Cells[27,Grid.row];
    FController.Model.fpb_senha := Grid.Cells[28,Grid.row];
    FController.Model.ativo := Grid.Cells[29,Grid.row];
    FController.Model.comissao_financeiro := Grid.Cells[30,Grid.row];
    FController.Model.meta := Grid.Cells[31,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPvendaxmlnfe.LimparTela;  
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

procedure TFrm_ViewERPvendaxmlnfe.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxmlnfe.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxmlnfe.Setnome(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxmlnfe.Setendereco(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxmlnfe.Setbairro(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxmlnfe.Setid_cidade(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxmlnfe.Setuf(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxmlnfe.Setcep(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxmlnfe.Setcpf(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxmlnfe.Setfone(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxmlnfe.Setcelular(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxmlnfe.Setfax(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxmlnfe.Setdesconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxmlnfe.Setcomissao_avista(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxmlnfe.Setcomissao_aprazo(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxmlnfe.Setcomissao_servico(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxmlnfe.Setdata_nasc(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxmlnfe.Setdata_admi(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxmlnfe.Setdata_demi(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxmlnfe.Setsalario(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxmlnfe.Setrg(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxmlnfe.Setcart_trabalho(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxmlnfe.Settitulo(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxmlnfe.Setescolaridade(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxmlnfe.Setobs(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxmlnfe.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxmlnfe.Settipo(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxmlnfe.Setid_supervisor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxmlnfe.Setfpb_senha(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxmlnfe.Setativo(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxmlnfe.Setcomissao_financeiro(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxmlnfe.Setmeta(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
