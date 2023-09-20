
unit View.ERP.movimentacao_almoxarifado;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.movimentacao_almoxarifado, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPmovimentacaoalmoxarifado = class(TForm) 
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
    FController : TControllerERPmovimentacaoalmoxarifado; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_mov_almoxarifado : Integer;
    Fid_equipamento : Integer;
    Fquantidade : Double;
    Fdevolucao : indefinido;
    Fdata_devolucao : TDateTime;
    Fclick : Boolean;
    Fnome_equipamento : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_mov_almoxarifado(const Value : Integer);
    procedure Setid_equipamento(const Value : Integer);
    procedure Setquantidade(const Value : Double);
    procedure Setdevolucao(const Value : indefinido);
    procedure Setdata_devolucao(const Value : TDateTime);
    procedure Setclick(const Value : Boolean);
    procedure Setnome_equipamento(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_mov_almoxarifado : Integer         read Fid_mov_almoxarifado    write Fid_mov_almoxarifado;
    property id_equipamento : Integer         read Fid_equipamento    write Fid_equipamento;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property devolucao : indefinido         read Fdevolucao    write Fdevolucao;
    property data_devolucao : TDateTime         read Fdata_devolucao    write Fdata_devolucao;
    property click : Boolean         read Fclick    write Fclick;
    property nome_equipamento : indefinido         read Fnome_equipamento    write Fnome_equipamento;

  end;

var
  Frm_ViewERPmovimentacaoalmoxarifado : TFrm_ViewERPmovimentacaoalmoxarifado; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 9; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_mov_almoxarifado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_equipamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].devolucao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_devolucao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_equipamento); 
    end; 
end; 

procedure TFrm_ViewERPmovimentacaoalmoxarifado.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_mov_almoxarifado := Edit_id_mov_almoxarifado.text;
      FController.Model.id_equipamento := Edit_id_equipamento.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.devolucao := Edit_devolucao.text;
      FController.Model.data_devolucao := Edit_data_devolucao.text;
      FController.Model.click := Edit_click.text;
      FController.Model.nome_equipamento := Edit_nome_equipamento.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPmovimentacaoalmoxarifado.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPmovimentacaoalmoxarifado.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPmovimentacaoalmoxarifado.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPmovimentacaoalmoxarifado.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPmovimentacaoalmoxarifado.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPmovimentacaoalmoxarifado.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPmovimentacaoalmoxarifado.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 9;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_mov_almoxarifado;  
     Grid.Cells[inttostr(i),0] := id_equipamento;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := devolucao;  
     Grid.Cells[inttostr(i),0] := data_devolucao;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := nome_equipamento;  
end;

procedure TFrm_ViewERPmovimentacaoalmoxarifado.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPmovimentacaoalmoxarifado.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPmovimentacaoalmoxarifado.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.id_mov_almoxarifado := Grid.Cells[2,Grid.row];
    FController.Model.id_equipamento := Grid.Cells[3,Grid.row];
    FController.Model.quantidade := Grid.Cells[4,Grid.row];
    FController.Model.devolucao := Grid.Cells[5,Grid.row];
    FController.Model.data_devolucao := Grid.Cells[6,Grid.row];
    FController.Model.click := Grid.Cells[7,Grid.row];
    FController.Model.nome_equipamento := Grid.Cells[8,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPmovimentacaoalmoxarifado.LimparTela;  
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

procedure TFrm_ViewERPmovimentacaoalmoxarifado.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentacaoalmoxarifado.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentacaoalmoxarifado.Setid_mov_almoxarifado(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentacaoalmoxarifado.Setid_equipamento(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentacaoalmoxarifado.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentacaoalmoxarifado.Setdevolucao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentacaoalmoxarifado.Setdata_devolucao(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentacaoalmoxarifado.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentacaoalmoxarifado.Setnome_equipamento(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
