
unit View.ERP.troca;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.troca, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPtroca = class(TForm) 
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
    FController : TControllerERPtroca; 
    Fid : Integer;
    Fid_troca : Integer;
    Fid_produto : Integer;
    Fnome_produto : WideString;
    Ftipo : indefinido;
    Fquantidade : Double;
    Fvl_unitario : Double;
    Fvl_total : Double;
    Fid_grade : Integer;
    Fcor_grade : indefinido;
    Ftam_grade : indefinido;
    Fgerado : indefinido;
    Fvl_total_pagar : Double;
    Fvl_desconto : Double;
    Fid_venda_item : Integer;
    Fqtd_caixa : Double;
    Funitario_caixa : Double;
    Fean : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_troca(const Value : Integer);
    procedure Setid_produto(const Value : Integer);
    procedure Setnome_produto(const Value : WideString);
    procedure Settipo(const Value : indefinido);
    procedure Setquantidade(const Value : Double);
    procedure Setvl_unitario(const Value : Double);
    procedure Setvl_total(const Value : Double);
    procedure Setid_grade(const Value : Integer);
    procedure Setcor_grade(const Value : indefinido);
    procedure Settam_grade(const Value : indefinido);
    procedure Setgerado(const Value : indefinido);
    procedure Setvl_total_pagar(const Value : Double);
    procedure Setvl_desconto(const Value : Double);
    procedure Setid_venda_item(const Value : Integer);
    procedure Setqtd_caixa(const Value : Double);
    procedure Setunitario_caixa(const Value : Double);
    procedure Setean(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property id_troca : Integer         read Fid_troca    write Fid_troca;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property nome_produto : WideString         read Fnome_produto    write Fnome_produto;
    property tipo : indefinido         read Ftipo    write Ftipo;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property vl_unitario : Double         read Fvl_unitario    write Fvl_unitario;
    property vl_total : Double         read Fvl_total    write Fvl_total;
    property id_grade : Integer         read Fid_grade    write Fid_grade;
    property cor_grade : indefinido         read Fcor_grade    write Fcor_grade;
    property tam_grade : indefinido         read Ftam_grade    write Ftam_grade;
    property gerado : indefinido         read Fgerado    write Fgerado;
    property vl_total_pagar : Double         read Fvl_total_pagar    write Fvl_total_pagar;
    property vl_desconto : Double         read Fvl_desconto    write Fvl_desconto;
    property id_venda_item : Integer         read Fid_venda_item    write Fid_venda_item;
    property qtd_caixa : Double         read Fqtd_caixa    write Fqtd_caixa;
    property unitario_caixa : Double         read Funitario_caixa    write Funitario_caixa;
    property ean : WideString         read Fean    write Fean;

  end;

var
  Frm_ViewERPtroca : TFrm_ViewERPtroca; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 18; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_troca); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_unitario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_grade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cor_grade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tam_grade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gerado); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_total_pagar); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].vl_desconto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda_item); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].qtd_caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unitario_caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ean); 
    end; 
end; 

procedure TFrm_ViewERPtroca.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_troca := Edit_id_troca.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.nome_produto := Edit_nome_produto.text;
      FController.Model.tipo := Edit_tipo.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.vl_unitario := Edit_vl_unitario.text;
      FController.Model.vl_total := Edit_vl_total.text;
      FController.Model.id_grade := Edit_id_grade.text;
      FController.Model.cor_grade := Edit_cor_grade.text;
      FController.Model.tam_grade := Edit_tam_grade.text;
      FController.Model.gerado := Edit_gerado.text;
      FController.Model.vl_total_pagar := Edit_vl_total_pagar.text;
      FController.Model.vl_desconto := Edit_vl_desconto.text;
      FController.Model.id_venda_item := Edit_id_venda_item.text;
      FController.Model.qtd_caixa := Edit_qtd_caixa.text;
      FController.Model.unitario_caixa := Edit_unitario_caixa.text;
      FController.Model.ean := Edit_ean.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPtroca.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPtroca.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPtroca.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPtroca.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPtroca.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPtroca.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPtroca.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 18;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_troca;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := nome_produto;  
     Grid.Cells[inttostr(i),0] := tipo;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := vl_unitario;  
     Grid.Cells[inttostr(i),0] := vl_total;  
     Grid.Cells[inttostr(i),0] := id_grade;  
     Grid.Cells[inttostr(i),0] := cor_grade;  
     Grid.Cells[inttostr(i),0] := tam_grade;  
     Grid.Cells[inttostr(i),0] := gerado;  
     Grid.Cells[inttostr(i),0] := vl_total_pagar;  
     Grid.Cells[inttostr(i),0] := vl_desconto;  
     Grid.Cells[inttostr(i),0] := id_venda_item;  
     Grid.Cells[inttostr(i),0] := qtd_caixa;  
     Grid.Cells[inttostr(i),0] := unitario_caixa;  
     Grid.Cells[inttostr(i),0] := ean;  
end;

procedure TFrm_ViewERPtroca.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPtroca.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPtroca.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_troca := Grid.Cells[1,Grid.row];
    FController.Model.id_produto := Grid.Cells[2,Grid.row];
    FController.Model.nome_produto := Grid.Cells[3,Grid.row];
    FController.Model.tipo := Grid.Cells[4,Grid.row];
    FController.Model.quantidade := Grid.Cells[5,Grid.row];
    FController.Model.vl_unitario := Grid.Cells[6,Grid.row];
    FController.Model.vl_total := Grid.Cells[7,Grid.row];
    FController.Model.id_grade := Grid.Cells[8,Grid.row];
    FController.Model.cor_grade := Grid.Cells[9,Grid.row];
    FController.Model.tam_grade := Grid.Cells[10,Grid.row];
    FController.Model.gerado := Grid.Cells[11,Grid.row];
    FController.Model.vl_total_pagar := Grid.Cells[12,Grid.row];
    FController.Model.vl_desconto := Grid.Cells[13,Grid.row];
    FController.Model.id_venda_item := Grid.Cells[14,Grid.row];
    FController.Model.qtd_caixa := Grid.Cells[15,Grid.row];
    FController.Model.unitario_caixa := Grid.Cells[16,Grid.row];
    FController.Model.ean := Grid.Cells[17,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPtroca.LimparTela;  
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

procedure TFrm_ViewERPtroca.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtroca.Setid_troca(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtroca.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtroca.Setnome_produto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtroca.Settipo(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtroca.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtroca.Setvl_unitario(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtroca.Setvl_total(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtroca.Setid_grade(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtroca.Setcor_grade(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtroca.Settam_grade(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtroca.Setgerado(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtroca.Setvl_total_pagar(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtroca.Setvl_desconto(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtroca.Setid_venda_item(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtroca.Setqtd_caixa(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtroca.Setunitario_caixa(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPtroca.Setean(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
