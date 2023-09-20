
unit View.ERP.produtos_lote;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.produtos_lote, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPprodutoslote = class(TForm) 
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
    FController : TControllerERPprodutoslote; 
    Fid : Integer;
    Fid_lote : Integer;
    Fqtd : Double;
    Fdta_validade : TDateTime;
    Fid_compra : Integer;
    Fid_codpro : Integer;
    Fproduto : WideString;
    Fconsumido : Integer;
    Fdevolvido : Integer;
    Flote_ext : WideString;
    Fativo : Boolean;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_lote(const Value : Integer);
    procedure Setqtd(const Value : Double);
    procedure Setdta_validade(const Value : TDateTime);
    procedure Setid_compra(const Value : Integer);
    procedure Setid_codpro(const Value : Integer);
    procedure Setproduto(const Value : WideString);
    procedure Setconsumido(const Value : Integer);
    procedure Setdevolvido(const Value : Integer);
    procedure Setlote_ext(const Value : WideString);
    procedure Setativo(const Value : Boolean);

  public

    property id : Integer         read Fid    write Fid;
    property id_lote : Integer         read Fid_lote    write Fid_lote;
    property qtd : Double         read Fqtd    write Fqtd;
    property dta_validade : TDateTime         read Fdta_validade    write Fdta_validade;
    property id_compra : Integer         read Fid_compra    write Fid_compra;
    property id_codpro : Integer         read Fid_codpro    write Fid_codpro;
    property produto : WideString         read Fproduto    write Fproduto;
    property consumido : Integer         read Fconsumido    write Fconsumido;
    property devolvido : Integer         read Fdevolvido    write Fdevolvido;
    property lote_ext : WideString         read Flote_ext    write Flote_ext;
    property ativo : Boolean         read Fativo    write Fativo;

  end;

var
  Frm_ViewERPprodutoslote : TFrm_ViewERPprodutoslote; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_lote); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].qtd); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dta_validade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_compra); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_codpro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].consumido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].devolvido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].lote_ext); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].ativo); 
    end; 
end; 

procedure TFrm_ViewERPprodutoslote.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_lote := Edit_id_lote.text;
      FController.Model.qtd := Edit_qtd.text;
      FController.Model.dta_validade := Edit_dta_validade.text;
      FController.Model.id_compra := Edit_id_compra.text;
      FController.Model.id_codpro := Edit_id_codpro.text;
      FController.Model.produto := Edit_produto.text;
      FController.Model.consumido := Edit_consumido.text;
      FController.Model.devolvido := Edit_devolvido.text;
      FController.Model.lote_ext := Edit_lote_ext.text;
      FController.Model.ativo := Edit_ativo.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPprodutoslote.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPprodutoslote.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPprodutoslote.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPprodutoslote.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPprodutoslote.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPprodutoslote.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPprodutoslote.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 11;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_lote;  
     Grid.Cells[inttostr(i),0] := qtd;  
     Grid.Cells[inttostr(i),0] := dta_validade;  
     Grid.Cells[inttostr(i),0] := id_compra;  
     Grid.Cells[inttostr(i),0] := id_codpro;  
     Grid.Cells[inttostr(i),0] := produto;  
     Grid.Cells[inttostr(i),0] := consumido;  
     Grid.Cells[inttostr(i),0] := devolvido;  
     Grid.Cells[inttostr(i),0] := lote_ext;  
     Grid.Cells[inttostr(i),0] := ativo;  
end;

procedure TFrm_ViewERPprodutoslote.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPprodutoslote.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPprodutoslote.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_lote := Grid.Cells[1,Grid.row];
    FController.Model.qtd := Grid.Cells[2,Grid.row];
    FController.Model.dta_validade := Grid.Cells[3,Grid.row];
    FController.Model.id_compra := Grid.Cells[4,Grid.row];
    FController.Model.id_codpro := Grid.Cells[5,Grid.row];
    FController.Model.produto := Grid.Cells[6,Grid.row];
    FController.Model.consumido := Grid.Cells[7,Grid.row];
    FController.Model.devolvido := Grid.Cells[8,Grid.row];
    FController.Model.lote_ext := Grid.Cells[9,Grid.row];
    FController.Model.ativo := Grid.Cells[10,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPprodutoslote.LimparTela;  
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

procedure TFrm_ViewERPprodutoslote.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprodutoslote.Setid_lote(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprodutoslote.Setqtd(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprodutoslote.Setdta_validade(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprodutoslote.Setid_compra(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprodutoslote.Setid_codpro(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprodutoslote.Setproduto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprodutoslote.Setconsumido(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprodutoslote.Setdevolvido(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprodutoslote.Setlote_ext(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPprodutoslote.Setativo(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
