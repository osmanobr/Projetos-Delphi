
unit View.ERP.secao;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.secao, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPsecao = class(TForm) 
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
    FController : TControllerERPsecao; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fnome : indefinido;
    Fcomissao : Double;
    Fvalor : Double;
    Fclick : Boolean;
    Funidade : indefinido;
    Fissqn : Double;
    Fiat : indefinido;
    Fippt : indefinido;
    Ffabricante : indefinido;
    Fpreco_custo : Double;
    Fcst_pis : indefinido;
    Fcst_cofins : indefinido;
    Fnat_bc_cred : indefinido;
    Fcomissao_valor : Double;
    Fintervalo_utilizacao : Integer;
    Fmaximo_utilizado : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setnome(const Value : indefinido);
    procedure Setcomissao(const Value : Double);
    procedure Setvalor(const Value : Double);
    procedure Setclick(const Value : Boolean);
    procedure Setunidade(const Value : indefinido);
    procedure Setissqn(const Value : Double);
    procedure Setiat(const Value : indefinido);
    procedure Setippt(const Value : indefinido);
    procedure Setfabricante(const Value : indefinido);
    procedure Setpreco_custo(const Value : Double);
    procedure Setcst_pis(const Value : indefinido);
    procedure Setcst_cofins(const Value : indefinido);
    procedure Setnat_bc_cred(const Value : indefinido);
    procedure Setcomissao_valor(const Value : Double);
    procedure Setintervalo_utilizacao(const Value : Integer);
    procedure Setmaximo_utilizado(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property nome : indefinido         read Fnome    write Fnome;
    property comissao : Double         read Fcomissao    write Fcomissao;
    property valor : Double         read Fvalor    write Fvalor;
    property click : Boolean         read Fclick    write Fclick;
    property unidade : indefinido         read Funidade    write Funidade;
    property issqn : Double         read Fissqn    write Fissqn;
    property iat : indefinido         read Fiat    write Fiat;
    property ippt : indefinido         read Fippt    write Fippt;
    property fabricante : indefinido         read Ffabricante    write Ffabricante;
    property preco_custo : Double         read Fpreco_custo    write Fpreco_custo;
    property cst_pis : indefinido         read Fcst_pis    write Fcst_pis;
    property cst_cofins : indefinido         read Fcst_cofins    write Fcst_cofins;
    property nat_bc_cred : indefinido         read Fnat_bc_cred    write Fnat_bc_cred;
    property comissao_valor : Double         read Fcomissao_valor    write Fcomissao_valor;
    property intervalo_utilizacao : Integer         read Fintervalo_utilizacao    write Fintervalo_utilizacao;
    property maximo_utilizado : Double         read Fmaximo_utilizado    write Fmaximo_utilizado;

  end;

var
  Frm_ViewERPsecao : TFrm_ViewERPsecao; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].issqn); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].iat); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ippt); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fabricante); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_custo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cst_pis); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cst_cofins); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nat_bc_cred); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comissao_valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].intervalo_utilizacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].maximo_utilizado); 
    end; 
end; 

procedure TFrm_ViewERPsecao.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.comissao := Edit_comissao.text;
      FController.Model.valor := Edit_valor.text;
      FController.Model.click := Edit_click.text;
      FController.Model.unidade := Edit_unidade.text;
      FController.Model.issqn := Edit_issqn.text;
      FController.Model.iat := Edit_iat.text;
      FController.Model.ippt := Edit_ippt.text;
      FController.Model.fabricante := Edit_fabricante.text;
      FController.Model.preco_custo := Edit_preco_custo.text;
      FController.Model.cst_pis := Edit_cst_pis.text;
      FController.Model.cst_cofins := Edit_cst_cofins.text;
      FController.Model.nat_bc_cred := Edit_nat_bc_cred.text;
      FController.Model.comissao_valor := Edit_comissao_valor.text;
      FController.Model.intervalo_utilizacao := Edit_intervalo_utilizacao.text;
      FController.Model.maximo_utilizado := Edit_maximo_utilizado.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPsecao.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPsecao.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPsecao.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPsecao.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPsecao.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPsecao.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPsecao.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 18;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := comissao;  
     Grid.Cells[inttostr(i),0] := valor;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := unidade;  
     Grid.Cells[inttostr(i),0] := issqn;  
     Grid.Cells[inttostr(i),0] := iat;  
     Grid.Cells[inttostr(i),0] := ippt;  
     Grid.Cells[inttostr(i),0] := fabricante;  
     Grid.Cells[inttostr(i),0] := preco_custo;  
     Grid.Cells[inttostr(i),0] := cst_pis;  
     Grid.Cells[inttostr(i),0] := cst_cofins;  
     Grid.Cells[inttostr(i),0] := nat_bc_cred;  
     Grid.Cells[inttostr(i),0] := comissao_valor;  
     Grid.Cells[inttostr(i),0] := intervalo_utilizacao;  
     Grid.Cells[inttostr(i),0] := maximo_utilizado;  
end;

procedure TFrm_ViewERPsecao.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPsecao.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPsecao.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.nome := Grid.Cells[2,Grid.row];
    FController.Model.comissao := Grid.Cells[3,Grid.row];
    FController.Model.valor := Grid.Cells[4,Grid.row];
    FController.Model.click := Grid.Cells[5,Grid.row];
    FController.Model.unidade := Grid.Cells[6,Grid.row];
    FController.Model.issqn := Grid.Cells[7,Grid.row];
    FController.Model.iat := Grid.Cells[8,Grid.row];
    FController.Model.ippt := Grid.Cells[9,Grid.row];
    FController.Model.fabricante := Grid.Cells[10,Grid.row];
    FController.Model.preco_custo := Grid.Cells[11,Grid.row];
    FController.Model.cst_pis := Grid.Cells[12,Grid.row];
    FController.Model.cst_cofins := Grid.Cells[13,Grid.row];
    FController.Model.nat_bc_cred := Grid.Cells[14,Grid.row];
    FController.Model.comissao_valor := Grid.Cells[15,Grid.row];
    FController.Model.intervalo_utilizacao := Grid.Cells[16,Grid.row];
    FController.Model.maximo_utilizado := Grid.Cells[17,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPsecao.LimparTela;  
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

procedure TFrm_ViewERPsecao.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsecao.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsecao.Setnome(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsecao.Setcomissao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsecao.Setvalor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsecao.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsecao.Setunidade(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsecao.Setissqn(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsecao.Setiat(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsecao.Setippt(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsecao.Setfabricante(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsecao.Setpreco_custo(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsecao.Setcst_pis(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsecao.Setcst_cofins(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsecao.Setnat_bc_cred(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsecao.Setcomissao_valor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsecao.Setintervalo_utilizacao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPsecao.Setmaximo_utilizado(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
