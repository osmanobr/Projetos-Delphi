
unit View.ERP.locacao_duplicata;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.locacao_duplicata, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPlocacaoduplicata = class(TForm) 
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
    FController : TControllerERPlocacaoduplicata; 
    Fid : Integer;
    Fid_locacao : Integer;
    Fid_equipamento : Integer;
    Fpatrimonio : WideString;
    Fnome_equipamento : WideString;
    Ftipo : WideString;
    Fquantidade : Double;
    Fvalor_unitario : Double;
    Fvalor_garantia_total : Double;
    Fvalor_total : Double;
    Fobs : indefinido;
    Fclick : Boolean;
    Fquantidade_aditivo : Double;
    Fvalor_aditivo : Double;
    Fvalor_total_aditivo : Double;
    Funidade : WideString;
    Fativo : WideString;
    Fdata_troca : TDateTime;
    Fdevolvido : WideString;
    Faditivo : WideString;
    Fdata_devolucao : TDateTime;
    Fdevolucao_itens : TDateTime;
    Fquantidade_devolucao : Double;
    Fdevolucao_parcial : WideString;
    Fvalor_garantia_unitario : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_locacao(const Value : Integer);
    procedure Setid_equipamento(const Value : Integer);
    procedure Setpatrimonio(const Value : WideString);
    procedure Setnome_equipamento(const Value : WideString);
    procedure Settipo(const Value : WideString);
    procedure Setquantidade(const Value : Double);
    procedure Setvalor_unitario(const Value : Double);
    procedure Setvalor_garantia_total(const Value : Double);
    procedure Setvalor_total(const Value : Double);
    procedure Setobs(const Value : indefinido);
    procedure Setclick(const Value : Boolean);
    procedure Setquantidade_aditivo(const Value : Double);
    procedure Setvalor_aditivo(const Value : Double);
    procedure Setvalor_total_aditivo(const Value : Double);
    procedure Setunidade(const Value : WideString);
    procedure Setativo(const Value : WideString);
    procedure Setdata_troca(const Value : TDateTime);
    procedure Setdevolvido(const Value : WideString);
    procedure Setaditivo(const Value : WideString);
    procedure Setdata_devolucao(const Value : TDateTime);
    procedure Setdevolucao_itens(const Value : TDateTime);
    procedure Setquantidade_devolucao(const Value : Double);
    procedure Setdevolucao_parcial(const Value : WideString);
    procedure Setvalor_garantia_unitario(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property id_locacao : Integer         read Fid_locacao    write Fid_locacao;
    property id_equipamento : Integer         read Fid_equipamento    write Fid_equipamento;
    property patrimonio : WideString         read Fpatrimonio    write Fpatrimonio;
    property nome_equipamento : WideString         read Fnome_equipamento    write Fnome_equipamento;
    property tipo : WideString         read Ftipo    write Ftipo;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property valor_unitario : Double         read Fvalor_unitario    write Fvalor_unitario;
    property valor_garantia_total : Double         read Fvalor_garantia_total    write Fvalor_garantia_total;
    property valor_total : Double         read Fvalor_total    write Fvalor_total;
    property obs : indefinido         read Fobs    write Fobs;
    property click : Boolean         read Fclick    write Fclick;
    property quantidade_aditivo : Double         read Fquantidade_aditivo    write Fquantidade_aditivo;
    property valor_aditivo : Double         read Fvalor_aditivo    write Fvalor_aditivo;
    property valor_total_aditivo : Double         read Fvalor_total_aditivo    write Fvalor_total_aditivo;
    property unidade : WideString         read Funidade    write Funidade;
    property ativo : WideString         read Fativo    write Fativo;
    property data_troca : TDateTime         read Fdata_troca    write Fdata_troca;
    property devolvido : WideString         read Fdevolvido    write Fdevolvido;
    property aditivo : WideString         read Faditivo    write Faditivo;
    property data_devolucao : TDateTime         read Fdata_devolucao    write Fdata_devolucao;
    property devolucao_itens : TDateTime         read Fdevolucao_itens    write Fdevolucao_itens;
    property quantidade_devolucao : Double         read Fquantidade_devolucao    write Fquantidade_devolucao;
    property devolucao_parcial : WideString         read Fdevolucao_parcial    write Fdevolucao_parcial;
    property valor_garantia_unitario : Double         read Fvalor_garantia_unitario    write Fvalor_garantia_unitario;

  end;

var
  Frm_ViewERPlocacaoduplicata : TFrm_ViewERPlocacaoduplicata; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 25; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_locacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_equipamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].patrimonio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_equipamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_unitario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_garantia_total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade_aditivo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_aditivo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_total_aditivo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ativo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_troca); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].devolvido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].aditivo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_devolucao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].devolucao_itens); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade_devolucao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].devolucao_parcial); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_garantia_unitario); 
    end; 
end; 

