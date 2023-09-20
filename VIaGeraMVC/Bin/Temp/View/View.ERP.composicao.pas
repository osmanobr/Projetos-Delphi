
unit View.ERP.comissao_venda_servico;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.comissao_venda_servico, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPcomissaovendaservico = class(TForm) 
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
    FController : TControllerERPcomissaovendaservico; 
    Fid : Integer;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Fid_insumo : Integer;
    Fnome_insumo : WideString;
    Fquantidade : Double;
    Funidade : WideString;
    Fmaodeobra : Double;
    Fmaquinario : Double;
    Foutros : Double;
    Fobs : indefinido;
    Fcomissao : Double;
    Fpreco_custo : Double;
    Fid_conta : WideString;
    Fativo : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_produto(const Value : Integer);
    procedure Setnome_produto(const Value : WideString);
    procedure Setid_insumo(const Value : Integer);
    procedure Setnome_insumo(const Value : WideString);
    procedure Setquantidade(const Value : Double);
    procedure Setunidade(const Value : WideString);
    procedure Setmaodeobra(const Value : Double);
    procedure Setmaquinario(const Value : Double);
    procedure Setoutros(const Value : Double);
    procedure Setobs(const Value : indefinido);
    procedure Setcomissao(const Value : Double);
    procedure Setpreco_custo(const Value : Double);
    procedure Setid_conta(const Value : WideString);
    procedure Setativo(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property nome_produto : WideString         read Fnome_produto    write Fnome_produto;
    property id_insumo : Integer         read Fid_insumo    write Fid_insumo;
    property nome_insumo : WideString         read Fnome_insumo    write Fnome_insumo;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property unidade : WideString         read Funidade    write Funidade;
    property maodeobra : Double         read Fmaodeobra    write Fmaodeobra;
    property maquinario : Double         read Fmaquinario    write Fmaquinario;
    property outros : Double         read Foutros    write Foutros;
    property obs : indefinido         read Fobs    write Fobs;
    property comissao : Double         read Fcomissao    write Fcomissao;
    property preco_custo : Double         read Fpreco_custo    write Fpreco_custo;
    property id_conta : WideString         read Fid_conta    write Fid_conta;
    property ativo : indefinido         read Fativo    write Fativo;

  end;

var
  Frm_ViewERPcomissaovendaservico : TFrm_ViewERPcomissaovendaservico; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 15; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_insumo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_insumo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].maodeobra); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].maquinario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].outros); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_custo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_conta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ativo); 
    end; 
end; 

procedure TFrm_ViewERPcomissaovendaservico.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.nome_produto := Edit_nome_produto.text;
      FController.Model.id_insumo := Edit_id_insumo.text;
      FController.Model.nome_insumo := Edit_nome_insumo.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.unidade := Edit_unidade.text;
      FController.Model.maodeobra := Edit_maodeobra.text;
      FController.Model.maquinario := Edit_maquinario.text;
      FController.Model.outros := Edit_outros.text;
      FController.Model.obs := Edit_obs.text;
      FController.Model.comissao := Edit_comissao.text;
      FController.Model.preco_custo := Edit_preco_custo.text;
      FController.Model.id_conta := Edit_id_conta.text;
      FController.Model.ativo := Edit_ativo.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPcomissaovendaservico.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPcomissaovendaservico.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPcomissaovendaservico.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPcomissaovendaservico.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPcomissaovendaservico.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPcomissaovendaservico.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPcomissaovendaservico.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 15;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := nome_produto;  
     Grid.Cells[inttostr(i),0] := id_insumo;  
     Grid.Cells[inttostr(i),0] := nome_insumo;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := unidade;  
     Grid.Cells[inttostr(i),0] := maodeobra;  
     Grid.Cells[inttostr(i),0] := maquinario;  
     Grid.Cells[inttostr(i),0] := outros;  
     Grid.Cells[inttostr(i),0] := obs;  
     Grid.Cells[inttostr(i),0] := comissao;  
     Grid.Cells[inttostr(i),0] := preco_custo;  
     Grid.Cells[inttostr(i),0] := id_conta;  
     Grid.Cells[inttostr(i),0] := ativo;  
end;

procedure TFrm_ViewERPcomissaovendaservico.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPcomissaovendaservico.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPcomissaovendaservico.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_produto := Grid.Cells[1,Grid.row];
    FController.Model.nome_produto := Grid.Cells[2,Grid.row];
    FController.Model.id_insumo := Grid.Cells[3,Grid.row];
    FController.Model.nome_insumo := Grid.Cells[4,Grid.row];
    FController.Model.quantidade := Grid.Cells[5,Grid.row];
    FController.Model.unidade := Grid.Cells[6,Grid.row];
    FController.Model.maodeobra := Grid.Cells[7,Grid.row];
    FController.Model.maquinario := Grid.Cells[8,Grid.row];
    FController.Model.outros := Grid.Cells[9,Grid.row];
    FController.Model.obs := Grid.Cells[10,Grid.row];
    FController.Model.comissao := Grid.Cells[11,Grid.row];
    FController.Model.preco_custo := Grid.Cells[12,Grid.row];
    FController.Model.id_conta := Grid.Cells[13,Grid.row];
    FController.Model.ativo := Grid.Cells[14,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPcomissaovendaservico.LimparTela;  
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

procedure TFrm_ViewERPcomissaovendaservico.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovendaservico.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovendaservico.Setnome_produto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovendaservico.Setid_insumo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovendaservico.Setnome_insumo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovendaservico.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovendaservico.Setunidade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovendaservico.Setmaodeobra(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovendaservico.Setmaquinario(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovendaservico.Setoutros(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovendaservico.Setobs(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovendaservico.Setcomissao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovendaservico.Setpreco_custo(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovendaservico.Setid_conta(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcomissaovendaservico.Setativo(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
