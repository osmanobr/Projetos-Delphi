
unit View.ERP.fechamento_caixa_manutencao;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.fechamento_caixa_manutencao, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPfechamentocaixamanutencao = class(TForm) 
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
    FController : TControllerERPfechamentocaixamanutencao; 
    Fid : Integer;
    Fid_fechamento : Integer;
    Fid_fechamento_detalhe : Integer;
    Fid_portador_caixa : Integer;
    Fid_portador_banco : Integer;
    Fvalor : Double;
    Fhistorico : WideString;
    Fdatahora : indefinido;
    Festorno : Boolean;
    Ffinalizadora : WideString;
    Fimportacao : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_fechamento(const Value : Integer);
    procedure Setid_fechamento_detalhe(const Value : Integer);
    procedure Setid_portador_caixa(const Value : Integer);
    procedure Setid_portador_banco(const Value : Integer);
    procedure Setvalor(const Value : Double);
    procedure Sethistorico(const Value : WideString);
    procedure Setdatahora(const Value : indefinido);
    procedure Setestorno(const Value : Boolean);
    procedure Setfinalizadora(const Value : WideString);
    procedure Setimportacao(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property id_fechamento : Integer         read Fid_fechamento    write Fid_fechamento;
    property id_fechamento_detalhe : Integer         read Fid_fechamento_detalhe    write Fid_fechamento_detalhe;
    property id_portador_caixa : Integer         read Fid_portador_caixa    write Fid_portador_caixa;
    property id_portador_banco : Integer         read Fid_portador_banco    write Fid_portador_banco;
    property valor : Double         read Fvalor    write Fvalor;
    property historico : WideString         read Fhistorico    write Fhistorico;
    property datahora : indefinido         read Fdatahora    write Fdatahora;
    property estorno : Boolean         read Festorno    write Festorno;
    property finalizadora : WideString         read Ffinalizadora    write Ffinalizadora;
    property importacao : WideString         read Fimportacao    write Fimportacao;

  end;

var
  Frm_ViewERPfechamentocaixamanutencao : TFrm_ViewERPfechamentocaixamanutencao; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 11; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_fechamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_fechamento_detalhe); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_portador_caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_portador_banco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].historico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].datahora); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estorno); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].finalizadora); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].importacao); 
    end; 
end; 

procedure TFrm_ViewERPfechamentocaixamanutencao.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_fechamento := Edit_id_fechamento.text;
      FController.Model.id_fechamento_detalhe := Edit_id_fechamento_detalhe.text;
      FController.Model.id_portador_caixa := Edit_id_portador_caixa.text;
      FController.Model.id_portador_banco := Edit_id_portador_banco.text;
      FController.Model.valor := Edit_valor.text;
      FController.Model.historico := Edit_historico.text;
      FController.Model.datahora := Edit_datahora.text;
      FController.Model.estorno := Edit_estorno.text;
      FController.Model.finalizadora := Edit_finalizadora.text;
      FController.Model.importacao := Edit_importacao.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPfechamentocaixamanutencao.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPfechamentocaixamanutencao.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPfechamentocaixamanutencao.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPfechamentocaixamanutencao.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPfechamentocaixamanutencao.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPfechamentocaixamanutencao.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPfechamentocaixamanutencao.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 11;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_fechamento;  
     Grid.Cells[inttostr(i),0] := id_fechamento_detalhe;  
     Grid.Cells[inttostr(i),0] := id_portador_caixa;  
     Grid.Cells[inttostr(i),0] := id_portador_banco;  
     Grid.Cells[inttostr(i),0] := valor;  
     Grid.Cells[inttostr(i),0] := historico;  
     Grid.Cells[inttostr(i),0] := datahora;  
     Grid.Cells[inttostr(i),0] := estorno;  
     Grid.Cells[inttostr(i),0] := finalizadora;  
     Grid.Cells[inttostr(i),0] := importacao;  
end;

procedure TFrm_ViewERPfechamentocaixamanutencao.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPfechamentocaixamanutencao.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPfechamentocaixamanutencao.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_fechamento := Grid.Cells[1,Grid.row];
    FController.Model.id_fechamento_detalhe := Grid.Cells[2,Grid.row];
    FController.Model.id_portador_caixa := Grid.Cells[3,Grid.row];
    FController.Model.id_portador_banco := Grid.Cells[4,Grid.row];
    FController.Model.valor := Grid.Cells[5,Grid.row];
    FController.Model.historico := Grid.Cells[6,Grid.row];
    FController.Model.datahora := Grid.Cells[7,Grid.row];
    FController.Model.estorno := Grid.Cells[8,Grid.row];
    FController.Model.finalizadora := Grid.Cells[9,Grid.row];
    FController.Model.importacao := Grid.Cells[10,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPfechamentocaixamanutencao.LimparTela;  
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

procedure TFrm_ViewERPfechamentocaixamanutencao.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfechamentocaixamanutencao.Setid_fechamento(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfechamentocaixamanutencao.Setid_fechamento_detalhe(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfechamentocaixamanutencao.Setid_portador_caixa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfechamentocaixamanutencao.Setid_portador_banco(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfechamentocaixamanutencao.Setvalor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfechamentocaixamanutencao.Sethistorico(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfechamentocaixamanutencao.Setdatahora(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfechamentocaixamanutencao.Setestorno(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfechamentocaixamanutencao.Setfinalizadora(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfechamentocaixamanutencao.Setimportacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
