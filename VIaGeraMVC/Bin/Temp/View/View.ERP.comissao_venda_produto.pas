
unit View.ERP.comissao_venda;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.comissao_venda, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPcomissaovenda = class(TForm) 
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
    FController : TControllerERPcomissaovenda; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_pedido : Integer;
    Fid_os : Integer;
    Fdocumento : WideString;
    Fdata : TDateTime;
    Fid_vendedor : Integer;
    Fid_cliente : Integer;
    Fid_forma : Integer;
    Fid_caixa : Integer;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Fvl_unitario : Double;
    Fvl_tabela : Double;
    Fquantidade : Double;
    Fdesconto_produto : Double;
    Ftotal_produto : Double;
    Fvl_comissao : Double;
    Fcancelada : WideString;
    Favistaaprazo : WideString;
    Foperacao : WideString;
    Fcomissao : WideString;
    Fpago : WideString;
    Fclick : Boolean;
    Fid_supervisor : Integer;
    Fpreco_promocao : Double;
    Fvl_total_promocao : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_pedido(const Value : Integer);
    procedure Setid_os(const Value : Integer);
    procedure Setdocumento(const Value : WideString);
    procedure Setdata(const Value : TDateTime);
    procedure Setid_vendedor(const Value : Integer);
    procedure Setid_cliente(const Value : Integer);
    procedure Setid_forma(const Value : Integer);
    procedure Setid_caixa(const Value : Integer);
    procedure Setid_produto(const Value : Integer);
    procedure Setnome_produto(const Value : WideString);
    procedure Setvl_unitario(const Value : Double);
    procedure Setvl_tabela(const Value : Double);
    procedure Setquantidade(const Value : Double);
    procedure Setdesconto_produto(const Value : Double);
    procedure Settotal_produto(const Value : Double);
    procedure Setvl_comissao(const Value : Double);
    procedure Setcancelada(const Value : WideString);
    procedure Setavistaaprazo(const Value : WideString);
    procedure Setoperacao(const Value : WideString);
    procedure Setcomissao(const Value : WideString);
    procedure Setpago(const Value : WideString);
    procedure Setclick(const Value : Boolean);
    procedure Setid_supervisor(const Value : Integer);
    procedure Setpreco_promocao(const Value : Double);
    procedure Setvl_total_promocao(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_pedido : Integer         read Fid_pedido    write Fid_pedido;
    property id_os : Integer         read Fid_os    write Fid_os;
    property documento : WideString         read Fdocumento    write Fdocumento;
    property data : TDateTime         read Fdata    write Fdata;
    property id_vendedor : Integer         read Fid_vendedor    write Fid_vendedor;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property id_forma : Integer         read Fid_forma    write Fid_forma;
    property id_caixa : Integer         read Fid_caixa    write Fid_caixa;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property nome_produto : WideString         read Fnome_produto    write Fnome_produto;
    property vl_unitario : Double         read Fvl_unitario    write Fvl_unitario;
    property vl_tabela : Double         read Fvl_tabela    write Fvl_tabela;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property desconto_produto : Double         read Fdesconto_produto    write Fdesconto_produto;
    property total_produto : Double         read Ftotal_produto    write Ftotal_produto;
    property vl_comissao : Double         read Fvl_comissao    write Fvl_comissao;
    property cancelada : WideString         read Fcancelada    write Fcancelada;
    property avistaaprazo : WideString         read Favistaaprazo    write Favistaaprazo;
    property operacao : WideString         read Foperacao    write Foperacao;
    property comissao : WideString         read Fcomissao    write Fcomissao;
    property pago : WideString         read Fpago    write Fpago;
    property click : Boolean         read Fclick    write Fclick;
    property id_supervisor : Integer         read Fid_supervisor    write Fid_supervisor;
    property preco_promocao : Double         read Fpreco_promocao    write Fpreco_promocao;
    property vl_total_promocao : Double         read Fvl_total_promocao    write Fvl_total_promocao;

  end;

var
  Frm_ViewERPcomissaovenda : TFrm_ViewERPcomissaovenda; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_pedido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_os); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].documento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_vendedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_unitario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_tabela); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].desconto_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].total_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_comissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cancelada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].avistaaprazo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].operacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pago); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_supervisor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_promocao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_total_promocao); 
    end; 
end; 

