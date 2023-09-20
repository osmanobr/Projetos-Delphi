
unit View.ERP.movimento_caixa;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.movimento_caixa, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPmovimentocaixa = class(TForm) 
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
    FController : TControllerERPmovimentocaixa; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata : TDateTime;
    Fid_financeira : Integer;
    Fid_pedido : Integer;
    Fid_os : Integer;
    Fid_usuario : Integer;
    Fdocumento : WideString;
    Fparcela : WideString;
    Fid_conta : WideString;
    Fid_forma : Integer;
    Fvalor : Double;
    Fhistorico : WideString;
    Fdebcre : WideString;
    Ftipo_pgto : WideString;
    Fid_compra : Integer;
    Fid_parcela_receber : Integer;
    Fid_conta_receber : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setdata(const Value : TDateTime);
    procedure Setid_financeira(const Value : Integer);
    procedure Setid_pedido(const Value : Integer);
    procedure Setid_os(const Value : Integer);
    procedure Setid_usuario(const Value : Integer);
    procedure Setdocumento(const Value : WideString);
    procedure Setparcela(const Value : WideString);
    procedure Setid_conta(const Value : WideString);
    procedure Setid_forma(const Value : Integer);
    procedure Setvalor(const Value : Double);
    procedure Sethistorico(const Value : WideString);
    procedure Setdebcre(const Value : WideString);
    procedure Settipo_pgto(const Value : WideString);
    procedure Setid_compra(const Value : Integer);
    procedure Setid_parcela_receber(const Value : Integer);
    procedure Setid_conta_receber(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property data : TDateTime         read Fdata    write Fdata;
    property id_financeira : Integer         read Fid_financeira    write Fid_financeira;
    property id_pedido : Integer         read Fid_pedido    write Fid_pedido;
    property id_os : Integer         read Fid_os    write Fid_os;
    property id_usuario : Integer         read Fid_usuario    write Fid_usuario;
    property documento : WideString         read Fdocumento    write Fdocumento;
    property parcela : WideString         read Fparcela    write Fparcela;
    property id_conta : WideString         read Fid_conta    write Fid_conta;
    property id_forma : Integer         read Fid_forma    write Fid_forma;
    property valor : Double         read Fvalor    write Fvalor;
    property historico : WideString         read Fhistorico    write Fhistorico;
    property debcre : WideString         read Fdebcre    write Fdebcre;
    property tipo_pgto : WideString         read Ftipo_pgto    write Ftipo_pgto;
    property id_compra : Integer         read Fid_compra    write Fid_compra;
    property id_parcela_receber : Integer         read Fid_parcela_receber    write Fid_parcela_receber;
    property id_conta_receber : Integer         read Fid_conta_receber    write Fid_conta_receber;

  end;

var
  Frm_ViewERPmovimentocaixa : TFrm_ViewERPmovimentocaixa; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_financeira); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_pedido); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_os); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_usuario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].documento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].parcela); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_conta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_forma); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].historico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].debcre); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo_pgto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_compra); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_parcela_receber); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_conta_receber); 
    end; 
end; 

procedure TFrm_ViewERPmovimentocaixa.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.data := Edit_data.text;
      FController.Model.id_financeira := Edit_id_financeira.text;
      FController.Model.id_pedido := Edit_id_pedido.text;
      FController.Model.id_os := Edit_id_os.text;
      FController.Model.id_usuario := Edit_id_usuario.text;
      FController.Model.documento := Edit_documento.text;
      FController.Model.parcela := Edit_parcela.text;
      FController.Model.id_conta := Edit_id_conta.text;
      FController.Model.id_forma := Edit_id_forma.text;
      FController.Model.valor := Edit_valor.text;
      FController.Model.historico := Edit_historico.text;
      FController.Model.debcre := Edit_debcre.text;
      FController.Model.tipo_pgto := Edit_tipo_pgto.text;
      FController.Model.id_compra := Edit_id_compra.text;
      FController.Model.id_parcela_receber := Edit_id_parcela_receber.text;
      FController.Model.id_conta_receber := Edit_id_conta_receber.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPmovimentocaixa.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPmovimentocaixa.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPmovimentocaixa.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPmovimentocaixa.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPmovimentocaixa.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPmovimentocaixa.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPmovimentocaixa.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 18;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := id_financeira;  
     Grid.Cells[inttostr(i),0] := id_pedido;  
     Grid.Cells[inttostr(i),0] := id_os;  
     Grid.Cells[inttostr(i),0] := id_usuario;  
     Grid.Cells[inttostr(i),0] := documento;  
     Grid.Cells[inttostr(i),0] := parcela;  
     Grid.Cells[inttostr(i),0] := id_conta;  
     Grid.Cells[inttostr(i),0] := id_forma;  
     Grid.Cells[inttostr(i),0] := valor;  
     Grid.Cells[inttostr(i),0] := historico;  
     Grid.Cells[inttostr(i),0] := debcre;  
     Grid.Cells[inttostr(i),0] := tipo_pgto;  
     Grid.Cells[inttostr(i),0] := id_compra;  
     Grid.Cells[inttostr(i),0] := id_parcela_receber;  
     Grid.Cells[inttostr(i),0] := id_conta_receber;  
end;

procedure TFrm_ViewERPmovimentocaixa.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPmovimentocaixa.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPmovimentocaixa.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.data := Grid.Cells[2,Grid.row];
    FController.Model.id_financeira := Grid.Cells[3,Grid.row];
    FController.Model.id_pedido := Grid.Cells[4,Grid.row];
    FController.Model.id_os := Grid.Cells[5,Grid.row];
    FController.Model.id_usuario := Grid.Cells[6,Grid.row];
    FController.Model.documento := Grid.Cells[7,Grid.row];
    FController.Model.parcela := Grid.Cells[8,Grid.row];
    FController.Model.id_conta := Grid.Cells[9,Grid.row];
    FController.Model.id_forma := Grid.Cells[10,Grid.row];
    FController.Model.valor := Grid.Cells[11,Grid.row];
    FController.Model.historico := Grid.Cells[12,Grid.row];
    FController.Model.debcre := Grid.Cells[13,Grid.row];
    FController.Model.tipo_pgto := Grid.Cells[14,Grid.row];
    FController.Model.id_compra := Grid.Cells[15,Grid.row];
    FController.Model.id_parcela_receber := Grid.Cells[16,Grid.row];
    FController.Model.id_conta_receber := Grid.Cells[17,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPmovimentocaixa.LimparTela;  
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

procedure TFrm_ViewERPmovimentocaixa.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentocaixa.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentocaixa.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentocaixa.Setid_financeira(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentocaixa.Setid_pedido(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentocaixa.Setid_os(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentocaixa.Setid_usuario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentocaixa.Setdocumento(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentocaixa.Setparcela(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentocaixa.Setid_conta(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentocaixa.Setid_forma(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentocaixa.Setvalor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentocaixa.Sethistorico(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentocaixa.Setdebcre(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentocaixa.Settipo_pgto(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentocaixa.Setid_compra(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentocaixa.Setid_parcela_receber(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentocaixa.Setid_conta_receber(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
