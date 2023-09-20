
unit View.ERP.pedido_alm_item;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.pedido_alm_item, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPpedidoalmitem = class(TForm) 
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
    FController : TControllerERPpedidoalmitem; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_cliente : Integer;
    Fid_motorista : Integer;
    Fid_veiculo : Integer;
    Fid_usuario : Integer;
    Fid_venda : Integer;
    Fd_inicio : indefinido;
    Fd_final : indefinido;
    Fd_rotulo : Boolean;
    Fd_lacre : Boolean;
    Fd_tampa : Boolean;
    Fd_total : Integer;
    Fd_qtd_rotulo : Integer;
    Fd_qtd_lacre : Integer;
    Fd_qtd_tampa : Integer;
    Fc_inicio : indefinido;
    Fc_final : indefinido;
    Fc_total : Integer;
    Fc_escovadeira : Boolean;
    Fc_envazamento : Boolean;
    Fc_carregamento : Boolean;
    Fc_qtd_escovadeira : Integer;
    Fc_qtd_envazamento : Integer;
    Fc_qtd_carregamento : Integer;
    Fr_cheiro : Integer;
    Fr_defeito : Integer;
    Fr_furado : Integer;
    Fr_manchado : Integer;
    Fr_vencido : Integer;
    Fr_total : Integer;
    Fobs : indefinido;
    Fid_funcionario_faturista : Integer;
    Fid_funcionario_producao : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_cliente(const Value : Integer);
    procedure Setid_motorista(const Value : Integer);
    procedure Setid_veiculo(const Value : Integer);
    procedure Setid_usuario(const Value : Integer);
    procedure Setid_venda(const Value : Integer);
    procedure Setd_inicio(const Value : indefinido);
    procedure Setd_final(const Value : indefinido);
    procedure Setd_rotulo(const Value : Boolean);
    procedure Setd_lacre(const Value : Boolean);
    procedure Setd_tampa(const Value : Boolean);
    procedure Setd_total(const Value : Integer);
    procedure Setd_qtd_rotulo(const Value : Integer);
    procedure Setd_qtd_lacre(const Value : Integer);
    procedure Setd_qtd_tampa(const Value : Integer);
    procedure Setc_inicio(const Value : indefinido);
    procedure Setc_final(const Value : indefinido);
    procedure Setc_total(const Value : Integer);
    procedure Setc_escovadeira(const Value : Boolean);
    procedure Setc_envazamento(const Value : Boolean);
    procedure Setc_carregamento(const Value : Boolean);
    procedure Setc_qtd_escovadeira(const Value : Integer);
    procedure Setc_qtd_envazamento(const Value : Integer);
    procedure Setc_qtd_carregamento(const Value : Integer);
    procedure Setr_cheiro(const Value : Integer);
    procedure Setr_defeito(const Value : Integer);
    procedure Setr_furado(const Value : Integer);
    procedure Setr_manchado(const Value : Integer);
    procedure Setr_vencido(const Value : Integer);
    procedure Setr_total(const Value : Integer);
    procedure Setobs(const Value : indefinido);
    procedure Setid_funcionario_faturista(const Value : Integer);
    procedure Setid_funcionario_producao(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property id_motorista : Integer         read Fid_motorista    write Fid_motorista;
    property id_veiculo : Integer         read Fid_veiculo    write Fid_veiculo;
    property id_usuario : Integer         read Fid_usuario    write Fid_usuario;
    property id_venda : Integer         read Fid_venda    write Fid_venda;
    property d_inicio : indefinido         read Fd_inicio    write Fd_inicio;
    property d_final : indefinido         read Fd_final    write Fd_final;
    property d_rotulo : Boolean         read Fd_rotulo    write Fd_rotulo;
    property d_lacre : Boolean         read Fd_lacre    write Fd_lacre;
    property d_tampa : Boolean         read Fd_tampa    write Fd_tampa;
    property d_total : Integer         read Fd_total    write Fd_total;
    property d_qtd_rotulo : Integer         read Fd_qtd_rotulo    write Fd_qtd_rotulo;
    property d_qtd_lacre : Integer         read Fd_qtd_lacre    write Fd_qtd_lacre;
    property d_qtd_tampa : Integer         read Fd_qtd_tampa    write Fd_qtd_tampa;
    property c_inicio : indefinido         read Fc_inicio    write Fc_inicio;
    property c_final : indefinido         read Fc_final    write Fc_final;
    property c_total : Integer         read Fc_total    write Fc_total;
    property c_escovadeira : Boolean         read Fc_escovadeira    write Fc_escovadeira;
    property c_envazamento : Boolean         read Fc_envazamento    write Fc_envazamento;
    property c_carregamento : Boolean         read Fc_carregamento    write Fc_carregamento;
    property c_qtd_escovadeira : Integer         read Fc_qtd_escovadeira    write Fc_qtd_escovadeira;
    property c_qtd_envazamento : Integer         read Fc_qtd_envazamento    write Fc_qtd_envazamento;
    property c_qtd_carregamento : Integer         read Fc_qtd_carregamento    write Fc_qtd_carregamento;
    property r_cheiro : Integer         read Fr_cheiro    write Fr_cheiro;
    property r_defeito : Integer         read Fr_defeito    write Fr_defeito;
    property r_furado : Integer         read Fr_furado    write Fr_furado;
    property r_manchado : Integer         read Fr_manchado    write Fr_manchado;
    property r_vencido : Integer         read Fr_vencido    write Fr_vencido;
    property r_total : Integer         read Fr_total    write Fr_total;
    property obs : indefinido         read Fobs    write Fobs;
    property id_funcionario_faturista : Integer         read Fid_funcionario_faturista    write Fid_funcionario_faturista;
    property id_funcionario_producao : Integer         read Fid_funcionario_producao    write Fid_funcionario_producao;

  end;

var
  Frm_ViewERPpedidoalmitem : TFrm_ViewERPpedidoalmitem; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 34; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_motorista); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_veiculo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_usuario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].d_inicio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].d_final); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].d_rotulo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].d_lacre); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].d_tampa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].d_total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].d_qtd_rotulo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].d_qtd_lacre); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].d_qtd_tampa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].c_inicio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].c_final); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].c_total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].c_escovadeira); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].c_envazamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].c_carregamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].c_qtd_escovadeira); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].c_qtd_envazamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].c_qtd_carregamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].r_cheiro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].r_defeito); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].r_furado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].r_manchado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].r_vencido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].r_total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_funcionario_faturista); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_funcionario_producao); 
    end; 