procedure TFrm_ViewERPcomissaovenda.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_pedido := Edit_id_pedido.text;
      FController.Model.id_os := Edit_id_os.text;
      FController.Model.documento := Edit_documento.text;
      FController.Model.data := Edit_data.text;
      FController.Model.id_vendedor := Edit_id_vendedor.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.id_forma := Edit_id_forma.text;
      FController.Model.id_caixa := Edit_id_caixa.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.nome_produto := Edit_nome_produto.text;
      FController.Model.vl_unitario := Edit_vl_unitario.text;
      FController.Model.vl_tabela := Edit_vl_tabela.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.desconto_produto := Edit_desconto_produto.text;
      FController.Model.total_produto := Edit_total_produto.text;
      FController.Model.vl_comissao := Edit_vl_comissao.text;
      FController.Model.cancelada := Edit_cancelada.text;
      FController.Model.avistaaprazo := Edit_avistaaprazo.text;
      FController.Model.operacao := Edit_operacao.text;
      FController.Model.comissao := Edit_comissao.text;
      FController.Model.pago := Edit_pago.text;
      FController.Model.click := Edit_click.text;
      FController.Model.id_supervisor := Edit_id_supervisor.text;
      FController.Model.preco_promocao := Edit_preco_promocao.text;
      FController.Model.vl_total_promocao := Edit_vl_total_promocao.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPcomissaovenda.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPcomissaovenda.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPcomissaovenda.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPcomissaovenda.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPcomissaovenda.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPcomissaovenda.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPcomissaovenda.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 27;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_pedido;  
     Grid.Cells[inttostr(i),0] := id_os;  
     Grid.Cells[inttostr(i),0] := documento;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := id_vendedor;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := id_forma;  
     Grid.Cells[inttostr(i),0] := id_caixa;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := nome_produto;  
     Grid.Cells[inttostr(i),0] := vl_unitario;  
     Grid.Cells[inttostr(i),0] := vl_tabela;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := desconto_produto;  
     Grid.Cells[inttostr(i),0] := total_produto;  
     Grid.Cells[inttostr(i),0] := vl_comissao;  
     Grid.Cells[inttostr(i),0] := cancelada;  
     Grid.Cells[inttostr(i),0] := avistaaprazo;  
     Grid.Cells[inttostr(i),0] := operacao;  
     Grid.Cells[inttostr(i),0] := comissao;  
     Grid.Cells[inttostr(i),0] := pago;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := id_supervisor;  
     Grid.Cells[inttostr(i),0] := preco_promocao;  
     Grid.Cells[inttostr(i),0] := vl_total_promocao;  
end;

procedure TFrm_ViewERPcomissaovenda.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPcomissaovenda.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPcomissaovenda.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.id_pedido := Grid.Cells[2,Grid.row];
    FController.Model.id_os := Grid.Cells[3,Grid.row];
    FController.Model.documento := Grid.Cells[4,Grid.row];
    FController.Model.data := Grid.Cells[5,Grid.row];
    FController.Model.id_vendedor := Grid.Cells[6,Grid.row];
    FController.Model.id_cliente := Grid.Cells[7,Grid.row];
    FController.Model.id_forma := Grid.Cells[8,Grid.row];
    FController.Model.id_caixa := Grid.Cells[9,Grid.row];
    FController.Model.id_produto := Grid.Cells[10,Grid.row];
    FController.Model.nome_produto := Grid.Cells[11,Grid.row];
    FController.Model.vl_unitario := Grid.Cells[12,Grid.row];
    FController.Model.vl_tabela := Grid.Cells[13,Grid.row];
    FController.Model.quantidade := Grid.Cells[14,Grid.row];
    FController.Model.desconto_produto := Grid.Cells[15,Grid.row];
    FController.Model.total_produto := Grid.Cells[16,Grid.row];
    FController.Model.vl_comissao := Grid.Cells[17,Grid.row];
    FController.Model.cancelada := Grid.Cells[18,Grid.row];
    FController.Model.avistaaprazo := Grid.Cells[19,Grid.row];
    FController.Model.operacao := Grid.Cells[20,Grid.row];
    FController.Model.comissao := Grid.Cells[21,Grid.row];
    FController.Model.pago := Grid.Cells[22,Grid.row];
    FController.Model.click := Grid.Cells[23,Grid.row];
    FController.Model.id_supervisor := Grid.Cells[24,Grid.row];
    FController.Model.preco_promocao := Grid.Cells[25,Grid.row];
    FController.Model.vl_total_promocao := Grid.Cells[26,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPcomissaovenda.LimparTela;  
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

procedure TFrm_ViewERPcomissaovenda.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovenda.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovenda.Setid_pedido(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovenda.Setid_os(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovenda.Setdocumento(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovenda.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovenda.Setid_vendedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovenda.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovenda.Setid_forma(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovenda.Setid_caixa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovenda.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovenda.Setnome_produto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovenda.Setvl_unitario(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovenda.Setvl_tabela(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovenda.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovenda.Setdesconto_produto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovenda.Settotal_produto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovenda.Setvl_comissao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovenda.Setcancelada(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovenda.Setavistaaprazo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovenda.Setoperacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovenda.Setcomissao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovenda.Setpago(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovenda.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovenda.Setid_supervisor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovenda.Setpreco_promocao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovenda.Setvl_total_promocao(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
