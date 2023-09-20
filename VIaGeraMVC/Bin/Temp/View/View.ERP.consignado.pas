
unit View.ERP.compra_serie;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.compra_serie, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPcompraserie = class(TForm) 
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
    FController : TControllerERPcompraserie; 
    Fid : Integer;
    Fid_cliente : Integer;
    Fnome_cliente : WideString;
    Fdata : indefinido;
    Fdata_prevista_devolucao : indefinido;
    Fdata_devolucao : indefinido;
    Fdias : Integer;
    Fmes : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_cliente(const Value : Integer);
    procedure Setnome_cliente(const Value : WideString);
    procedure Setdata(const Value : indefinido);
    procedure Setdata_prevista_devolucao(const Value : indefinido);
    procedure Setdata_devolucao(const Value : indefinido);
    procedure Setdias(const Value : Integer);
    procedure Setmes(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property nome_cliente : WideString         read Fnome_cliente    write Fnome_cliente;
    property data : indefinido         read Fdata    write Fdata;
    property data_prevista_devolucao : indefinido         read Fdata_prevista_devolucao    write Fdata_prevista_devolucao;
    property data_devolucao : indefinido         read Fdata_devolucao    write Fdata_devolucao;
    property dias : Integer         read Fdias    write Fdias;
    property mes : Integer         read Fmes    write Fmes;

  end;

var
  Frm_ViewERPcompraserie : TFrm_ViewERPcompraserie; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 8; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nome_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_prevista_devolucao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_devolucao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].dias); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].mes); 
    end; 
end; 

procedure TFrm_ViewERPcompraserie.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.nome_cliente := Edit_nome_cliente.text;
      FController.Model.data := Edit_data.text;
      FController.Model.data_prevista_devolucao := Edit_data_prevista_devolucao.text;
      FController.Model.data_devolucao := Edit_data_devolucao.text;
      FController.Model.dias := Edit_dias.text;
      FController.Model.mes := Edit_mes.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPcompraserie.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPcompraserie.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPcompraserie.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPcompraserie.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPcompraserie.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPcompraserie.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPcompraserie.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 8;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := nome_cliente;  
     Grid.Cells[inttostr(i),0] := data;  
     Grid.Cells[inttostr(i),0] := data_prevista_devolucao;  
     Grid.Cells[inttostr(i),0] := data_devolucao;  
     Grid.Cells[inttostr(i),0] := dias;  
     Grid.Cells[inttostr(i),0] := mes;  
end;

procedure TFrm_ViewERPcompraserie.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPcompraserie.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPcompraserie.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_cliente := Grid.Cells[1,Grid.row];
    FController.Model.nome_cliente := Grid.Cells[2,Grid.row];
    FController.Model.data := Grid.Cells[3,Grid.row];
    FController.Model.data_prevista_devolucao := Grid.Cells[4,Grid.row];
    FController.Model.data_devolucao := Grid.Cells[5,Grid.row];
    FController.Model.dias := Grid.Cells[6,Grid.row];
    FController.Model.mes := Grid.Cells[7,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPcompraserie.LimparTela;  
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

procedure TFrm_ViewERPcompraserie.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompraserie.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompraserie.Setnome_cliente(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompraserie.Setdata(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompraserie.Setdata_prevista_devolucao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompraserie.Setdata_devolucao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompraserie.Setdias(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcompraserie.Setmes(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
