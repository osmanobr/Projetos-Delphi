
unit View.ERP.estoque_insumo;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.estoque_insumo, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPestoqueinsumo = class(TForm) 
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
    FController : TControllerERPestoqueinsumo; 
    Fid : Integer;
    Fid_cliente : Integer;
    Fid_produto : Integer;
    Fquantidade_empresa_terceiro : Double;
    Fquantidade_terceiro_empresa : Double;
    Festoque : WideString;
    Fchave_nfe : WideString;
    Fdatahora : indefinido;
    Ftipo : WideString;
    Foperacao : WideString;
    Fid_operacao : Integer;
    Fid_fornecedor : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_cliente(const Value : Integer);
    procedure Setid_produto(const Value : Integer);
    procedure Setquantidade_empresa_terceiro(const Value : Double);
    procedure Setquantidade_terceiro_empresa(const Value : Double);
    procedure Setestoque(const Value : WideString);
    procedure Setchave_nfe(const Value : WideString);
    procedure Setdatahora(const Value : indefinido);
    procedure Settipo(const Value : WideString);
    procedure Setoperacao(const Value : WideString);
    procedure Setid_operacao(const Value : Integer);
    procedure Setid_fornecedor(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property quantidade_empresa_terceiro : Double         read Fquantidade_empresa_terceiro    write Fquantidade_empresa_terceiro;
    property quantidade_terceiro_empresa : Double         read Fquantidade_terceiro_empresa    write Fquantidade_terceiro_empresa;
    property estoque : WideString         read Festoque    write Festoque;
    property chave_nfe : WideString         read Fchave_nfe    write Fchave_nfe;
    property datahora : indefinido         read Fdatahora    write Fdatahora;
    property tipo : WideString         read Ftipo    write Ftipo;
    property operacao : WideString         read Foperacao    write Foperacao;
    property id_operacao : Integer         read Fid_operacao    write Fid_operacao;
    property id_fornecedor : Integer         read Fid_fornecedor    write Fid_fornecedor;

  end;

var
  Frm_ViewERPestoqueinsumo : TFrm_ViewERPestoqueinsumo; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 12; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade_empresa_terceiro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade_terceiro_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estoque); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].chave_nfe); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].datahora); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].operacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_operacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_fornecedor); 
    end; 
end; 

procedure TFrm_ViewERPestoqueinsumo.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.quantidade_empresa_terceiro := Edit_quantidade_empresa_terceiro.text;
      FController.Model.quantidade_terceiro_empresa := Edit_quantidade_terceiro_empresa.text;
      FController.Model.estoque := Edit_estoque.text;
      FController.Model.chave_nfe := Edit_chave_nfe.text;
      FController.Model.datahora := Edit_datahora.text;
      FController.Model.tipo := Edit_tipo.text;
      FController.Model.operacao := Edit_operacao.text;
      FController.Model.id_operacao := Edit_id_operacao.text;
      FController.Model.id_fornecedor := Edit_id_fornecedor.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPestoqueinsumo.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPestoqueinsumo.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPestoqueinsumo.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPestoqueinsumo.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPestoqueinsumo.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPestoqueinsumo.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPestoqueinsumo.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 12;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := quantidade_empresa_terceiro;  
     Grid.Cells[inttostr(i),0] := quantidade_terceiro_empresa;  
     Grid.Cells[inttostr(i),0] := estoque;  
     Grid.Cells[inttostr(i),0] := chave_nfe;  
     Grid.Cells[inttostr(i),0] := datahora;  
     Grid.Cells[inttostr(i),0] := tipo;  
     Grid.Cells[inttostr(i),0] := operacao;  
     Grid.Cells[inttostr(i),0] := id_operacao;  
     Grid.Cells[inttostr(i),0] := id_fornecedor;  
end;

procedure TFrm_ViewERPestoqueinsumo.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPestoqueinsumo.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPestoqueinsumo.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_cliente := Grid.Cells[1,Grid.row];
    FController.Model.id_produto := Grid.Cells[2,Grid.row];
    FController.Model.quantidade_empresa_terceiro := Grid.Cells[3,Grid.row];
    FController.Model.quantidade_terceiro_empresa := Grid.Cells[4,Grid.row];
    FController.Model.estoque := Grid.Cells[5,Grid.row];
    FController.Model.chave_nfe := Grid.Cells[6,Grid.row];
    FController.Model.datahora := Grid.Cells[7,Grid.row];
    FController.Model.tipo := Grid.Cells[8,Grid.row];
    FController.Model.operacao := Grid.Cells[9,Grid.row];
    FController.Model.id_operacao := Grid.Cells[10,Grid.row];
    FController.Model.id_fornecedor := Grid.Cells[11,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPestoqueinsumo.LimparTela;  
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

procedure TFrm_ViewERPestoqueinsumo.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoqueinsumo.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoqueinsumo.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoqueinsumo.Setquantidade_empresa_terceiro(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoqueinsumo.Setquantidade_terceiro_empresa(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoqueinsumo.Setestoque(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoqueinsumo.Setchave_nfe(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoqueinsumo.Setdatahora(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoqueinsumo.Settipo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoqueinsumo.Setoperacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoqueinsumo.Setid_operacao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoqueinsumo.Setid_fornecedor(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
