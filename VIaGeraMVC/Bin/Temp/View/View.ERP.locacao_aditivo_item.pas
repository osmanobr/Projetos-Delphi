
unit View.ERP.locacao_aditivo;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.locacao_aditivo, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPlocacaoaditivo = class(TForm) 
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
    FController : TControllerERPlocacaoaditivo; 
    Fid : Integer;
    Fid_locacaoaditivo : Integer;
    Fid_equipamento : Integer;
    Fpatrimonio : WideString;
    Fnome_equipamento : WideString;
    Ftipo : WideString;
    Fquantidade : Double;
    Fvalor_unitario : Double;
    Fvalor_garantia : Double;
    Fvalor_total : Double;
    Fobs : indefinido;
    Fclick : Boolean;
    Funidade : WideString;
    Fdata_troca : TDateTime;
    Fativo : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_locacaoaditivo(const Value : Integer);
    procedure Setid_equipamento(const Value : Integer);
    procedure Setpatrimonio(const Value : WideString);
    procedure Setnome_equipamento(const Value : WideString);
    procedure Settipo(const Value : WideString);
    procedure Setquantidade(const Value : Double);
    procedure Setvalor_unitario(const Value : Double);
    procedure Setvalor_garantia(const Value : Double);
    procedure Setvalor_total(const Value : Double);
    procedure Setobs(const Value : indefinido);
    procedure Setclick(const Value : Boolean);
    procedure Setunidade(const Value : WideString);
    procedure Setdata_troca(const Value : TDateTime);
    procedure Setativo(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property id_locacaoaditivo : Integer         read Fid_locacaoaditivo    write Fid_locacaoaditivo;
    property id_equipamento : Integer         read Fid_equipamento    write Fid_equipamento;
    property patrimonio : WideString         read Fpatrimonio    write Fpatrimonio;
    property nome_equipamento : WideString         read Fnome_equipamento    write Fnome_equipamento;
    property tipo : WideString         read Ftipo    write Ftipo;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property valor_unitario : Double         read Fvalor_unitario    write Fvalor_unitario;
    property valor_garantia : Double         read Fvalor_garantia    write Fvalor_garantia;
    property valor_total : Double         read Fvalor_total    write Fvalor_total;
    property obs : indefinido         read Fobs    write Fobs;
    property click : Boolean         read Fclick    write Fclick;
    property unidade : WideString         read Funidade    write Funidade;
    property data_troca : TDateTime         read Fdata_troca    write Fdata_troca;
    property ativo : WideString         read Fativo    write Fativo;

  end;

var
  Frm_ViewERPlocacaoaditivo : TFrm_ViewERPlocacaoaditivo; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_locacaoaditivo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_equipamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].patrimonio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_equipamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_unitario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_garantia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor_total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_troca); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ativo); 
    end; 
end; 

procedure TFrm_ViewERPlocacaoaditivo.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_locacaoaditivo := Edit_id_locacaoaditivo.text;
      FController.Model.id_equipamento := Edit_id_equipamento.text;
      FController.Model.patrimonio := Edit_patrimonio.text;
      FController.Model.nome_equipamento := Edit_nome_equipamento.text;
      FController.Model.tipo := Edit_tipo.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.valor_unitario := Edit_valor_unitario.text;
      FController.Model.valor_garantia := Edit_valor_garantia.text;
      FController.Model.valor_total := Edit_valor_total.text;
      FController.Model.obs := Edit_obs.text;
      FController.Model.click := Edit_click.text;
      FController.Model.unidade := Edit_unidade.text;
      FController.Model.data_troca := Edit_data_troca.text;
      FController.Model.ativo := Edit_ativo.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPlocacaoaditivo.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPlocacaoaditivo.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPlocacaoaditivo.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPlocacaoaditivo.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPlocacaoaditivo.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPlocacaoaditivo.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPlocacaoaditivo.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 15;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_locacaoaditivo;  
     Grid.Cells[inttostr(i),0] := id_equipamento;  
     Grid.Cells[inttostr(i),0] := patrimonio;  
     Grid.Cells[inttostr(i),0] := nome_equipamento;  
     Grid.Cells[inttostr(i),0] := tipo;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := valor_unitario;  
     Grid.Cells[inttostr(i),0] := valor_garantia;  
     Grid.Cells[inttostr(i),0] := valor_total;  
     Grid.Cells[inttostr(i),0] := obs;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := unidade;  
     Grid.Cells[inttostr(i),0] := data_troca;  
     Grid.Cells[inttostr(i),0] := ativo;  
end;

procedure TFrm_ViewERPlocacaoaditivo.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPlocacaoaditivo.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPlocacaoaditivo.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_locacaoaditivo := Grid.Cells[1,Grid.row];
    FController.Model.id_equipamento := Grid.Cells[2,Grid.row];
    FController.Model.patrimonio := Grid.Cells[3,Grid.row];
    FController.Model.nome_equipamento := Grid.Cells[4,Grid.row];
    FController.Model.tipo := Grid.Cells[5,Grid.row];
    FController.Model.quantidade := Grid.Cells[6,Grid.row];
    FController.Model.valor_unitario := Grid.Cells[7,Grid.row];
    FController.Model.valor_garantia := Grid.Cells[8,Grid.row];
    FController.Model.valor_total := Grid.Cells[9,Grid.row];
    FController.Model.obs := Grid.Cells[10,Grid.row];
    FController.Model.click := Grid.Cells[11,Grid.row];
    FController.Model.unidade := Grid.Cells[12,Grid.row];
    FController.Model.data_troca := Grid.Cells[13,Grid.row];
    FController.Model.ativo := Grid.Cells[14,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPlocacaoaditivo.LimparTela;  
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

procedure TFrm_ViewERPlocacaoaditivo.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoaditivo.Setid_locacaoaditivo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoaditivo.Setid_equipamento(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoaditivo.Setpatrimonio(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoaditivo.Setnome_equipamento(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoaditivo.Settipo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoaditivo.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoaditivo.Setvalor_unitario(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoaditivo.Setvalor_garantia(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoaditivo.Setvalor_total(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoaditivo.Setobs(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoaditivo.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoaditivo.Setunidade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoaditivo.Setdata_troca(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPlocacaoaditivo.Setativo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
