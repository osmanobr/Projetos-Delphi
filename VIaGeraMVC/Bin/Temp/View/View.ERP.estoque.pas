
unit View.ERP.estimativa_obra_item;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.estimativa_obra_item, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPestimativaobraitem = class(TForm) 
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
    FController : TControllerERPestimativaobraitem; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata : TDateTime;
    Festoque : WideString;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Foperacao : WideString;
    Fid_operacao : Integer;
    Fquantidade : Double;
    Fnota : WideString;
    Ftipo : WideString;
    Fquantidade_atual : Double;
    Festoque_atual : Double;
    Fquantidade_empresa_terceiro : Double;
    Fquantidade_terceiro_empresa : Double;
    Fqtd_caixa : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setdata(const Value : TDateTime);
    procedure Setestoque(const Value : WideString);
    procedure Setid_produto(const Value : Integer);
    procedure Setnome_produto(const Value : WideString);
    procedure Setoperacao(const Value : WideString);
    procedure Setid_operacao(const Value : Integer);
    procedure Setquantidade(const Value : Double);
    procedure Setnota(const Value : WideString);
    procedure Settipo(const Value : WideString);
    procedure Setquantidade_atual(const Value : Double);
    procedure Setestoque_atual(const Value : Double);
    procedure Setquantidade_empresa_terceiro(const Value : Double);
    procedure Setquantidade_terceiro_empresa(const Value : Double);
    procedure Setqtd_caixa(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property data : TDateTime         read Fdata    write Fdata;
    property estoque : WideString         read Festoque    write Festoque;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property nome_produto : WideString         read Fnome_produto    write Fnome_produto;
    property operacao : WideString         read Foperacao    write Foperacao;
    property id_operacao : Integer         read Fid_operacao    write Fid_operacao;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property nota : WideString         read Fnota    write Fnota;
    property tipo : WideString         read Ftipo    write Ftipo;
    property quantidade_atual : Double         read Fquantidade_atual    write Fquantidade_atual;
    property estoque_atual : Double         read Festoque_atual    write Festoque_atual;
    property quantidade_empresa_terceiro : Double         read Fquantidade_empresa_terceiro    write Fquantidade_empresa_terceiro;
    property quantidade_terceiro_empresa : Double         read Fquantidade_terceiro_empresa    write Fquantidade_terceiro_empresa;
    property qtd_caixa : Double         read Fqtd_caixa    write Fqtd_caixa;

  end;

var
  Frm_ViewERPestimativaobraitem : TFrm_ViewERPestimativaobraitem; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estoque); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].operacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_operacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nota); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade_atual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estoque_atual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade_empresa_terceiro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade_terceiro_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].qtd_caixa); 
    end; 
end; 

procedure TFrm_ViewERPestimativaobraitem.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.data := Edit_data.text;
      FController.Model.estoque := Edit_estoque.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.nome_produto := Edit_nome_produto.text;
      FController.Model.operacao := Edit_operacao.text;
      FController.Model.id_operacao := Edit_id_operacao.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.nota := Edit_nota.text;
      FController.Model.tipo := Edit_tipo.text;
      FController.Model.quantidade_atual := Edit_quantidade_atual.text;
      FController.Model.estoque_atual := Edit_estoque_atual.text;
      FController.Model.quantidade_empresa_terceiro := Edit_quantidade_empresa_terceiro.text;
      FController.Model.quantidade_terceiro_empresa := Edit_quantidade_terceiro_empresa.text;
      FController.Model.qtd_caixa := Edit_qtd_caixa.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPestimativaobraitem.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPestimativaobraitem.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPestimativaobraitem.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPestimativaobraitem.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPestimativaobraitem.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPestimativaobraitem.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPestimativaobraitem.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 16;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := estoque;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := nome_produto;  
     Grid.Cells[inttostr(i),0] := operacao;  
     Grid.Cells[inttostr(i),0] := id_operacao;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := nota;  
     Grid.Cells[inttostr(i),0] := tipo;  
     Grid.Cells[inttostr(i),0] := quantidade_atual;  
     Grid.Cells[inttostr(i),0] := estoque_atual;  
     Grid.Cells[inttostr(i),0] := quantidade_empresa_terceiro;  
     Grid.Cells[inttostr(i),0] := quantidade_terceiro_empresa;  
     Grid.Cells[inttostr(i),0] := qtd_caixa;  
end;

procedure TFrm_ViewERPestimativaobraitem.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPestimativaobraitem.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPestimativaobraitem.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.data := Grid.Cells[2,Grid.row];
    FController.Model.estoque := Grid.Cells[3,Grid.row];
    FController.Model.id_produto := Grid.Cells[4,Grid.row];
    FController.Model.nome_produto := Grid.Cells[5,Grid.row];
    FController.Model.operacao := Grid.Cells[6,Grid.row];
    FController.Model.id_operacao := Grid.Cells[7,Grid.row];
    FController.Model.quantidade := Grid.Cells[8,Grid.row];
    FController.Model.nota := Grid.Cells[9,Grid.row];
    FController.Model.tipo := Grid.Cells[10,Grid.row];
    FController.Model.quantidade_atual := Grid.Cells[11,Grid.row];
    FController.Model.estoque_atual := Grid.Cells[12,Grid.row];
    FController.Model.quantidade_empresa_terceiro := Grid.Cells[13,Grid.row];
    FController.Model.quantidade_terceiro_empresa := Grid.Cells[14,Grid.row];
    FController.Model.qtd_caixa := Grid.Cells[15,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPestimativaobraitem.LimparTela;  
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

procedure TFrm_ViewERPestimativaobraitem.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestimativaobraitem.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestimativaobraitem.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestimativaobraitem.Setestoque(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestimativaobraitem.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestimativaobraitem.Setnome_produto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestimativaobraitem.Setoperacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestimativaobraitem.Setid_operacao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestimativaobraitem.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestimativaobraitem.Setnota(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestimativaobraitem.Settipo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestimativaobraitem.Setquantidade_atual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestimativaobraitem.Setestoque_atual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestimativaobraitem.Setquantidade_empresa_terceiro(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestimativaobraitem.Setquantidade_terceiro_empresa(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestimativaobraitem.Setqtd_caixa(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
