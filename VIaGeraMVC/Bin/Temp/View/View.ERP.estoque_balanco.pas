
unit View.ERP.estoque_almoxarifado;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.estoque_almoxarifado, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPestoquealmoxarifado = class(TForm) 
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
    FController : TControllerERPestoquealmoxarifado; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_balanco : Integer;
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
    Fid_usuario : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_balanco(const Value : Integer);
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
    procedure Setid_usuario(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_balanco : Integer         read Fid_balanco    write Fid_balanco;
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
    property id_usuario : Integer         read Fid_usuario    write Fid_usuario;

  end;

var
  Frm_ViewERPestoquealmoxarifado : TFrm_ViewERPestoquealmoxarifado; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_balanco); 
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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_usuario); 
    end; 
end; 

procedure TFrm_ViewERPestoquealmoxarifado.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_balanco := Edit_id_balanco.text;
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
      FController.Model.id_usuario := Edit_id_usuario.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPestoquealmoxarifado.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPestoquealmoxarifado.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPestoquealmoxarifado.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPestoquealmoxarifado.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPestoquealmoxarifado.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPestoquealmoxarifado.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPestoquealmoxarifado.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 15;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_balanco;  
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
     Grid.Cells[inttostr(i),0] := id_usuario;  
end;

procedure TFrm_ViewERPestoquealmoxarifado.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPestoquealmoxarifado.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPestoquealmoxarifado.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.id_balanco := Grid.Cells[2,Grid.row];
    FController.Model.data := Grid.Cells[3,Grid.row];
    FController.Model.estoque := Grid.Cells[4,Grid.row];
    FController.Model.id_produto := Grid.Cells[5,Grid.row];
    FController.Model.nome_produto := Grid.Cells[6,Grid.row];
    FController.Model.operacao := Grid.Cells[7,Grid.row];
    FController.Model.id_operacao := Grid.Cells[8,Grid.row];
    FController.Model.quantidade := Grid.Cells[9,Grid.row];
    FController.Model.nota := Grid.Cells[10,Grid.row];
    FController.Model.tipo := Grid.Cells[11,Grid.row];
    FController.Model.quantidade_atual := Grid.Cells[12,Grid.row];
    FController.Model.estoque_atual := Grid.Cells[13,Grid.row];
    FController.Model.id_usuario := Grid.Cells[14,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPestoquealmoxarifado.LimparTela;  
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

procedure TFrm_ViewERPestoquealmoxarifado.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoquealmoxarifado.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoquealmoxarifado.Setid_balanco(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoquealmoxarifado.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoquealmoxarifado.Setestoque(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoquealmoxarifado.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoquealmoxarifado.Setnome_produto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoquealmoxarifado.Setoperacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoquealmoxarifado.Setid_operacao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoquealmoxarifado.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoquealmoxarifado.Setnota(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoquealmoxarifado.Settipo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoquealmoxarifado.Setquantidade_atual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoquealmoxarifado.Setestoque_atual(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPestoquealmoxarifado.Setid_usuario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
