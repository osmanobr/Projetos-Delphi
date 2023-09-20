
unit View.ERP.comissao_faixa;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.comissao_faixa, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPcomissaofaixa = class(TForm) 
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
    FController : TControllerERPcomissaofaixa; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_os : Integer;
    Fdocumento : WideString;
    Fdata : TDateTime;
    Fid_vendedor : Integer;
    Fid_cliente : Integer;
    Fnome_cliente : WideString;
    Fid_forma : Integer;
    Fid_caixa : Integer;
    Fpercentual_desconto : Double;
    Fvl_servico : Double;
    Fvl_produto : Double;
    Fvl_total : Double;
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
    procedure Setid_os(const Value : Integer);
    procedure Setdocumento(const Value : WideString);
    procedure Setdata(const Value : TDateTime);
    procedure Setid_vendedor(const Value : Integer);
    procedure Setid_cliente(const Value : Integer);
    procedure Setnome_cliente(const Value : WideString);
    procedure Setid_forma(const Value : Integer);
    procedure Setid_caixa(const Value : Integer);
    procedure Setpercentual_desconto(const Value : Double);
    procedure Setvl_servico(const Value : Double);
    procedure Setvl_produto(const Value : Double);
    procedure Setvl_total(const Value : Double);
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
    property id_os : Integer         read Fid_os    write Fid_os;
    property documento : WideString         read Fdocumento    write Fdocumento;
    property data : TDateTime         read Fdata    write Fdata;
    property id_vendedor : Integer         read Fid_vendedor    write Fid_vendedor;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property nome_cliente : WideString         read Fnome_cliente    write Fnome_cliente;
    property id_forma : Integer         read Fid_forma    write Fid_forma;
    property id_caixa : Integer         read Fid_caixa    write Fid_caixa;
    property percentual_desconto : Double         read Fpercentual_desconto    write Fpercentual_desconto;
    property vl_servico : Double         read Fvl_servico    write Fvl_servico;
    property vl_produto : Double         read Fvl_produto    write Fvl_produto;
    property vl_total : Double         read Fvl_total    write Fvl_total;
    property vl_comissao : Double         read Fvl_comissao    write Fvl_comissao;
    property cancelada : WideString         read Fcancelada    write Fcancelada;
    property avistaaprazo : WideString         read Favistaaprazo    write Favistaaprazo;
    property operacao : WideString         read Foperacao    write Foperacao;
    property comissao : WideString         read Fcomissao    write Fcomissao;
    property pago : WideString         read Fpago    write Fpago;
    property click : Boolean         read Fclick    write Fclick;

  end;

var
  Frm_ViewERPcomissaofaixa : TFrm_ViewERPcomissaofaixa; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 21; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_os); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].documento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_vendedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].percentual_desconto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_servico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_comissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cancelada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].avistaaprazo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].operacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pago); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
    end; 
end; 

procedure TFrm_ViewERPcomissaofaixa.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_os := Edit_id_os.text;
      FController.Model.documento := Edit_documento.text;
      FController.Model.data := Edit_data.text;
      FController.Model.id_vendedor := Edit_id_vendedor.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.nome_cliente := Edit_nome_cliente.text;
      FController.Model.id_forma := Edit_id_forma.text;
      FController.Model.id_caixa := Edit_id_caixa.text;
      FController.Model.percentual_desconto := Edit_percentual_desconto.text;
      FController.Model.vl_servico := Edit_vl_servico.text;
      FController.Model.vl_produto := Edit_vl_produto.text;
      FController.Model.vl_total := Edit_vl_total.text;
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

procedure TFrm_ViewERPcomissaofaixa.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPcomissaofaixa.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPcomissaofaixa.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPcomissaofaixa.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPcomissaofaixa.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPcomissaofaixa.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPcomissaofaixa.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 21;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_os;  
     Grid.Cells[inttostr(i),0] := documento;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := id_vendedor;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := nome_cliente;  
     Grid.Cells[inttostr(i),0] := id_forma;  
     Grid.Cells[inttostr(i),0] := id_caixa;  
     Grid.Cells[inttostr(i),0] := percentual_desconto;  
     Grid.Cells[inttostr(i),0] := vl_servico;  
     Grid.Cells[inttostr(i),0] := vl_produto;  
     Grid.Cells[inttostr(i),0] := vl_total;  
     Grid.Cells[inttostr(i),0] := vl_comissao;  
     Grid.Cells[inttostr(i),0] := cancelada;  
     Grid.Cells[inttostr(i),0] := avistaaprazo;  
     Grid.Cells[inttostr(i),0] := operacao;  
     Grid.Cells[inttostr(i),0] := comissao;  
     Grid.Cells[inttostr(i),0] := pago;  
     Grid.Cells[inttostr(i),0] := click;  
end;

procedure TFrm_ViewERPcomissaofaixa.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPcomissaofaixa.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPcomissaofaixa.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.id_os := Grid.Cells[2,Grid.row];
    FController.Model.documento := Grid.Cells[3,Grid.row];
    FController.Model.data := Grid.Cells[4,Grid.row];
    FController.Model.id_vendedor := Grid.Cells[5,Grid.row];
    FController.Model.id_cliente := Grid.Cells[6,Grid.row];
    FController.Model.nome_cliente := Grid.Cells[7,Grid.row];
    FController.Model.id_forma := Grid.Cells[8,Grid.row];
    FController.Model.id_caixa := Grid.Cells[9,Grid.row];
    FController.Model.percentual_desconto := Grid.Cells[10,Grid.row];
    FController.Model.vl_servico := Grid.Cells[11,Grid.row];
    FController.Model.vl_produto := Grid.Cells[12,Grid.row];
    FController.Model.vl_total := Grid.Cells[13,Grid.row];
    FController.Model.vl_comissao := Grid.Cells[14,Grid.row];
    FController.Model.cancelada := Grid.Cells[15,Grid.row];
    FController.Model.avistaaprazo := Grid.Cells[16,Grid.row];
    FController.Model.operacao := Grid.Cells[17,Grid.row];
    FController.Model.comissao := Grid.Cells[18,Grid.row];
    FController.Model.pago := Grid.Cells[19,Grid.row];
    FController.Model.click := Grid.Cells[20,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPcomissaofaixa.LimparTela;  
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

procedure TFrm_ViewERPcomissaofaixa.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaofaixa.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaofaixa.Setid_os(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaofaixa.Setdocumento(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaofaixa.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaofaixa.Setid_vendedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaofaixa.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaofaixa.Setnome_cliente(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaofaixa.Setid_forma(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaofaixa.Setid_caixa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaofaixa.Setpercentual_desconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaofaixa.Setvl_servico(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaofaixa.Setvl_produto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaofaixa.Setvl_total(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaofaixa.Setvl_comissao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaofaixa.Setcancelada(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaofaixa.Setavistaaprazo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaofaixa.Setoperacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaofaixa.Setcomissao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaofaixa.Setpago(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaofaixa.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
