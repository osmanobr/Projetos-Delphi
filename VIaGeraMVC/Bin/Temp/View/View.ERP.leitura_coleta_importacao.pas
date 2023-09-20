
unit View.ERP.leitura_coleta_foto_importacao;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.leitura_coleta_foto_importacao, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPleituracoletafotoimportacao = class(TForm) 
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
    FController : TControllerERPleituracoletafotoimportacao; 
    Fid : Integer;
    Fid_coleta : Integer;
    Fid_apartamento : Integer;
    Fmedicao : Double;
    Fdatahora : indefinido;
    Fdata_importacao : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_coleta(const Value : Integer);
    procedure Setid_apartamento(const Value : Integer);
    procedure Setmedicao(const Value : Double);
    procedure Setdatahora(const Value : indefinido);
    procedure Setdata_importacao(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property id_coleta : Integer         read Fid_coleta    write Fid_coleta;
    property id_apartamento : Integer         read Fid_apartamento    write Fid_apartamento;
    property medicao : Double         read Fmedicao    write Fmedicao;
    property datahora : indefinido         read Fdatahora    write Fdatahora;
    property data_importacao : indefinido         read Fdata_importacao    write Fdata_importacao;

  end;

var
  Frm_ViewERPleituracoletafotoimportacao : TFrm_ViewERPleituracoletafotoimportacao; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 6; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_coleta); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_apartamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].medicao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].datahora); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_importacao); 
    end; 
end; 

procedure TFrm_ViewERPleituracoletafotoimportacao.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_coleta := Edit_id_coleta.text;
      FController.Model.id_apartamento := Edit_id_apartamento.text;
      FController.Model.medicao := Edit_medicao.text;
      FController.Model.datahora := Edit_datahora.text;
      FController.Model.data_importacao := Edit_data_importacao.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPleituracoletafotoimportacao.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPleituracoletafotoimportacao.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPleituracoletafotoimportacao.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPleituracoletafotoimportacao.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPleituracoletafotoimportacao.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPleituracoletafotoimportacao.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPleituracoletafotoimportacao.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 6;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_coleta;  
     Grid.Cells[inttostr(i),0] := id_apartamento;  
     Grid.Cells[inttostr(i),0] := medicao;  
     Grid.Cells[inttostr(i),0] := datahora;  
     Grid.Cells[inttostr(i),0] := data_importacao;  
end;

procedure TFrm_ViewERPleituracoletafotoimportacao.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPleituracoletafotoimportacao.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPleituracoletafotoimportacao.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_coleta := Grid.Cells[1,Grid.row];
    FController.Model.id_apartamento := Grid.Cells[2,Grid.row];
    FController.Model.medicao := Grid.Cells[3,Grid.row];
    FController.Model.datahora := Grid.Cells[4,Grid.row];
    FController.Model.data_importacao := Grid.Cells[5,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPleituracoletafotoimportacao.LimparTela;  
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

procedure TFrm_ViewERPleituracoletafotoimportacao.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituracoletafotoimportacao.Setid_coleta(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituracoletafotoimportacao.Setid_apartamento(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituracoletafotoimportacao.Setmedicao(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituracoletafotoimportacao.Setdatahora(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituracoletafotoimportacao.Setdata_importacao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
