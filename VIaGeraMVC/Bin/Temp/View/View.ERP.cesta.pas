
unit View.ERP.cest_itens;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.cest_itens, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPcestitens = class(TForm) 
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
    FController : TControllerERPcestitens; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_produto : Integer;
    Fcomissao : Double;
    Fdata : TDateTime;
    Flote : Double;
    Fconta : WideString;
    Fgerada : WideString;
    Fcancelada : WideString;
    Fquantidade : Double;
    Fpreco_custo : Double;
    Fpreco_venda : Double;
    Fpreco_venda_original : Double;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_produto(const Value : Integer);
    procedure Setcomissao(const Value : Double);
    procedure Setdata(const Value : TDateTime);
    procedure Setlote(const Value : Double);
    procedure Setconta(const Value : WideString);
    procedure Setgerada(const Value : WideString);
    procedure Setcancelada(const Value : WideString);
    procedure Setquantidade(const Value : Double);
    procedure Setpreco_custo(const Value : Double);
    procedure Setpreco_venda(const Value : Double);
    procedure Setpreco_venda_original(const Value : Double);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property comissao : Double         read Fcomissao    write Fcomissao;
    property data : TDateTime         read Fdata    write Fdata;
    property lote : Double         read Flote    write Flote;
    property conta : WideString         read Fconta    write Fconta;
    property gerada : WideString         read Fgerada    write Fgerada;
    property cancelada : WideString         read Fcancelada    write Fcancelada;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property preco_custo : Double         read Fpreco_custo    write Fpreco_custo;
    property preco_venda : Double         read Fpreco_venda    write Fpreco_venda;
    property preco_venda_original : Double         read Fpreco_venda_original    write Fpreco_venda_original;

  end;

var
  Frm_ViewERPcestitens : TFrm_ViewERPcestitens; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 13; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].lote); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].conta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gerada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cancelada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_custo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_venda_original); 
    end; 
end; 

procedure TFrm_ViewERPcestitens.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.comissao := Edit_comissao.text;
      FController.Model.data := Edit_data.text;
      FController.Model.lote := Edit_lote.text;
      FController.Model.conta := Edit_conta.text;
      FController.Model.gerada := Edit_gerada.text;
      FController.Model.cancelada := Edit_cancelada.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.preco_custo := Edit_preco_custo.text;
      FController.Model.preco_venda := Edit_preco_venda.text;
      FController.Model.preco_venda_original := Edit_preco_venda_original.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPcestitens.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPcestitens.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPcestitens.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPcestitens.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPcestitens.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPcestitens.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPcestitens.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 13;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := comissao;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := lote;  
     Grid.Cells[inttostr(i),0] := conta;  
     Grid.Cells[inttostr(i),0] := gerada;  
     Grid.Cells[inttostr(i),0] := cancelada;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := preco_custo;  
     Grid.Cells[inttostr(i),0] := preco_venda;  
     Grid.Cells[inttostr(i),0] := preco_venda_original;  
end;

procedure TFrm_ViewERPcestitens.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPcestitens.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPcestitens.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.id_produto := Grid.Cells[2,Grid.row];
    FController.Model.comissao := Grid.Cells[3,Grid.row];
    FController.Model.data := Grid.Cells[4,Grid.row];
    FController.Model.lote := Grid.Cells[5,Grid.row];
    FController.Model.conta := Grid.Cells[6,Grid.row];
    FController.Model.gerada := Grid.Cells[7,Grid.row];
    FController.Model.cancelada := Grid.Cells[8,Grid.row];
    FController.Model.quantidade := Grid.Cells[9,Grid.row];
    FController.Model.preco_custo := Grid.Cells[10,Grid.row];
    FController.Model.preco_venda := Grid.Cells[11,Grid.row];
    FController.Model.preco_venda_original := Grid.Cells[12,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPcestitens.LimparTela;  
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

procedure TFrm_ViewERPcestitens.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestitens.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestitens.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestitens.Setcomissao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestitens.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestitens.Setlote(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestitens.Setconta(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestitens.Setgerada(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestitens.Setcancelada(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestitens.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestitens.Setpreco_custo(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestitens.Setpreco_venda(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcestitens.Setpreco_venda_original(const Value: Double);  
begin    
  ativo:=value;  
end;  
end.