end; 

procedure TFrm_ViewERPpedidoalmitem.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.id_motorista := Edit_id_motorista.text;
      FController.Model.id_veiculo := Edit_id_veiculo.text;
      FController.Model.id_usuario := Edit_id_usuario.text;
      FController.Model.id_venda := Edit_id_venda.text;
      FController.Model.d_inicio := Edit_d_inicio.text;
      FController.Model.d_final := Edit_d_final.text;
      FController.Model.d_rotulo := Edit_d_rotulo.text;
      FController.Model.d_lacre := Edit_d_lacre.text;
      FController.Model.d_tampa := Edit_d_tampa.text;
      FController.Model.d_total := Edit_d_total.text;
      FController.Model.d_qtd_rotulo := Edit_d_qtd_rotulo.text;
      FController.Model.d_qtd_lacre := Edit_d_qtd_lacre.text;
      FController.Model.d_qtd_tampa := Edit_d_qtd_tampa.text;
      FController.Model.c_inicio := Edit_c_inicio.text;
      FController.Model.c_final := Edit_c_final.text;
      FController.Model.c_total := Edit_c_total.text;
      FController.Model.c_escovadeira := Edit_c_escovadeira.text;
      FController.Model.c_envazamento := Edit_c_envazamento.text;
      FController.Model.c_carregamento := Edit_c_carregamento.text;
      FController.Model.c_qtd_escovadeira := Edit_c_qtd_escovadeira.text;
      FController.Model.c_qtd_envazamento := Edit_c_qtd_envazamento.text;
      FController.Model.c_qtd_carregamento := Edit_c_qtd_carregamento.text;
      FController.Model.r_cheiro := Edit_r_cheiro.text;
      FController.Model.r_defeito := Edit_r_defeito.text;
      FController.Model.r_furado := Edit_r_furado.text;
      FController.Model.r_manchado := Edit_r_manchado.text;
      FController.Model.r_vencido := Edit_r_vencido.text;
      FController.Model.r_total := Edit_r_total.text;
      FController.Model.obs := Edit_obs.text;
      FController.Model.id_funcionario_faturista := Edit_id_funcionario_faturista.text;
      FController.Model.id_funcionario_producao := Edit_id_funcionario_producao.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPpedidoalmitem.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPpedidoalmitem.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPpedidoalmitem.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPpedidoalmitem.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPpedidoalmitem.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPpedidoalmitem.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPpedidoalmitem.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 34;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := id_motorista;  
     Grid.Cells[inttostr(i),0] := id_veiculo;  
     Grid.Cells[inttostr(i),0] := id_usuario;  
     Grid.Cells[inttostr(i),0] := id_venda;  
     Grid.Cells[inttostr(i),0] := d_inicio;  
     Grid.Cells[inttostr(i),0] := d_final;  
     Grid.Cells[inttostr(i),0] := d_rotulo;  
     Grid.Cells[inttostr(i),0] := d_lacre;  
     Grid.Cells[inttostr(i),0] := d_tampa;  
     Grid.Cells[inttostr(i),0] := d_total;  
     Grid.Cells[inttostr(i),0] := d_qtd_rotulo;  
     Grid.Cells[inttostr(i),0] := d_qtd_lacre;  
     Grid.Cells[inttostr(i),0] := d_qtd_tampa;  
     Grid.Cells[inttostr(i),0] := c_inicio;  
     Grid.Cells[inttostr(i),0] := c_final;  
     Grid.Cells[inttostr(i),0] := c_total;  
     Grid.Cells[inttostr(i),0] := c_escovadeira;  
     Grid.Cells[inttostr(i),0] := c_envazamento;  
     Grid.Cells[inttostr(i),0] := c_carregamento;  
     Grid.Cells[inttostr(i),0] := c_qtd_escovadeira;  
     Grid.Cells[inttostr(i),0] := c_qtd_envazamento;  
     Grid.Cells[inttostr(i),0] := c_qtd_carregamento;  
     Grid.Cells[inttostr(i),0] := r_cheiro;  
     Grid.Cells[inttostr(i),0] := r_defeito;  
     Grid.Cells[inttostr(i),0] := r_furado;  
     Grid.Cells[inttostr(i),0] := r_manchado;  
     Grid.Cells[inttostr(i),0] := r_vencido;  
     Grid.Cells[inttostr(i),0] := r_total;  
     Grid.Cells[inttostr(i),0] := obs;  
     Grid.Cells[inttostr(i),0] := id_funcionario_faturista;  
     Grid.Cells[inttostr(i),0] := id_funcionario_producao;  
