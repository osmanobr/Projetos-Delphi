
unit View.ERP.fabricacao_funcionario;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.fabricacao_funcionario, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPfabricacaofuncionario = class(TForm) 
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
    FController : TControllerERPfabricacaofuncionario; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_fabricacao : Integer;
    Fid_insumo : Integer;
    Fnome_insumo : WideString;
    Fquantidade : Double;
    Ftotal_insumo : Double;
    Funidade : WideString;
    Fid_usuario_alteracao : Integer;
    Fcancelada : WideString;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_fabricacao(const Value : Integer);
    procedure Setid_insumo(const Value : Integer);
    procedure Setnome_insumo(const Value : WideString);
    procedure Setquantidade(const Value : Double);
    procedure Settotal_insumo(const Value : Double);
    procedure Setunidade(const Value : WideString);
    procedure Setid_usuario_alteracao(const Value : Integer);
    procedure Setcancelada(const Value : WideString);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_fabricacao : Integer         read Fid_fabricacao    write Fid_fabricacao;
    property id_insumo : Integer         read Fid_insumo    write Fid_insumo;
    property nome_insumo : WideString         read Fnome_insumo    write Fnome_insumo;
    property quantidade : Double         read Fquantidade    write Fquantidade;
    property total_insumo : Double         read Ftotal_insumo    write Ftotal_insumo;
    property unidade : WideString         read Funidade    write Funidade;
    property id_usuario_alteracao : Integer         read Fid_usuario_alteracao    write Fid_usuario_alteracao;
    property cancelada : WideString         read Fcancelada    write Fcancelada;

  end;

var
  Frm_ViewERPfabricacaofuncionario : TFrm_ViewERPfabricacaofuncionario; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_fabricacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_insumo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_insumo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].quantidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].total_insumo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].unidade); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_usuario_alteracao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cancelada); 
    end; 
end; 

procedure TFrm_ViewERPfabricacaofuncionario.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_fabricacao := Edit_id_fabricacao.text;
      FController.Model.id_insumo := Edit_id_insumo.text;
      FController.Model.nome_insumo := Edit_nome_insumo.text;
      FController.Model.quantidade := Edit_quantidade.text;
      FController.Model.total_insumo := Edit_total_insumo.text;
      FController.Model.unidade := Edit_unidade.text;
      FController.Model.id_usuario_alteracao := Edit_id_usuario_alteracao.text;
      FController.Model.cancelada := Edit_cancelada.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPfabricacaofuncionario.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPfabricacaofuncionario.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPfabricacaofuncionario.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPfabricacaofuncionario.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPfabricacaofuncionario.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPfabricacaofuncionario.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPfabricacaofuncionario.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 10;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_fabricacao;  
     Grid.Cells[inttostr(i),0] := id_insumo;  
     Grid.Cells[inttostr(i),0] := nome_insumo;  
     Grid.Cells[inttostr(i),0] := quantidade;  
     Grid.Cells[inttostr(i),0] := total_insumo;  
     Grid.Cells[inttostr(i),0] := unidade;  
     Grid.Cells[inttostr(i),0] := id_usuario_alteracao;  
     Grid.Cells[inttostr(i),0] := cancelada;  
end;

procedure TFrm_ViewERPfabricacaofuncionario.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPfabricacaofuncionario.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPfabricacaofuncionario.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.id_fabricacao := Grid.Cells[2,Grid.row];
    FController.Model.id_insumo := Grid.Cells[3,Grid.row];
    FController.Model.nome_insumo := Grid.Cells[4,Grid.row];
    FController.Model.quantidade := Grid.Cells[5,Grid.row];
    FController.Model.total_insumo := Grid.Cells[6,Grid.row];
    FController.Model.unidade := Grid.Cells[7,Grid.row];
    FController.Model.id_usuario_alteracao := Grid.Cells[8,Grid.row];
    FController.Model.cancelada := Grid.Cells[9,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPfabricacaofuncionario.LimparTela;  
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

procedure TFrm_ViewERPfabricacaofuncionario.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfabricacaofuncionario.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfabricacaofuncionario.Setid_fabricacao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfabricacaofuncionario.Setid_insumo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfabricacaofuncionario.Setnome_insumo(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfabricacaofuncionario.Setquantidade(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfabricacaofuncionario.Settotal_insumo(const Value: Double);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfabricacaofuncionario.Setunidade(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfabricacaofuncionario.Setid_usuario_alteracao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPfabricacaofuncionario.Setcancelada(const Value: WideString);  
begin    
  ativo:=value;  
end;  
end.
