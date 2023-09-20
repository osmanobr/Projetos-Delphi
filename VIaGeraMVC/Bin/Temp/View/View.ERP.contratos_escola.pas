
unit View.ERP.contrato_licitacao_item;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.contrato_licitacao_item, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPcontratolicitacaoitem = class(TForm) 
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
    FController : TControllerERPcontratolicitacaoitem; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_dependente : Integer;
    Fmodalidade : WideString;
    Fvalor : Double;
    Fdia_mensalidade : Integer;
    Fparcela : Integer;
    Fserie : Integer;
    Fdata : TDateTime;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_dependente(const Value : Integer);
    procedure Setmodalidade(const Value : WideString);
    procedure Setvalor(const Value : Double);
    procedure Setdia_mensalidade(const Value : Integer);
    procedure Setparcela(const Value : Integer);
    procedure Setserie(const Value : Integer);
    procedure Setdata(const Value : TDateTime);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_dependente : Integer         read Fid_dependente    write Fid_dependente;
    property modalidade : WideString         read Fmodalidade    write Fmodalidade;
    property valor : Double         read Fvalor    write Fvalor;
    property dia_mensalidade : Integer         read Fdia_mensalidade    write Fdia_mensalidade;
    property parcela : Integer         read Fparcela    write Fparcela;
    property serie : Integer         read Fserie    write Fserie;
    property data : TDateTime         read Fdata    write Fdata;

  end;

var
  Frm_ViewERPcontratolicitacaoitem : TFrm_ViewERPcontratolicitacaoitem; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 9; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_dependente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].modalidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].valor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dia_mensalidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].parcela); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].serie); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
    end; 
end; 

procedure TFrm_ViewERPcontratolicitacaoitem.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_dependente := Edit_id_dependente.text;
      FController.Model.modalidade := Edit_modalidade.text;
      FController.Model.valor := Edit_valor.text;
      FController.Model.dia_mensalidade := Edit_dia_mensalidade.text;
      FController.Model.parcela := Edit_parcela.text;
      FController.Model.serie := Edit_serie.text;
      FController.Model.data := Edit_data.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPcontratolicitacaoitem.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPcontratolicitacaoitem.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPcontratolicitacaoitem.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPcontratolicitacaoitem.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPcontratolicitacaoitem.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPcontratolicitacaoitem.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPcontratolicitacaoitem.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 9;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_dependente;  
     Grid.Cells[inttostr(i),0] := modalidade;  
     Grid.Cells[inttostr(i),0] := valor;  
     Grid.Cells[inttostr(i),0] := dia_mensalidade;  
     Grid.Cells[inttostr(i),0] := parcela;  
     Grid.Cells[inttostr(i),0] := serie;  
     Grid.Cells[inttostr(i),0] := data;  
end;

procedure TFrm_ViewERPcontratolicitacaoitem.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPcontratolicitacaoitem.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPcontratolicitacaoitem.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.id_dependente := Grid.Cells[2,Grid.row];
    FController.Model.modalidade := Grid.Cells[3,Grid.row];
    FController.Model.valor := Grid.Cells[4,Grid.row];
    FController.Model.dia_mensalidade := Grid.Cells[5,Grid.row];
    FController.Model.parcela := Grid.Cells[6,Grid.row];
    FController.Model.serie := Grid.Cells[7,Grid.row];
    FController.Model.data := Grid.Cells[8,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPcontratolicitacaoitem.LimparTela;  
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

procedure TFrm_ViewERPcontratolicitacaoitem.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontratolicitacaoitem.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontratolicitacaoitem.Setid_dependente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontratolicitacaoitem.Setmodalidade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontratolicitacaoitem.Setvalor(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontratolicitacaoitem.Setdia_mensalidade(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontratolicitacaoitem.Setparcela(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontratolicitacaoitem.Setserie(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontratolicitacaoitem.Setdata(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
end.
