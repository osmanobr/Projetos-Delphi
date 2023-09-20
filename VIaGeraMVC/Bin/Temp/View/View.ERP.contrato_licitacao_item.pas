
unit View.ERP.contrato_licitacao;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.contrato_licitacao, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPcontratolicitacao = class(TForm) 
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
    FController : TControllerERPcontratolicitacao; 
    Fid : Integer;
    Fid_contrato_licitacao : Integer;
    Fitem : Integer;
    Fqtd : WideString;
    Funidade : WideString;
    Fproduto : indefinido;
    Fvalor : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_contrato_licitacao(const Value : Integer);
    procedure Setitem(const Value : Integer);
    procedure Setqtd(const Value : WideString);
    procedure Setunidade(const Value : WideString);
    procedure Setproduto(const Value : indefinido);
    procedure Setvalor(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property id_contrato_licitacao : Integer         read Fid_contrato_licitacao    write Fid_contrato_licitacao;
    property item : Integer         read Fitem    write Fitem;
    property qtd : WideString         read Fqtd    write Fqtd;
    property unidade : WideString         read Funidade    write Funidade;
    property produto : indefinido         read Fproduto    write Fproduto;
    property valor : Double         read Fvalor    write Fvalor;

  end;

var
  Frm_ViewERPcontratolicitacao : TFrm_ViewERPcontratolicitacao; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 7; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_contrato_licitacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].item); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].qtd); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor); 
    end; 
end; 

procedure TFrm_ViewERPcontratolicitacao.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_contrato_licitacao := Edit_id_contrato_licitacao.text;
      FController.Model.item := Edit_item.text;
      FController.Model.qtd := Edit_qtd.text;
      FController.Model.unidade := Edit_unidade.text;
      FController.Model.produto := Edit_produto.text;
      FController.Model.valor := Edit_valor.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPcontratolicitacao.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPcontratolicitacao.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPcontratolicitacao.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPcontratolicitacao.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPcontratolicitacao.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPcontratolicitacao.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPcontratolicitacao.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 7;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_contrato_licitacao;  
     Grid.Cells[inttostr(i),0] := item;  
     Grid.Cells[inttostr(i),0] := qtd;  
     Grid.Cells[inttostr(i),0] := unidade;  
     Grid.Cells[inttostr(i),0] := produto;  
     Grid.Cells[inttostr(i),0] := valor;  
end;

procedure TFrm_ViewERPcontratolicitacao.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPcontratolicitacao.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPcontratolicitacao.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_contrato_licitacao := Grid.Cells[1,Grid.row];
    FController.Model.item := Grid.Cells[2,Grid.row];
    FController.Model.qtd := Grid.Cells[3,Grid.row];
    FController.Model.unidade := Grid.Cells[4,Grid.row];
    FController.Model.produto := Grid.Cells[5,Grid.row];
    FController.Model.valor := Grid.Cells[6,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPcontratolicitacao.LimparTela;  
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

procedure TFrm_ViewERPcontratolicitacao.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontratolicitacao.Setid_contrato_licitacao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontratolicitacao.Setitem(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontratolicitacao.Setqtd(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontratolicitacao.Setunidade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontratolicitacao.Setproduto(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontratolicitacao.Setvalor(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
