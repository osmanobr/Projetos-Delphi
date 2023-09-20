
unit View.ERP.estoque_equipamentos;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.estoque_equipamentos, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPestoqueequipamentos = class(TForm) 
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
    FController : TControllerERPestoqueequipamentos; 
    Fid : Integer;
    Fdata : TDateTime;
    Festoque : WideString;
    Fid_insumo : Integer;
    Fnome_insumo : WideString;
    Foperacao : WideString;
    Fid_operacao : Integer;
    Fquantidade : Double;
    Fquant_perda : Double;
    Fnota : WideString;
    Fquantidade_empresa_terceiro : Double;
    Fquantidade_terceiro_empresa : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setdata(const Value : TDateTime);
    procedure Setestoque(const Value : WideString);
    procedure Setid_insumo(const Value : Integer);
    procedure Setnome_insumo(const Value : WideString);
    procedure Setoperacao(const Value : WideString);
    procedure Setid_operacao(const Value : Integer);
    procedure Setquantidade(const Value : Double);
    procedure Setquant_perda(const Value : Double);
    procedure Setnota(const Value : WideString);
    procedure Setquantidade_empresa_terceiro(const Value : Double);
    procedure Setquantidade_terceiro_empresa(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property data : TDateTime         read Fdata    write Fdata;
    property estoque : WideString         read Festoque    write Festoque;
    property id_insumo : Integer         read Fid_insumo    write Fid_insumo;
    property nome_insumo : WideString         read Fnome_insumo    write Fnome_insumo;
    property operacao : WideString         read Foperacao    write Foperacao;
    property id_operacao : Integer         read Fid_operacao    write Fid_operacao;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property quant_perda : Double         read Fquant_perda    write Fquant_perda;
    property nota : WideString         read Fnota    write Fnota;
    property quantidade_empresa_terceiro : Double         read Fquantidade_empresa_terceiro    write Fquantidade_empresa_terceiro;
    property quantidade_terceiro_empresa : Double         read Fquantidade_terceiro_empresa    write Fquantidade_terceiro_empresa;

  end;

var
  Frm_ViewERPestoqueequipamentos : TFrm_ViewERPestoqueequipamentos; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].estoque); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_insumo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_insumo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].operacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_operacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quant_perda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nota); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade_empresa_terceiro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade_terceiro_empresa); 
    end; 
end; 

procedure TFrm_ViewERPestoqueequipamentos.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.data := Edit_data.text;
      FController.Model.estoque := Edit_estoque.text;
      FController.Model.id_insumo := Edit_id_insumo.text;
      FController.Model.nome_insumo := Edit_nome_insumo.text;
      FController.Model.operacao := Edit_operacao.text;
      FController.Model.id_operacao := Edit_id_operacao.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.quant_perda := Edit_quant_perda.text;
      FController.Model.nota := Edit_nota.text;
      FController.Model.quantidade_empresa_terceiro := Edit_quantidade_empresa_terceiro.text;
      FController.Model.quantidade_terceiro_empresa := Edit_quantidade_terceiro_empresa.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPestoqueequipamentos.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPestoqueequipamentos.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPestoqueequipamentos.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPestoqueequipamentos.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPestoqueequipamentos.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPestoqueequipamentos.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPestoqueequipamentos.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 12;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := estoque;  
     Grid.Cells[inttostr(i),0] := id_insumo;  
     Grid.Cells[inttostr(i),0] := nome_insumo;  
     Grid.Cells[inttostr(i),0] := operacao;  
     Grid.Cells[inttostr(i),0] := id_operacao;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := quant_perda;  
     Grid.Cells[inttostr(i),0] := nota;  
     Grid.Cells[inttostr(i),0] := quantidade_empresa_terceiro;  
     Grid.Cells[inttostr(i),0] := quantidade_terceiro_empresa;  
end;

procedure TFrm_ViewERPestoqueequipamentos.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPestoqueequipamentos.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPestoqueequipamentos.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.data := Grid.Cells[1,Grid.row];
    FController.Model.estoque := Grid.Cells[2,Grid.row];
    FController.Model.id_insumo := Grid.Cells[3,Grid.row];
    FController.Model.nome_insumo := Grid.Cells[4,Grid.row];
    FController.Model.operacao := Grid.Cells[5,Grid.row];
    FController.Model.id_operacao := Grid.Cells[6,Grid.row];
    FController.Model.quantidade := Grid.Cells[7,Grid.row];
    FController.Model.quant_perda := Grid.Cells[8,Grid.row];
    FController.Model.nota := Grid.Cells[9,Grid.row];
    FController.Model.quantidade_empresa_terceiro := Grid.Cells[10,Grid.row];
    FController.Model.quantidade_terceiro_empresa := Grid.Cells[11,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPestoqueequipamentos.LimparTela;  
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

procedure TFrm_ViewERPestoqueequipamentos.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoqueequipamentos.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoqueequipamentos.Setestoque(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoqueequipamentos.Setid_insumo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoqueequipamentos.Setnome_insumo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoqueequipamentos.Setoperacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoqueequipamentos.Setid_operacao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoqueequipamentos.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoqueequipamentos.Setquant_perda(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoqueequipamentos.Setnota(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoqueequipamentos.Setquantidade_empresa_terceiro(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoqueequipamentos.Setquantidade_terceiro_empresa(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
