
unit View.ERP.venda_item_serie;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.venda_item_serie, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPvendaitemserie = class(TForm) 
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
    FController : TControllerERPvendaitemserie; 
    Fid : Integer;
    Fid_empresa : Integer;
    Fid_venda : Integer;
    Fid_devolucao : Integer;
    Fid_venda_entrega : Integer;
    Fnfe : WideString;
    Fnfce : WideString;
    Fprotocolo_venda : WideString;
    Fprotocolo_cancelamento : WideString;
    Fdatahora : indefinido;
    Fenviado_servidor : Boolean;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_empresa(const Value : Integer);
    procedure Setid_venda(const Value : Integer);
    procedure Setid_devolucao(const Value : Integer);
    procedure Setid_venda_entrega(const Value : Integer);
    procedure Setnfe(const Value : WideString);
    procedure Setnfce(const Value : WideString);
    procedure Setprotocolo_venda(const Value : WideString);
    procedure Setprotocolo_cancelamento(const Value : WideString);
    procedure Setdatahora(const Value : indefinido);
    procedure Setenviado_servidor(const Value : Boolean);

  public

    property id : Integer         read Fid    write Fid;
    property id_empresa : Integer         read Fid_empresa    write Fid_empresa;
    property id_venda : Integer         read Fid_venda    write Fid_venda;
    property id_devolucao : Integer         read Fid_devolucao    write Fid_devolucao;
    property id_venda_entrega : Integer         read Fid_venda_entrega    write Fid_venda_entrega;
    property nfe : WideString         read Fnfe    write Fnfe;
    property nfce : WideString         read Fnfce    write Fnfce;
    property protocolo_venda : WideString         read Fprotocolo_venda    write Fprotocolo_venda;
    property protocolo_cancelamento : WideString         read Fprotocolo_cancelamento    write Fprotocolo_cancelamento;
    property datahora : indefinido         read Fdatahora    write Fdatahora;
    property enviado_servidor : Boolean         read Fenviado_servidor    write Fenviado_servidor;

  end;

var
  Frm_ViewERPvendaitemserie : TFrm_ViewERPvendaitemserie; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 11; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_empresa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_devolucao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda_entrega); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfe); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfce); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].protocolo_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].protocolo_cancelamento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].datahora); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].enviado_servidor); 
    end; 
end; 

procedure TFrm_ViewERPvendaitemserie.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_empresa := Edit_id_empresa.text;
      FController.Model.id_venda := Edit_id_venda.text;
      FController.Model.id_devolucao := Edit_id_devolucao.text;
      FController.Model.id_venda_entrega := Edit_id_venda_entrega.text;
      FController.Model.nfe := Edit_nfe.text;
      FController.Model.nfce := Edit_nfce.text;
      FController.Model.protocolo_venda := Edit_protocolo_venda.text;
      FController.Model.protocolo_cancelamento := Edit_protocolo_cancelamento.text;
      FController.Model.datahora := Edit_datahora.text;
      FController.Model.enviado_servidor := Edit_enviado_servidor.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPvendaitemserie.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPvendaitemserie.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPvendaitemserie.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPvendaitemserie.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPvendaitemserie.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPvendaitemserie.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPvendaitemserie.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 11;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_empresa;  
     Grid.Cells[inttostr(i),0] := id_venda;  
     Grid.Cells[inttostr(i),0] := id_devolucao;  
     Grid.Cells[inttostr(i),0] := id_venda_entrega;  
     Grid.Cells[inttostr(i),0] := nfe;  
     Grid.Cells[inttostr(i),0] := nfce;  
     Grid.Cells[inttostr(i),0] := protocolo_venda;  
     Grid.Cells[inttostr(i),0] := protocolo_cancelamento;  
     Grid.Cells[inttostr(i),0] := datahora;  
     Grid.Cells[inttostr(i),0] := enviado_servidor;  
end;

procedure TFrm_ViewERPvendaitemserie.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPvendaitemserie.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPvendaitemserie.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_empresa := Grid.Cells[1,Grid.row];
    FController.Model.id_venda := Grid.Cells[2,Grid.row];
    FController.Model.id_devolucao := Grid.Cells[3,Grid.row];
    FController.Model.id_venda_entrega := Grid.Cells[4,Grid.row];
    FController.Model.nfe := Grid.Cells[5,Grid.row];
    FController.Model.nfce := Grid.Cells[6,Grid.row];
    FController.Model.protocolo_venda := Grid.Cells[7,Grid.row];
    FController.Model.protocolo_cancelamento := Grid.Cells[8,Grid.row];
    FController.Model.datahora := Grid.Cells[9,Grid.row];
    FController.Model.enviado_servidor := Grid.Cells[10,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPvendaitemserie.LimparTela;  
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

procedure TFrm_ViewERPvendaitemserie.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaitemserie.Setid_empresa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaitemserie.Setid_venda(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaitemserie.Setid_devolucao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaitemserie.Setid_venda_entrega(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaitemserie.Setnfe(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaitemserie.Setnfce(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaitemserie.Setprotocolo_venda(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaitemserie.Setprotocolo_cancelamento(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaitemserie.Setdatahora(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaitemserie.Setenviado_servidor(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
