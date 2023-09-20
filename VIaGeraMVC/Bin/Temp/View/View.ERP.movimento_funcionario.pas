
unit View.ERP.movimento_financeira;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.movimento_financeira, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPmovimentofinanceira = class(TForm) 
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
    FController : TControllerERPmovimentofinanceira; 
    Fid : Integer;
    Fdata : TDateTime;
    Fid_funcionario : Integer;
    Fnome : WideString;
    Fdebcre : WideString;
    Fvalor : Double;
    Fobs : WideString;
    Fclick : Boolean;
    Fdata_baixa : TDateTime;
    Fsituacao : WideString;
    Foperacao : WideString;
    Fid_operacao : Integer;
    Fid_conta : WideString;
    Fid_conta_pagar : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setdata(const Value : TDateTime);
    procedure Setid_funcionario(const Value : Integer);
    procedure Setnome(const Value : WideString);
    procedure Setdebcre(const Value : WideString);
    procedure Setvalor(const Value : Double);
    procedure Setobs(const Value : WideString);
    procedure Setclick(const Value : Boolean);
    procedure Setdata_baixa(const Value : TDateTime);
    procedure Setsituacao(const Value : WideString);
    procedure Setoperacao(const Value : WideString);
    procedure Setid_operacao(const Value : Integer);
    procedure Setid_conta(const Value : WideString);
    procedure Setid_conta_pagar(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property data : TDateTime         read Fdata    write Fdata;
    property id_funcionario : Integer         read Fid_funcionario    write Fid_funcionario;
    property nome : WideString         read Fnome    write Fnome;
    property debcre : WideString         read Fdebcre    write Fdebcre;
    property valor : Double         read Fvalor    write Fvalor;
    property obs : WideString         read Fobs    write Fobs;
    property click : Boolean         read Fclick    write Fclick;
    property data_baixa : TDateTime         read Fdata_baixa    write Fdata_baixa;
    property situacao : WideString         read Fsituacao    write Fsituacao;
    property operacao : WideString         read Foperacao    write Foperacao;
    property id_operacao : Integer         read Fid_operacao    write Fid_operacao;
    property id_conta : WideString         read Fid_conta    write Fid_conta;
    property id_conta_pagar : Integer         read Fid_conta_pagar    write Fid_conta_pagar;

  end;

var
  Frm_ViewERPmovimentofinanceira : TFrm_ViewERPmovimentofinanceira; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 14; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_funcionario); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].debcre); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_baixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].situacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].operacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_operacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_conta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_conta_pagar); 
    end; 
end; 

procedure TFrm_ViewERPmovimentofinanceira.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.data := Edit_data.text;
      FController.Model.id_funcionario := Edit_id_funcionario.text;
      FController.Model.nome := Edit_nome.text;
      FController.Model.debcre := Edit_debcre.text;
      FController.Model.valor := Edit_valor.text;
      FController.Model.obs := Edit_obs.text;
      FController.Model.click := Edit_click.text;
      FController.Model.data_baixa := Edit_data_baixa.text;
      FController.Model.situacao := Edit_situacao.text;
      FController.Model.operacao := Edit_operacao.text;
      FController.Model.id_operacao := Edit_id_operacao.text;
      FController.Model.id_conta := Edit_id_conta.text;
      FController.Model.id_conta_pagar := Edit_id_conta_pagar.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPmovimentofinanceira.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPmovimentofinanceira.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPmovimentofinanceira.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPmovimentofinanceira.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPmovimentofinanceira.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPmovimentofinanceira.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPmovimentofinanceira.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 14;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := id_funcionario;  
     Grid.Cells[inttostr(i),0] := nome;  
     Grid.Cells[inttostr(i),0] := debcre;  
     Grid.Cells[inttostr(i),0] := valor;  
     Grid.Cells[inttostr(i),0] := obs;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := data_baixa;  
     Grid.Cells[inttostr(i),0] := situacao;  
     Grid.Cells[inttostr(i),0] := operacao;  
     Grid.Cells[inttostr(i),0] := id_operacao;  
     Grid.Cells[inttostr(i),0] := id_conta;  
     Grid.Cells[inttostr(i),0] := id_conta_pagar;  
end;

procedure TFrm_ViewERPmovimentofinanceira.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPmovimentofinanceira.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPmovimentofinanceira.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.data := Grid.Cells[1,Grid.row];
    FController.Model.id_funcionario := Grid.Cells[2,Grid.row];
    FController.Model.nome := Grid.Cells[3,Grid.row];
    FController.Model.debcre := Grid.Cells[4,Grid.row];
    FController.Model.valor := Grid.Cells[5,Grid.row];
    FController.Model.obs := Grid.Cells[6,Grid.row];
    FController.Model.click := Grid.Cells[7,Grid.row];
    FController.Model.data_baixa := Grid.Cells[8,Grid.row];
    FController.Model.situacao := Grid.Cells[9,Grid.row];
    FController.Model.operacao := Grid.Cells[10,Grid.row];
    FController.Model.id_operacao := Grid.Cells[11,Grid.row];
    FController.Model.id_conta := Grid.Cells[12,Grid.row];
    FController.Model.id_conta_pagar := Grid.Cells[13,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPmovimentofinanceira.LimparTela;  
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

procedure TFrm_ViewERPmovimentofinanceira.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentofinanceira.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentofinanceira.Setid_funcionario(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentofinanceira.Setnome(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentofinanceira.Setdebcre(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentofinanceira.Setvalor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentofinanceira.Setobs(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentofinanceira.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentofinanceira.Setdata_baixa(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentofinanceira.Setsituacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentofinanceira.Setoperacao(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentofinanceira.Setid_operacao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentofinanceira.Setid_conta(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPmovimentofinanceira.Setid_conta_pagar(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
