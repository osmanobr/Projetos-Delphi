
unit View.ERP.estoque_terceiro;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.estoque_terceiro, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPestoqueterceiro = class(TForm) 
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
    FController : TControllerERPestoqueterceiro; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata : TDateTime;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Foperacao : WideString;
    Fid_vendedor : Integer;
    Fid_pedido : Integer;
    Fid_palm : Integer;
    Fid_devolucao : Integer;
    Fqtd_carga : Double;
    Fqtd_venda : Double;
    Fqtd_devolucao : Double;
    Fid_usuario : Integer;
    Fobservacao : WideString;
    Fclick : Boolean;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setdata(const Value : TDateTime);
    procedure Setid_produto(const Value : Integer);
    procedure Setnome_produto(const Value : WideString);
    procedure Setoperacao(const Value : WideString);
    procedure Setid_vendedor(const Value : Integer);
    procedure Setid_pedido(const Value : Integer);
    procedure Setid_palm(const Value : Integer);
    procedure Setid_devolucao(const Value : Integer);
    procedure Setqtd_carga(const Value : Double);
    procedure Setqtd_venda(const Value : Double);
    procedure Setqtd_devolucao(const Value : Double);
    procedure Setid_usuario(const Value : Integer);
    procedure Setobservacao(const Value : WideString);
    procedure Setclick(const Value : Boolean);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property data : TDateTime         read Fdata    write Fdata;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property nome_produto : WideString         read Fnome_produto    write Fnome_produto;
    property operacao : WideString         read Foperacao    write Foperacao;
    property id_vendedor : Integer         read Fid_vendedor    write Fid_vendedor;
    property id_pedido : Integer         read Fid_pedido    write Fid_pedido;
    property id_palm : Integer         read Fid_palm    write Fid_palm;
    property id_devolucao : Integer         read Fid_devolucao    write Fid_devolucao;
    property qtd_carga : Double         read Fqtd_carga    write Fqtd_carga;
    property qtd_venda : Double         read Fqtd_venda    write Fqtd_venda;
    property qtd_devolucao : Double         read Fqtd_devolucao    write Fqtd_devolucao;
    property id_usuario : Integer         read Fid_usuario    write Fid_usuario;
    property observacao : WideString         read Fobservacao    write Fobservacao;
    property click : Boolean         read Fclick    write Fclick;

  end;

var
  Frm_ViewERPestoqueterceiro : TFrm_ViewERPestoqueterceiro; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 16; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].operacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_vendedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_pedido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_palm); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_devolucao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].qtd_carga); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].qtd_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].qtd_devolucao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_usuario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].observacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
    end; 
end; 

procedure TFrm_ViewERPestoqueterceiro.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.data := Edit_data.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.nome_produto := Edit_nome_produto.text;
      FController.Model.operacao := Edit_operacao.text;
      FController.Model.id_vendedor := Edit_id_vendedor.text;
      FController.Model.id_pedido := Edit_id_pedido.text;
      FController.Model.id_palm := Edit_id_palm.text;
      FController.Model.id_devolucao := Edit_id_devolucao.text;
      FController.Model.qtd_carga := Edit_qtd_carga.text;
      FController.Model.qtd_venda := Edit_qtd_venda.text;
      FController.Model.qtd_devolucao := Edit_qtd_devolucao.text;
      FController.Model.id_usuario := Edit_id_usuario.text;
      FController.Model.observacao := Edit_observacao.text;
      FController.Model.click := Edit_click.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPestoqueterceiro.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPestoqueterceiro.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPestoqueterceiro.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPestoqueterceiro.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPestoqueterceiro.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPestoqueterceiro.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPestoqueterceiro.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 16;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := nome_produto;  
     Grid.Cells[inttostr(i),0] := operacao;  
     Grid.Cells[inttostr(i),0] := id_vendedor;  
     Grid.Cells[inttostr(i),0] := id_pedido;  
     Grid.Cells[inttostr(i),0] := id_palm;  
     Grid.Cells[inttostr(i),0] := id_devolucao;  
     Grid.Cells[inttostr(i),0] := qtd_carga;  
     Grid.Cells[inttostr(i),0] := qtd_venda;  
     Grid.Cells[inttostr(i),0] := qtd_devolucao;  
     Grid.Cells[inttostr(i),0] := id_usuario;  
     Grid.Cells[inttostr(i),0] := observacao;  
     Grid.Cells[inttostr(i),0] := click;  
end;

procedure TFrm_ViewERPestoqueterceiro.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPestoqueterceiro.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPestoqueterceiro.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.data := Grid.Cells[2,Grid.row];
    FController.Model.id_produto := Grid.Cells[3,Grid.row];
    FController.Model.nome_produto := Grid.Cells[4,Grid.row];
    FController.Model.operacao := Grid.Cells[5,Grid.row];
    FController.Model.id_vendedor := Grid.Cells[6,Grid.row];
    FController.Model.id_pedido := Grid.Cells[7,Grid.row];
    FController.Model.id_palm := Grid.Cells[8,Grid.row];
    FController.Model.id_devolucao := Grid.Cells[9,Grid.row];
    FController.Model.qtd_carga := Grid.Cells[10,Grid.row];
    FController.Model.qtd_venda := Grid.Cells[11,Grid.row];
    FController.Model.qtd_devolucao := Grid.Cells[12,Grid.row];
    FController.Model.id_usuario := Grid.Cells[13,Grid.row];
    FController.Model.observacao := Grid.Cells[14,Grid.row];
    FController.Model.click := Grid.Cells[15,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPestoqueterceiro.LimparTela;  
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

procedure TFrm_ViewERPestoqueterceiro.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoqueterceiro.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoqueterceiro.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoqueterceiro.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoqueterceiro.Setnome_produto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoqueterceiro.Setoperacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoqueterceiro.Setid_vendedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoqueterceiro.Setid_pedido(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoqueterceiro.Setid_palm(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoqueterceiro.Setid_devolucao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoqueterceiro.Setqtd_carga(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoqueterceiro.Setqtd_venda(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoqueterceiro.Setqtd_devolucao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoqueterceiro.Setid_usuario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoqueterceiro.Setobservacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoqueterceiro.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
