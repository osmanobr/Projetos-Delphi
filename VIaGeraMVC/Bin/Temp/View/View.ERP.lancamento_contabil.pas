
unit View.ERP.kit;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.kit, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPkit = class(TForm) 
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
    FController : TControllerERPkit; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fdata : TDateTime;
    Foperacao : WideString;
    Fconta : WideString;
    Fdebcre : WideString;
    Fvalor : Double;
    Fid_venda : Integer;
    Fid_compra : Integer;
    Fid_caixa : Integer;
    Fid_banco : Integer;
    Fid_receber : Integer;
    Fid_pagar : Integer;
    Fhistorico : WideString;
    Fid_movimento : Integer;
    Fid_cupons : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setdata(const Value : TDateTime);
    procedure Setoperacao(const Value : WideString);
    procedure Setconta(const Value : WideString);
    procedure Setdebcre(const Value : WideString);
    procedure Setvalor(const Value : Double);
    procedure Setid_venda(const Value : Integer);
    procedure Setid_compra(const Value : Integer);
    procedure Setid_caixa(const Value : Integer);
    procedure Setid_banco(const Value : Integer);
    procedure Setid_receber(const Value : Integer);
    procedure Setid_pagar(const Value : Integer);
    procedure Sethistorico(const Value : WideString);
    procedure Setid_movimento(const Value : Integer);
    procedure Setid_cupons(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property data : TDateTime         read Fdata    write Fdata;
    property operacao : WideString         read Foperacao    write Foperacao;
    property conta : WideString         read Fconta    write Fconta;
    property debcre : WideString         read Fdebcre    write Fdebcre;
    property valor : Double         read Fvalor    write Fvalor;
    property id_venda : Integer         read Fid_venda    write Fid_venda;
    property id_compra : Integer         read Fid_compra    write Fid_compra;
    property id_caixa : Integer         read Fid_caixa    write Fid_caixa;
    property id_banco : Integer         read Fid_banco    write Fid_banco;
    property id_receber : Integer         read Fid_receber    write Fid_receber;
    property id_pagar : Integer         read Fid_pagar    write Fid_pagar;
    property historico : WideString         read Fhistorico    write Fhistorico;
    property id_movimento : Integer         read Fid_movimento    write Fid_movimento;
    property id_cupons : Integer         read Fid_cupons    write Fid_cupons;

  end;

var
  Frm_ViewERPkit : TFrm_ViewERPkit; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].operacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].conta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].debcre); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_compra); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_banco); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_receber); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_pagar); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].historico); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_movimento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cupons); 
    end; 
end; 

procedure TFrm_ViewERPkit.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.data := Edit_data.text;
      FController.Model.operacao := Edit_operacao.text;
      FController.Model.conta := Edit_conta.text;
      FController.Model.debcre := Edit_debcre.text;
      FController.Model.valor := Edit_valor.text;
      FController.Model.id_venda := Edit_id_venda.text;
      FController.Model.id_compra := Edit_id_compra.text;
      FController.Model.id_caixa := Edit_id_caixa.text;
      FController.Model.id_banco := Edit_id_banco.text;
      FController.Model.id_receber := Edit_id_receber.text;
      FController.Model.id_pagar := Edit_id_pagar.text;
      FController.Model.historico := Edit_historico.text;
      FController.Model.id_movimento := Edit_id_movimento.text;
      FController.Model.id_cupons := Edit_id_cupons.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPkit.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPkit.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPkit.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPkit.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPkit.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPkit.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPkit.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 16;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := operacao;  
     Grid.Cells[inttostr(i),0] := conta;  
     Grid.Cells[inttostr(i),0] := debcre;  
     Grid.Cells[inttostr(i),0] := valor;  
     Grid.Cells[inttostr(i),0] := id_venda;  
     Grid.Cells[inttostr(i),0] := id_compra;  
     Grid.Cells[inttostr(i),0] := id_caixa;  
     Grid.Cells[inttostr(i),0] := id_banco;  
     Grid.Cells[inttostr(i),0] := id_receber;  
     Grid.Cells[inttostr(i),0] := id_pagar;  
     Grid.Cells[inttostr(i),0] := historico;  
     Grid.Cells[inttostr(i),0] := id_movimento;  
     Grid.Cells[inttostr(i),0] := id_cupons;  
end;

procedure TFrm_ViewERPkit.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPkit.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPkit.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.data := Grid.Cells[2,Grid.row];
    FController.Model.operacao := Grid.Cells[3,Grid.row];
    FController.Model.conta := Grid.Cells[4,Grid.row];
    FController.Model.debcre := Grid.Cells[5,Grid.row];
    FController.Model.valor := Grid.Cells[6,Grid.row];
    FController.Model.id_venda := Grid.Cells[7,Grid.row];
    FController.Model.id_compra := Grid.Cells[8,Grid.row];
    FController.Model.id_caixa := Grid.Cells[9,Grid.row];
    FController.Model.id_banco := Grid.Cells[10,Grid.row];
    FController.Model.id_receber := Grid.Cells[11,Grid.row];
    FController.Model.id_pagar := Grid.Cells[12,Grid.row];
    FController.Model.historico := Grid.Cells[13,Grid.row];
    FController.Model.id_movimento := Grid.Cells[14,Grid.row];
    FController.Model.id_cupons := Grid.Cells[15,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPkit.LimparTela;  
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

procedure TFrm_ViewERPkit.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPkit.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPkit.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPkit.Setoperacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPkit.Setconta(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPkit.Setdebcre(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPkit.Setvalor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPkit.Setid_venda(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPkit.Setid_compra(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPkit.Setid_caixa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPkit.Setid_banco(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPkit.Setid_receber(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPkit.Setid_pagar(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPkit.Sethistorico(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPkit.Setid_movimento(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPkit.Setid_cupons(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
