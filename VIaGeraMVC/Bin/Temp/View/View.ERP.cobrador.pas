
unit View.ERP.clientes_spc;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.clientes_spc, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPclientesspc = class(TForm) 
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
    FController : TControllerERPclientesspc; 
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

  end;

var
  Frm_ViewERPclientesspc : TFrm_ViewERPclientesspc; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 24; 
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
    end; 
end; 

procedure TFrm_ViewERPclientesspc.ScreenToModel;  
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

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPclientesspc.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPclientesspc.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPclientesspc.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPclientesspc.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPclientesspc.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPclientesspc.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPclientesspc.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 24;         
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
end;

procedure TFrm_ViewERPclientesspc.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPclientesspc.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPclientesspc.GridClick(Sender: TObject);   
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
    FController.Model.data_nasc := Grid.Cells[14,Grid.row];
    FController.Model.data_admi := Grid.Cells[15,Grid.row];
    FController.Model.data_demi := Grid.Cells[16,Grid.row];
    FController.Model.salario := Grid.Cells[17,Grid.row];
    FController.Model.rg := Grid.Cells[18,Grid.row];
    FController.Model.cart_trabalho := Grid.Cells[19,Grid.row];
    FController.Model.titulo := Grid.Cells[20,Grid.row];
    FController.Model.escolaridade := Grid.Cells[21,Grid.row];
    FController.Model.obs := Grid.Cells[22,Grid.row];
    FController.Model.click := Grid.Cells[23,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPclientesspc.LimparTela;  
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

procedure TFrm_ViewERPclientesspc.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesspc.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesspc.Setnome(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesspc.Setendereco(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesspc.Setbairro(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesspc.Setid_cidade(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesspc.Setuf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesspc.Setcep(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesspc.Setcpf(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesspc.Setfone(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesspc.Setcelular(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesspc.Setfax(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesspc.Setdesconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesspc.Setcomissao_avista(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesspc.Setdata_nasc(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesspc.Setdata_admi(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesspc.Setdata_demi(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesspc.Setsalario(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesspc.Setrg(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesspc.Setcart_trabalho(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesspc.Settitulo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesspc.Setescolaridade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesspc.Setobs(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPclientesspc.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
