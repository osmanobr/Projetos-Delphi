
unit View.ERP.import_ean_produto_alterados;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.import_ean_produto_alterados, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPimporteanprodutoalterados = class(TForm) 
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
    FController : TControllerERPimporteanprodutoalterados; 
    Fid_produto : Integer;
    Fcodigo : WideString;
    Fdescricao : WideString;
    Funidade : WideString;
    Fposicao : WideString;
    Fquantidade : Double;
    Funitario : Double;
    Fst : WideString;
    Ficms : Double;
    Fippt : WideString;
    Fiat : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid_produto(const Value : Integer);
    procedure Setcodigo(const Value : WideString);
    procedure Setdescricao(const Value : WideString);
    procedure Setunidade(const Value : WideString);
    procedure Setposicao(const Value : WideString);
    procedure Setquantidade(const Value : Double);
    procedure Setunitario(const Value : Double);
    procedure Setst(const Value : WideString);
    procedure Seticms(const Value : Double);
    procedure Setippt(const Value : WideString);
    procedure Setiat(const Value : WideString);

  public

    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property codigo : WideString         read Fcodigo    write Fcodigo;
    property descricao : WideString         read Fdescricao    write Fdescricao;
    property unidade : WideString         read Funidade    write Funidade;
    property posicao : WideString         read Fposicao    write Fposicao;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property unitario : Double         read Funitario    write Funitario;
    property st : WideString         read Fst    write Fst;
    property icms : Double         read Ficms    write Ficms;
    property ippt : WideString         read Fippt    write Fippt;
    property iat : WideString         read Fiat    write Fiat;

  end;

var
  Frm_ViewERPimporteanprodutoalterados : TFrm_ViewERPimporteanprodutoalterados; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].codigo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].descricao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].posicao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unitario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].st); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].icms); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ippt); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].iat); 
    end; 
end; 

procedure TFrm_ViewERPimporteanprodutoalterados.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.codigo := Edit_codigo.text;
      FController.Model.descricao := Edit_descricao.text;
      FController.Model.unidade := Edit_unidade.text;
      FController.Model.posicao := Edit_posicao.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.unitario := Edit_unitario.text;
      FController.Model.st := Edit_st.text;
      FController.Model.icms := Edit_icms.text;
      FController.Model.ippt := Edit_ippt.text;
      FController.Model.iat := Edit_iat.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPimporteanprodutoalterados.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPimporteanprodutoalterados.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPimporteanprodutoalterados.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPimporteanprodutoalterados.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPimporteanprodutoalterados.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPimporteanprodutoalterados.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPimporteanprodutoalterados.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 11;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := codigo;  
     Grid.Cells[inttostr(i),0] := descricao;  
     Grid.Cells[inttostr(i),0] := unidade;  
     Grid.Cells[inttostr(i),0] := posicao;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := unitario;  
     Grid.Cells[inttostr(i),0] := st;  
     Grid.Cells[inttostr(i),0] := icms;  
     Grid.Cells[inttostr(i),0] := ippt;  
     Grid.Cells[inttostr(i),0] := iat;  
end;

procedure TFrm_ViewERPimporteanprodutoalterados.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPimporteanprodutoalterados.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPimporteanprodutoalterados.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id_produto := Grid.Cells[0,Grid.row];
    FController.Model.codigo := Grid.Cells[1,Grid.row];
    FController.Model.descricao := Grid.Cells[2,Grid.row];
    FController.Model.unidade := Grid.Cells[3,Grid.row];
    FController.Model.posicao := Grid.Cells[4,Grid.row];
    FController.Model.quantidade := Grid.Cells[5,Grid.row];
    FController.Model.unitario := Grid.Cells[6,Grid.row];
    FController.Model.st := Grid.Cells[7,Grid.row];
    FController.Model.icms := Grid.Cells[8,Grid.row];
    FController.Model.ippt := Grid.Cells[9,Grid.row];
    FController.Model.iat := Grid.Cells[10,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPimporteanprodutoalterados.LimparTela;  
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

procedure TFrm_ViewERPimporteanprodutoalterados.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimporteanprodutoalterados.Setcodigo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimporteanprodutoalterados.Setdescricao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimporteanprodutoalterados.Setunidade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimporteanprodutoalterados.Setposicao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimporteanprodutoalterados.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimporteanprodutoalterados.Setunitario(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimporteanprodutoalterados.Setst(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimporteanprodutoalterados.Seticms(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimporteanprodutoalterados.Setippt(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPimporteanprodutoalterados.Setiat(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
