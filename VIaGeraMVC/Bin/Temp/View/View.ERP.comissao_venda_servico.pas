
unit View.ERP.comissao_venda_produto;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.comissao_venda_produto, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPcomissaovendaproduto = class(TForm) 
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
    FController : TControllerERPcomissaovendaproduto; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_pedido : Integer;
    Fid_os : Integer;
    Fdocumento : WideString;
    Fdata : TDateTime;
    Fid_vendedor : Integer;
    Fid_funcionario : Integer;
    Fid_cliente : Integer;
    Fid_forma : Integer;
    Fid_caixa : Integer;
    Fid_servico : Integer;
    Fnome_servico : WideString;
    Fvl_unitario : Double;
    Fquantidade : Double;
    Fdesconto_servico : Double;
    Ftotal_servico : Double;
    Fvl_comissao : Double;
    Fcancelada : WideString;
    Favistaaprazo : WideString;
    Foperacao : WideString;
    Fcomissao : WideString;
    Fpago : WideString;
    Fclick : Boolean;

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
    procedure Setid_funcionario(const Value : Integer);
    procedure Setid_cliente(const Value : Integer);
    procedure Setid_forma(const Value : Integer);
    procedure Setid_caixa(const Value : Integer);
    procedure Setid_servico(const Value : Integer);
    procedure Setnome_servico(const Value : WideString);
    procedure Setvl_unitario(const Value : Double);
    procedure Setquantidade(const Value : Double);
    procedure Setdesconto_servico(const Value : Double);
    procedure Settotal_servico(const Value : Double);
    procedure Setvl_comissao(const Value : Double);
    procedure Setcancelada(const Value : WideString);
    procedure Setavistaaprazo(const Value : WideString);
    procedure Setoperacao(const Value : WideString);
    procedure Setcomissao(const Value : WideString);
    procedure Setpago(const Value : WideString);
    procedure Setclick(const Value : Boolean);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_pedido : Integer         read Fid_pedido    write Fid_pedido;
    property id_os : Integer         read Fid_os    write Fid_os;
    property documento : WideString         read Fdocumento    write Fdocumento;
    property data : TDateTime         read Fdata    write Fdata;
    property id_vendedor : Integer         read Fid_vendedor    write Fid_vendedor;
    property id_funcionario : Integer         read Fid_funcionario    write Fid_funcionario;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property id_forma : Integer         read Fid_forma    write Fid_forma;
    property id_caixa : Integer         read Fid_caixa    write Fid_caixa;
    property id_servico : Integer         read Fid_servico    write Fid_servico;
    property nome_servico : WideString         read Fnome_servico    write Fnome_servico;
    property vl_unitario : Double         read Fvl_unitario    write Fvl_unitario;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property desconto_servico : Double         read Fdesconto_servico    write Fdesconto_servico;
    property total_servico : Double         read Ftotal_servico    write Ftotal_servico;
    property vl_comissao : Double         read Fvl_comissao    write Fvl_comissao;
    property cancelada : WideString         read Fcancelada    write Fcancelada;
    property avistaaprazo : WideString         read Favistaaprazo    write Favistaaprazo;
    property operacao : WideString         read Foperacao    write Foperacao;
    property comissao : WideString         read Fcomissao    write Fcomissao;
    property pago : WideString         read Fpago    write Fpago;
    property click : Boolean         read Fclick    write Fclick;

  end;

var
  Frm_ViewERPcomissaovendaproduto : TFrm_ViewERPcomissaovendaproduto; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_pedido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_os); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].documento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_vendedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_funcionario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_servico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_servico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_unitario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].desconto_servico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].total_servico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_comissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cancelada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].avistaaprazo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].operacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pago); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
    end; 
end; 

