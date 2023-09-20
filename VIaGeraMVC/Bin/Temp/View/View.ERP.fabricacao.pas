
unit View.ERP.etiquetadora;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.etiquetadora, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPetiquetadora = class(TForm) 
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
    FController : TControllerERPetiquetadora; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_produto : Integer;
    Fquantidade : Double;
    Fcomissao : Double;
    Fcancelada : WideString;
    Fgerada : WideString;
    Fdata : TDateTime;
    Flote : WideString;
    Fpreco_custo : Double;
    Fid_conta : WideString;
    Fnome_produto : WideString;
    Fclick : Boolean;
    Fcomissao_alterada : Double;
    Fid_dev : Integer;
    Fid_venda : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_produto(const Value : Integer);
    procedure Setquantidade(const Value : Double);
    procedure Setcomissao(const Value : Double);
    procedure Setcancelada(const Value : WideString);
    procedure Setgerada(const Value : WideString);
    procedure Setdata(const Value : TDateTime);
    procedure Setlote(const Value : WideString);
    procedure Setpreco_custo(const Value : Double);
    procedure Setid_conta(const Value : WideString);
    procedure Setnome_produto(const Value : WideString);
    procedure Setclick(const Value : Boolean);
    procedure Setcomissao_alterada(const Value : Double);
    procedure Setid_dev(const Value : Integer);
    procedure Setid_venda(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_produto : Integer         read Fid_produto    write Fid_produto;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property comissao : Double         read Fcomissao    write Fcomissao;
    property cancelada : WideString         read Fcancelada    write Fcancelada;
    property gerada : WideString         read Fgerada    write Fgerada;
    property data : TDateTime         read Fdata    write Fdata;
    property lote : WideString         read Flote    write Flote;
    property preco_custo : Double         read Fpreco_custo    write Fpreco_custo;
    property id_conta : WideString         read Fid_conta    write Fid_conta;
    property nome_produto : WideString         read Fnome_produto    write Fnome_produto;
    property click : Boolean         read Fclick    write Fclick;
    property comissao_alterada : Double         read Fcomissao_alterada    write Fcomissao_alterada;
    property id_dev : Integer         read Fid_dev    write Fid_dev;
    property id_venda : Integer         read Fid_venda    write Fid_venda;

  end;

var
  Frm_ViewERPetiquetadora : TFrm_ViewERPetiquetadora; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 16; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comissao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cancelada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].gerada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].lote); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].preco_custo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_conta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].comissao_alterada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_dev); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda); 
    end; 
end; 

procedure TFrm_ViewERPetiquetadora.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_produto := Edit_id_produto.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.comissao := Edit_comissao.text;
      FController.Model.cancelada := Edit_cancelada.text;
      FController.Model.gerada := Edit_gerada.text;
      FController.Model.data := Edit_data.text;
      FController.Model.lote := Edit_lote.text;
      FController.Model.preco_custo := Edit_preco_custo.text;
      FController.Model.id_conta := Edit_id_conta.text;
      FController.Model.nome_produto := Edit_nome_produto.text;
      FController.Model.click := Edit_click.text;
      FController.Model.comissao_alterada := Edit_comissao_alterada.text;
      FController.Model.id_dev := Edit_id_dev.text;
      FController.Model.id_venda := Edit_id_venda.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPetiquetadora.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPetiquetadora.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPetiquetadora.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPetiquetadora.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPetiquetadora.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPetiquetadora.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPetiquetadora.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 16;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_produto;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := comissao;  
     Grid.Cells[inttostr(i),0] := cancelada;  
     Grid.Cells[inttostr(i),0] := gerada;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := lote;  
     Grid.Cells[inttostr(i),0] := preco_custo;  
     Grid.Cells[inttostr(i),0] := id_conta;  
     Grid.Cells[inttostr(i),0] := nome_produto;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := comissao_alterada;  
     Grid.Cells[inttostr(i),0] := id_dev;  
     Grid.Cells[inttostr(i),0] := id_venda;  
end;

procedure TFrm_ViewERPetiquetadora.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPetiquetadora.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPetiquetadora.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.id_produto := Grid.Cells[2,Grid.row];
    FController.Model.quantidade := Grid.Cells[3,Grid.row];
    FController.Model.comissao := Grid.Cells[4,Grid.row];
    FController.Model.cancelada := Grid.Cells[5,Grid.row];
    FController.Model.gerada := Grid.Cells[6,Grid.row];
    FController.Model.data := Grid.Cells[7,Grid.row];
    FController.Model.lote := Grid.Cells[8,Grid.row];
    FController.Model.preco_custo := Grid.Cells[9,Grid.row];
    FController.Model.id_conta := Grid.Cells[10,Grid.row];
    FController.Model.nome_produto := Grid.Cells[11,Grid.row];
    FController.Model.click := Grid.Cells[12,Grid.row];
    FController.Model.comissao_alterada := Grid.Cells[13,Grid.row];
    FController.Model.id_dev := Grid.Cells[14,Grid.row];
    FController.Model.id_venda := Grid.Cells[15,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPetiquetadora.LimparTela;  
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

procedure TFrm_ViewERPetiquetadora.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPetiquetadora.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPetiquetadora.Setid_produto(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPetiquetadora.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPetiquetadora.Setcomissao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPetiquetadora.Setcancelada(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPetiquetadora.Setgerada(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPetiquetadora.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPetiquetadora.Setlote(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPetiquetadora.Setpreco_custo(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPetiquetadora.Setid_conta(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPetiquetadora.Setnome_produto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPetiquetadora.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPetiquetadora.Setcomissao_alterada(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPetiquetadora.Setid_dev(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPetiquetadora.Setid_venda(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
