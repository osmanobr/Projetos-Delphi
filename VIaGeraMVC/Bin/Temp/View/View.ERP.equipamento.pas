
unit View.ERP.entrega;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.entrega, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPentrega = class(TForm) 
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
    FController : TControllerERPentrega; 
    Fid : Integer;
    Fpatrimonio : WideString;
    Fnome : WideString;
    Fquantidade : Double;
    Fvalor_garantia : Double;
    Fvalor_locacaodia : Double;
    Fvalor_locacaosemana : Double;
    Fvalor_locacaoquinzenal : Double;
    Fvalor_locacaomensal : Double;
    Fstatus : WideString;
    Fobs : indefinido;
    Fclick : Boolean;
    Fmulti_garantia : Boolean;
    Funidade : WideString;
    Ftipo_locacao : WideString;
    Fativo : WideString;
    Fqtd_unidade_por_metro : Double;
    Fquantidade_estoque : Double;
    Fvalor_locacaoanual : Double;
    Fvalor_locacaodoisanos : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setpatrimonio(const Value : WideString);
    procedure Setnome(const Value : WideString);
    procedure Setquantidade(const Value : Double);
    procedure Setvalor_garantia(const Value : Double);
    procedure Setvalor_locacaodia(const Value : Double);
    procedure Setvalor_locacaosemana(const Value : Double);
    procedure Setvalor_locacaoquinzenal(const Value : Double);
    procedure Setvalor_locacaomensal(const Value : Double);
    procedure Setstatus(const Value : WideString);
    procedure Setobs(const Value : indefinido);
    procedure Setclick(const Value : Boolean);
    procedure Setmulti_garantia(const Value : Boolean);
    procedure Setunidade(const Value : WideString);
    procedure Settipo_locacao(const Value : WideString);
    procedure Setativo(const Value : WideString);
    procedure Setqtd_unidade_por_metro(const Value : Double);
    procedure Setquantidade_estoque(const Value : Double);
    procedure Setvalor_locacaoanual(const Value : Double);
    procedure Setvalor_locacaodoisanos(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property patrimonio : WideString         read Fpatrimonio    write Fpatrimonio;
    property nome : WideString         read Fnome    write Fnome;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property valor_garantia : Double         read Fvalor_garantia    write Fvalor_garantia;
    property valor_locacaodia : Double         read Fvalor_locacaodia    write Fvalor_locacaodia;
    property valor_locacaosemana : Double         read Fvalor_locacaosemana    write Fvalor_locacaosemana;
    property valor_locacaoquinzenal : Double         read Fvalor_locacaoquinzenal    write Fvalor_locacaoquinzenal;
    property valor_locacaomensal : Double         read Fvalor_locacaomensal    write Fvalor_locacaomensal;
    property status : WideString         read Fstatus    write Fstatus;
    property obs : indefinido         read Fobs    write Fobs;
    property click : Boolean         read Fclick    write Fclick;
    property multi_garantia : Boolean         read Fmulti_garantia    write Fmulti_garantia;
    property unidade : WideString         read Funidade    write Funidade;
    property tipo_locacao : WideString         read Ftipo_locacao    write Ftipo_locacao;
    property ativo : WideString         read Fativo    write Fativo;
    property qtd_unidade_por_metro : Double         read Fqtd_unidade_por_metro    write Fqtd_unidade_por_metro;
    property quantidade_estoque : Double         read Fquantidade_estoque    write Fquantidade_estoque;
    property valor_locacaoanual : Double         read Fvalor_locacaoanual    write Fvalor_locacaoanual;
    property valor_locacaodoisanos : Double         read Fvalor_locacaodoisanos    write Fvalor_locacaodoisanos;

  end;

var
  Frm_ViewERPentrega : TFrm_ViewERPentrega; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 20; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].patrimonio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_garantia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_locacaodia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_locacaosemana); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_locacaoquinzenal); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_locacaomensal); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].status); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].multi_garantia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo_locacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ativo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].qtd_unidade_por_metro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade_estoque); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_locacaoanual); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_locacaodoisanos); 
    end; 
end; 