procedure TFrm_ViewERPcomissaovendaproduto.ScreenToModel;  
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
      FController.Model.id_funcionario := Edit_id_funcionario.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.id_forma := Edit_id_forma.text;
      FController.Model.id_caixa := Edit_id_caixa.text;
      FController.Model.id_servico := Edit_id_servico.text;
      FController.Model.nome_servico := Edit_nome_servico.text;
      FController.Model.vl_unitario := Edit_vl_unitario.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.desconto_servico := Edit_desconto_servico.text;
      FController.Model.total_servico := Edit_total_servico.text;
      FController.Model.vl_comissao := Edit_vl_comissao.text;
      FController.Model.cancelada := Edit_cancelada.text;
      FController.Model.avistaaprazo := Edit_avistaaprazo.text;
      FController.Model.operacao := Edit_operacao.text;
      FController.Model.comissao := Edit_comissao.text;
      FController.Model.pago := Edit_pago.text;
      FController.Model.click := Edit_click.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPcomissaovendaproduto.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPcomissaovendaproduto.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPcomissaovendaproduto.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPcomissaovendaproduto.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPcomissaovendaproduto.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPcomissaovendaproduto.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPcomissaovendaproduto.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 24;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_pedido;  
     Grid.Cells[inttostr(i),0] := id_os;  
     Grid.Cells[inttostr(i),0] := documento;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := id_vendedor;  
     Grid.Cells[inttostr(i),0] := id_funcionario;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := id_forma;  
     Grid.Cells[inttostr(i),0] := id_caixa;  
     Grid.Cells[inttostr(i),0] := id_servico;  
     Grid.Cells[inttostr(i),0] := nome_servico;  
     Grid.Cells[inttostr(i),0] := vl_unitario;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := desconto_servico;  
     Grid.Cells[inttostr(i),0] := total_servico;  
     Grid.Cells[inttostr(i),0] := vl_comissao;  
     Grid.Cells[inttostr(i),0] := cancelada;  
     Grid.Cells[inttostr(i),0] := avistaaprazo;  
     Grid.Cells[inttostr(i),0] := operacao;  
     Grid.Cells[inttostr(i),0] := comissao;  
     Grid.Cells[inttostr(i),0] := pago;  
     Grid.Cells[inttostr(i),0] := click;  
end;

procedure TFrm_ViewERPcomissaovendaproduto.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPcomissaovendaproduto.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPcomissaovendaproduto.GridClick(Sender: TObject);   
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
    FController.Model.id_funcionario := Grid.Cells[7,Grid.row];
    FController.Model.id_cliente := Grid.Cells[8,Grid.row];
    FController.Model.id_forma := Grid.Cells[9,Grid.row];
    FController.Model.id_caixa := Grid.Cells[10,Grid.row];
    FController.Model.id_servico := Grid.Cells[11,Grid.row];
    FController.Model.nome_servico := Grid.Cells[12,Grid.row];
    FController.Model.vl_unitario := Grid.Cells[13,Grid.row];
    FController.Model.quantidade := Grid.Cells[14,Grid.row];
    FController.Model.desconto_servico := Grid.Cells[15,Grid.row];
    FController.Model.total_servico := Grid.Cells[16,Grid.row];
    FController.Model.vl_comissao := Grid.Cells[17,Grid.row];
    FController.Model.cancelada := Grid.Cells[18,Grid.row];
    FController.Model.avistaaprazo := Grid.Cells[19,Grid.row];
    FController.Model.operacao := Grid.Cells[20,Grid.row];
    FController.Model.comissao := Grid.Cells[21,Grid.row];
    FController.Model.pago := Grid.Cells[22,Grid.row];
    FController.Model.click := Grid.Cells[23,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPcomissaovendaproduto.LimparTela;  
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

procedure TFrm_ViewERPcomissaovendaproduto.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovendaproduto.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovendaproduto.Setid_pedido(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovendaproduto.Setid_os(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovendaproduto.Setdocumento(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovendaproduto.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovendaproduto.Setid_vendedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovendaproduto.Setid_funcionario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovendaproduto.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovendaproduto.Setid_forma(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovendaproduto.Setid_caixa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovendaproduto.Setid_servico(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovendaproduto.Setnome_servico(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovendaproduto.Setvl_unitario(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovendaproduto.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovendaproduto.Setdesconto_servico(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovendaproduto.Settotal_servico(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovendaproduto.Setvl_comissao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovendaproduto.Setcancelada(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovendaproduto.Setavistaaprazo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovendaproduto.Setoperacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovendaproduto.Setcomissao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovendaproduto.Setpago(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovendaproduto.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