end;

procedure TFrm_ViewERPpedidoalmitem.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPpedidoalmitem.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPpedidoalmitem.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.id_cliente := Grid.Cells[2,Grid.row];
    FController.Model.id_motorista := Grid.Cells[3,Grid.row];
    FController.Model.id_veiculo := Grid.Cells[4,Grid.row];
    FController.Model.id_usuario := Grid.Cells[5,Grid.row];
    FController.Model.id_venda := Grid.Cells[6,Grid.row];
    FController.Model.d_inicio := Grid.Cells[7,Grid.row];
    FController.Model.d_final := Grid.Cells[8,Grid.row];
    FController.Model.d_rotulo := Grid.Cells[9,Grid.row];
    FController.Model.d_lacre := Grid.Cells[10,Grid.row];
    FController.Model.d_tampa := Grid.Cells[11,Grid.row];
    FController.Model.d_total := Grid.Cells[12,Grid.row];
    FController.Model.d_qtd_rotulo := Grid.Cells[13,Grid.row];
    FController.Model.d_qtd_lacre := Grid.Cells[14,Grid.row];
    FController.Model.d_qtd_tampa := Grid.Cells[15,Grid.row];
    FController.Model.c_inicio := Grid.Cells[16,Grid.row];
    FController.Model.c_final := Grid.Cells[17,Grid.row];
    FController.Model.c_total := Grid.Cells[18,Grid.row];
    FController.Model.c_escovadeira := Grid.Cells[19,Grid.row];
    FController.Model.c_envazamento := Grid.Cells[20,Grid.row];
    FController.Model.c_carregamento := Grid.Cells[21,Grid.row];
    FController.Model.c_qtd_escovadeira := Grid.Cells[22,Grid.row];
    FController.Model.c_qtd_envazamento := Grid.Cells[23,Grid.row];
    FController.Model.c_qtd_carregamento := Grid.Cells[24,Grid.row];
    FController.Model.r_cheiro := Grid.Cells[25,Grid.row];
    FController.Model.r_defeito := Grid.Cells[26,Grid.row];
    FController.Model.r_furado := Grid.Cells[27,Grid.row];
    FController.Model.r_manchado := Grid.Cells[28,Grid.row];
    FController.Model.r_vencido := Grid.Cells[29,Grid.row];
    FController.Model.r_total := Grid.Cells[30,Grid.row];
    FController.Model.obs := Grid.Cells[31,Grid.row];
    FController.Model.id_funcionario_faturista := Grid.Cells[32,Grid.row];
    FController.Model.id_funcionario_producao := Grid.Cells[33,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPpedidoalmitem.LimparTela;  
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

procedure TFrm_ViewERPpedidoalmitem.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmitem.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmitem.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmitem.Setid_motorista(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmitem.Setid_veiculo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmitem.Setid_usuario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmitem.Setid_venda(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmitem.Setd_inicio(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmitem.Setd_final(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmitem.Setd_rotulo(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmitem.Setd_lacre(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmitem.Setd_tampa(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmitem.Setd_total(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmitem.Setd_qtd_rotulo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmitem.Setd_qtd_lacre(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmitem.Setd_qtd_tampa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmitem.Setc_inicio(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmitem.Setc_final(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmitem.Setc_total(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmitem.Setc_escovadeira(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmitem.Setc_envazamento(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmitem.Setc_carregamento(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmitem.Setc_qtd_escovadeira(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmitem.Setc_qtd_envazamento(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmitem.Setc_qtd_carregamento(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmitem.Setr_cheiro(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmitem.Setr_defeito(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmitem.Setr_furado(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmitem.Setr_manchado(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmitem.Setr_vencido(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmitem.Setr_total(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmitem.Setobs(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmitem.Setid_funcionario_faturista(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpedidoalmitem.Setid_funcionario_producao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