procedure TFrm_ViewERPentrega.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.patrimonio := Edit_patrimonio.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.valor_garantia := Edit_valor_garantia.text;
      FController.Model.valor_locacaodia := Edit_valor_locacaodia.text;
      FController.Model.valor_locacaosemana := Edit_valor_locacaosemana.text;
      FController.Model.valor_locacaoquinzenal := Edit_valor_locacaoquinzenal.text;
      FController.Model.valor_locacaomensal := Edit_valor_locacaomensal.text;
      FController.Model.status := Edit_status.text;
      FController.Model.obs := Edit_obs.text;
      FController.Model.click := Edit_click.text;
      FController.Model.multi_garantia := Edit_multi_garantia.text;
      FController.Model.unidade := Edit_unidade.text;
      FController.Model.tipo_locacao := Edit_tipo_locacao.text;
      FController.Model.ativo := Edit_ativo.text;
      FController.Model.qtd_unidade_por_metro := Edit_qtd_unidade_por_metro.text;
      FController.Model.quantidade_estoque := Edit_quantidade_estoque.text;
      FController.Model.valor_locacaoanual := Edit_valor_locacaoanual.text;
      FController.Model.valor_locacaodoisanos := Edit_valor_locacaodoisanos.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPentrega.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPentrega.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPentrega.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPentrega.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPentrega.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPentrega.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPentrega.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 20;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := patrimonio;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := valor_garantia;  
     Grid.Cells[inttostr(i),0] := valor_locacaodia;  
     Grid.Cells[inttostr(i),0] := valor_locacaosemana;  
     Grid.Cells[inttostr(i),0] := valor_locacaoquinzenal;  
     Grid.Cells[inttostr(i),0] := valor_locacaomensal;  
     Grid.Cells[inttostr(i),0] := status;  
     Grid.Cells[inttostr(i),0] := obs;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := multi_garantia;  
     Grid.Cells[inttostr(i),0] := unidade;  
     Grid.Cells[inttostr(i),0] := tipo_locacao;  
     Grid.Cells[inttostr(i),0] := ativo;  
     Grid.Cells[inttostr(i),0] := qtd_unidade_por_metro;  
     Grid.Cells[inttostr(i),0] := quantidade_estoque;  
     Grid.Cells[inttostr(i),0] := valor_locacaoanual;  
     Grid.Cells[inttostr(i),0] := valor_locacaodoisanos;  
end;

procedure TFrm_ViewERPentrega.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPentrega.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPentrega.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.patrimonio := Grid.Cells[1,Grid.row];
    FController.Model.nome := Grid.Cells[2,Grid.row];
    FController.Model.quantidade := Grid.Cells[3,Grid.row];
    FController.Model.valor_garantia := Grid.Cells[4,Grid.row];
    FController.Model.valor_locacaodia := Grid.Cells[5,Grid.row];
    FController.Model.valor_locacaosemana := Grid.Cells[6,Grid.row];
    FController.Model.valor_locacaoquinzenal := Grid.Cells[7,Grid.row];
    FController.Model.valor_locacaomensal := Grid.Cells[8,Grid.row];
    FController.Model.status := Grid.Cells[9,Grid.row];
    FController.Model.obs := Grid.Cells[10,Grid.row];
    FController.Model.click := Grid.Cells[11,Grid.row];
    FController.Model.multi_garantia := Grid.Cells[12,Grid.row];
    FController.Model.unidade := Grid.Cells[13,Grid.row];
    FController.Model.tipo_locacao := Grid.Cells[14,Grid.row];
    FController.Model.ativo := Grid.Cells[15,Grid.row];
    FController.Model.qtd_unidade_por_metro := Grid.Cells[16,Grid.row];
    FController.Model.quantidade_estoque := Grid.Cells[17,Grid.row];
    FController.Model.valor_locacaoanual := Grid.Cells[18,Grid.row];
    FController.Model.valor_locacaodoisanos := Grid.Cells[19,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPentrega.LimparTela;  
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

procedure TFrm_ViewERPentrega.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPentrega.Setpatrimonio(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPentrega.Setnome(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPentrega.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPentrega.Setvalor_garantia(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPentrega.Setvalor_locacaodia(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPentrega.Setvalor_locacaosemana(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPentrega.Setvalor_locacaoquinzenal(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPentrega.Setvalor_locacaomensal(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPentrega.Setstatus(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPentrega.Setobs(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPentrega.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPentrega.Setmulti_garantia(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPentrega.Setunidade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPentrega.Settipo_locacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPentrega.Setativo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPentrega.Setqtd_unidade_por_metro(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPentrega.Setquantidade_estoque(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPentrega.Setvalor_locacaoanual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPentrega.Setvalor_locacaodoisanos(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
