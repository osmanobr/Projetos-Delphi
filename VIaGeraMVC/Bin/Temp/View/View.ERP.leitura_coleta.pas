
unit View.ERP.leitura_bloco;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.leitura_bloco, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPleiturabloco = class(TForm) 
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
    FController : TControllerERPleiturabloco; 
    Fid : Integer;
    Fid_apartamento : Integer;
    Fmedicao_inicial : Double;
    Fmedicao_final : Double;
    Fmetros : Double;
    Fconsumo : Double;
    Ftotal : Double;
    Fdatahora : indefinido;
    Fdatahora_leitura : indefinido;
    Fid_lote : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_apartamento(const Value : Integer);
    procedure Setmedicao_inicial(const Value : Double);
    procedure Setmedicao_final(const Value : Double);
    procedure Setmetros(const Value : Double);
    procedure Setconsumo(const Value : Double);
    procedure Settotal(const Value : Double);
    procedure Setdatahora(const Value : indefinido);
    procedure Setdatahora_leitura(const Value : indefinido);
    procedure Setid_lote(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_apartamento : Integer         read Fid_apartamento    write Fid_apartamento;
    property medicao_inicial : Double         read Fmedicao_inicial    write Fmedicao_inicial;
    property medicao_final : Double         read Fmedicao_final    write Fmedicao_final;
    property metros : Double         read Fmetros    write Fmetros;
    property consumo : Double         read Fconsumo    write Fconsumo;
    property total : Double         read Ftotal    write Ftotal;
    property datahora : indefinido         read Fdatahora    write Fdatahora;
    property datahora_leitura : indefinido         read Fdatahora_leitura    write Fdatahora_leitura;
    property id_lote : Integer         read Fid_lote    write Fid_lote;

  end;

var
  Frm_ViewERPleiturabloco : TFrm_ViewERPleiturabloco; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 10; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_apartamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].medicao_inicial); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].medicao_final); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].metros); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].consumo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].total); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].datahora); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].datahora_leitura); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_lote); 
    end; 
end; 

procedure TFrm_ViewERPleiturabloco.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_apartamento := Edit_id_apartamento.text;
      FController.Model.medicao_inicial := Edit_medicao_inicial.text;
      FController.Model.medicao_final := Edit_medicao_final.text;
      FController.Model.metros := Edit_metros.text;
      FController.Model.consumo := Edit_consumo.text;
      FController.Model.total := Edit_total.text;
      FController.Model.datahora := Edit_datahora.text;
      FController.Model.datahora_leitura := Edit_datahora_leitura.text;
      FController.Model.id_lote := Edit_id_lote.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPleiturabloco.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPleiturabloco.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPleiturabloco.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPleiturabloco.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPleiturabloco.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPleiturabloco.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPleiturabloco.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 10;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_apartamento;  
     Grid.Cells[inttostr(i),0] := medicao_inicial;  
     Grid.Cells[inttostr(i),0] := medicao_final;  
     Grid.Cells[inttostr(i),0] := metros;  
     Grid.Cells[inttostr(i),0] := consumo;  
     Grid.Cells[inttostr(i),0] := total;  
     Grid.Cells[inttostr(i),0] := datahora;  
     Grid.Cells[inttostr(i),0] := datahora_leitura;  
     Grid.Cells[inttostr(i),0] := id_lote;  
end;

procedure TFrm_ViewERPleiturabloco.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPleiturabloco.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPleiturabloco.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_apartamento := Grid.Cells[1,Grid.row];
    FController.Model.medicao_inicial := Grid.Cells[2,Grid.row];
    FController.Model.medicao_final := Grid.Cells[3,Grid.row];
    FController.Model.metros := Grid.Cells[4,Grid.row];
    FController.Model.consumo := Grid.Cells[5,Grid.row];
    FController.Model.total := Grid.Cells[6,Grid.row];
    FController.Model.datahora := Grid.Cells[7,Grid.row];
    FController.Model.datahora_leitura := Grid.Cells[8,Grid.row];
    FController.Model.id_lote := Grid.Cells[9,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPleiturabloco.LimparTela;  
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

procedure TFrm_ViewERPleiturabloco.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleiturabloco.Setid_apartamento(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleiturabloco.Setmedicao_inicial(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleiturabloco.Setmedicao_final(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleiturabloco.Setmetros(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleiturabloco.Setconsumo(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleiturabloco.Settotal(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleiturabloco.Setdatahora(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleiturabloco.Setdatahora_leitura(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleiturabloco.Setid_lote(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
