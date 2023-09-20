
unit View.ERP.posto_caixa;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.posto_caixa, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPpostocaixa = class(TForm) 
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
    FController : TControllerERPpostocaixa; 
    Fid : Integer;
    Fdata : TDateTime;
    Fid_produto : Integer;
    Fnome : indefinido;
    Festoque_abertura : Double;
    Ffechamento_fisico : Double;
    Fnota : WideString;
    Fvolume_recebido : Double;
    Fobs_revendedor : indefinido;
    Fobservacao : indefinido;
    Fpreco_venda : Double;
    Fpreco_compra : Double;
    Fid_compra : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setdata(const Value : TDateTime);
    procedure Setid_produto(const Value : Integer);
    procedure Setnome(const Value : indefinido);
    procedure Setestoque_abertura(const Value : Double);
    procedure Setfechamento_fisico(const Value : Double);
    procedure Setnota(const Value : WideString);
    procedure Setvolume_recebido(const Value : Double);
    procedure Setobs_revendedor(const Value : indefinido);
    procedure Setobservacao(const Value : indefinido);
    procedure Setpreco_venda(const Value : Double);
    procedure Setpreco_compra(const Value : Double);
    procedure Setid_compra(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property data : TDateTime         read Fdata    write Fdata;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property nome : indefinido         read Fnome    write Fnome;
    property estoque_abertura : Double         read Festoque_abertura    write Festoque_abertura;
    property fechamento_fisico : Double         read Ffechamento_fisico    write Ffechamento_fisico;
    property nota : WideString         read Fnota    write Fnota;
    property volume_recebido : Double         read Fvolume_recebido    write Fvolume_recebido;
    property obs_revendedor : indefinido         read Fobs_revendedor    write Fobs_revendedor;
    property observacao : indefinido         read Fobservacao    write Fobservacao;
    property preco_venda : Double         read Fpreco_venda    write Fpreco_venda;
    property preco_compra : Double         read Fpreco_compra    write Fpreco_compra;
    property id_compra : indefinido         read Fid_compra    write Fid_compra;

  end;

var
  Frm_ViewERPpostocaixa : TFrm_ViewERPpostocaixa; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 13; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estoque_abertura); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].fechamento_fisico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nota); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].volume_recebido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs_revendedor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].observacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_compra); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_compra); 
    end; 
end; 

procedure TFrm_ViewERPpostocaixa.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.data := Edit_data.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.estoque_abertura := Edit_estoque_abertura.text;
      FController.Model.fechamento_fisico := Edit_fechamento_fisico.text;
      FController.Model.nota := Edit_nota.text;
      FController.Model.volume_recebido := Edit_volume_recebido.text;
      FController.Model.obs_revendedor := Edit_obs_revendedor.text;
      FController.Model.observacao := Edit_observacao.text;
      FController.Model.preco_venda := Edit_preco_venda.text;
      FController.Model.preco_compra := Edit_preco_compra.text;
      FController.Model.id_compra := Edit_id_compra.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPpostocaixa.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPpostocaixa.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPpostocaixa.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPpostocaixa.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPpostocaixa.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPpostocaixa.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPpostocaixa.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 13;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := estoque_abertura;  
     Grid.Cells[inttostr(i),0] := fechamento_fisico;  
     Grid.Cells[inttostr(i),0] := nota;  
     Grid.Cells[inttostr(i),0] := volume_recebido;  
     Grid.Cells[inttostr(i),0] := obs_revendedor;  
     Grid.Cells[inttostr(i),0] := observacao;  
     Grid.Cells[inttostr(i),0] := preco_venda;  
     Grid.Cells[inttostr(i),0] := preco_compra;  
     Grid.Cells[inttostr(i),0] := id_compra;  
end;

procedure TFrm_ViewERPpostocaixa.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPpostocaixa.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPpostocaixa.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.data := Grid.Cells[1,Grid.row];
    FController.Model.id_produto := Grid.Cells[2,Grid.row];
    FController.Model.nome := Grid.Cells[3,Grid.row];
    FController.Model.estoque_abertura := Grid.Cells[4,Grid.row];
    FController.Model.fechamento_fisico := Grid.Cells[5,Grid.row];
    FController.Model.nota := Grid.Cells[6,Grid.row];
    FController.Model.volume_recebido := Grid.Cells[7,Grid.row];
    FController.Model.obs_revendedor := Grid.Cells[8,Grid.row];
    FController.Model.observacao := Grid.Cells[9,Grid.row];
    FController.Model.preco_venda := Grid.Cells[10,Grid.row];
    FController.Model.preco_compra := Grid.Cells[11,Grid.row];
    FController.Model.id_compra := Grid.Cells[12,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPpostocaixa.LimparTela;  
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

procedure TFrm_ViewERPpostocaixa.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostocaixa.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostocaixa.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostocaixa.Setnome(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostocaixa.Setestoque_abertura(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostocaixa.Setfechamento_fisico(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostocaixa.Setnota(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostocaixa.Setvolume_recebido(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostocaixa.Setobs_revendedor(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostocaixa.Setobservacao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostocaixa.Setpreco_venda(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostocaixa.Setpreco_compra(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPpostocaixa.Setid_compra(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