procedure TFrm_ViewERPlocacaoduplicata.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_locacao := Edit_id_locacao.text;
      FController.Model.id_equipamento := Edit_id_equipamento.text;
      FController.Model.patrimonio := Edit_patrimonio.text;
      FController.Model.nome_equipamento := Edit_nome_equipamento.text;
      FController.Model.tipo := Edit_tipo.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.valor_unitario := Edit_valor_unitario.text;
      FController.Model.valor_garantia_total := Edit_valor_garantia_total.text;
      FController.Model.valor_total := Edit_valor_total.text;
      FController.Model.obs := Edit_obs.text;
      FController.Model.click := Edit_click.text;
      FController.Model.quantidade_aditivo := Edit_quantidade_aditivo.text;
      FController.Model.valor_aditivo := Edit_valor_aditivo.text;
      FController.Model.valor_total_aditivo := Edit_valor_total_aditivo.text;
      FController.Model.unidade := Edit_unidade.text;
      FController.Model.ativo := Edit_ativo.text;
      FController.Model.data_troca := Edit_data_troca.text;
      FController.Model.devolvido := Edit_devolvido.text;
      FController.Model.aditivo := Edit_aditivo.text;
      FController.Model.data_devolucao := Edit_data_devolucao.text;
      FController.Model.devolucao_itens := Edit_devolucao_itens.text;
      FController.Model.quantidade_devolucao := Edit_quantidade_devolucao.text;
      FController.Model.devolucao_parcial := Edit_devolucao_parcial.text;
      FController.Model.valor_garantia_unitario := Edit_valor_garantia_unitario.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPlocacaoduplicata.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPlocacaoduplicata.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPlocacaoduplicata.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPlocacaoduplicata.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPlocacaoduplicata.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPlocacaoduplicata.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPlocacaoduplicata.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 25;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_locacao;  
     Grid.Cells[inttostr(i),0] := id_equipamento;  
     Grid.Cells[inttostr(i),0] := patrimonio;  
     Grid.Cells[inttostr(i),0] := nome_equipamento;  
     Grid.Cells[inttostr(i),0] := tipo;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := valor_unitario;  
     Grid.Cells[inttostr(i),0] := valor_garantia_total;  
     Grid.Cells[inttostr(i),0] := valor_total;  
     Grid.Cells[inttostr(i),0] := obs;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := quantidade_aditivo;  
     Grid.Cells[inttostr(i),0] := valor_aditivo;  
     Grid.Cells[inttostr(i),0] := valor_total_aditivo;  
     Grid.Cells[inttostr(i),0] := unidade;  
     Grid.Cells[inttostr(i),0] := ativo;  
     Grid.Cells[inttostr(i),0] := data_troca;  
     Grid.Cells[inttostr(i),0] := devolvido;  
     Grid.Cells[inttostr(i),0] := aditivo;  
     Grid.Cells[inttostr(i),0] := data_devolucao;  
     Grid.Cells[inttostr(i),0] := devolucao_itens;  
     Grid.Cells[inttostr(i),0] := quantidade_devolucao;  
     Grid.Cells[inttostr(i),0] := devolucao_parcial;  
     Grid.Cells[inttostr(i),0] := valor_garantia_unitario;  
end;

procedure TFrm_ViewERPlocacaoduplicata.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPlocacaoduplicata.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPlocacaoduplicata.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_locacao := Grid.Cells[1,Grid.row];
    FController.Model.id_equipamento := Grid.Cells[2,Grid.row];
    FController.Model.patrimonio := Grid.Cells[3,Grid.row];
    FController.Model.nome_equipamento := Grid.Cells[4,Grid.row];
    FController.Model.tipo := Grid.Cells[5,Grid.row];
    FController.Model.quantidade := Grid.Cells[6,Grid.row];
    FController.Model.valor_unitario := Grid.Cells[7,Grid.row];
    FController.Model.valor_garantia_total := Grid.Cells[8,Grid.row];
    FController.Model.valor_total := Grid.Cells[9,Grid.row];
    FController.Model.obs := Grid.Cells[10,Grid.row];
    FController.Model.click := Grid.Cells[11,Grid.row];
    FController.Model.quantidade_aditivo := Grid.Cells[12,Grid.row];
    FController.Model.valor_aditivo := Grid.Cells[13,Grid.row];
    FController.Model.valor_total_aditivo := Grid.Cells[14,Grid.row];
    FController.Model.unidade := Grid.Cells[15,Grid.row];
    FController.Model.ativo := Grid.Cells[16,Grid.row];
    FController.Model.data_troca := Grid.Cells[17,Grid.row];
    FController.Model.devolvido := Grid.Cells[18,Grid.row];
    FController.Model.aditivo := Grid.Cells[19,Grid.row];
    FController.Model.data_devolucao := Grid.Cells[20,Grid.row];
    FController.Model.devolucao_itens := Grid.Cells[21,Grid.row];
    FController.Model.quantidade_devolucao := Grid.Cells[22,Grid.row];
    FController.Model.devolucao_parcial := Grid.Cells[23,Grid.row];
    FController.Model.valor_garantia_unitario := Grid.Cells[24,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPlocacaoduplicata.LimparTela;  
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

procedure TFrm_ViewERPlocacaoduplicata.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoduplicata.Setid_locacao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoduplicata.Setid_equipamento(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoduplicata.Setpatrimonio(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoduplicata.Setnome_equipamento(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoduplicata.Settipo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoduplicata.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoduplicata.Setvalor_unitario(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoduplicata.Setvalor_garantia_total(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoduplicata.Setvalor_total(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoduplicata.Setobs(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoduplicata.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoduplicata.Setquantidade_aditivo(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoduplicata.Setvalor_aditivo(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoduplicata.Setvalor_total_aditivo(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoduplicata.Setunidade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoduplicata.Setativo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoduplicata.Setdata_troca(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoduplicata.Setdevolvido(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoduplicata.Setaditivo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoduplicata.Setdata_devolucao(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoduplicata.Setdevolucao_itens(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoduplicata.Setquantidade_devolucao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoduplicata.Setdevolucao_parcial(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoduplicata.Setvalor_garantia_unitario(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
