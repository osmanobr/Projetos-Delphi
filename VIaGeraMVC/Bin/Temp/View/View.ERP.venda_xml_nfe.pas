
unit View.ERP.venda_xml;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.venda_xml, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPvendaxml = class(TForm) 
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
    FController : TControllerERPvendaxml; 
    Fid : Integer;
    Fid_venda : Integer;
    Fnfe : indefinido;
    Fxml : indefinido;
    Fpendente : Boolean;
    Ffalha : indefinido;
    Fclick : Boolean;
    Ftipo : Integer;
    Fenviado_servidor : Boolean;
    Fid_venda_referencia : Integer;
    Fid_devolucao_referencia : Integer;
    Fid_venda_entrega : Integer;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_venda(const Value : Integer);
    procedure Setnfe(const Value : indefinido);
    procedure Setxml(const Value : indefinido);
    procedure Setpendente(const Value : Boolean);
    procedure Setfalha(const Value : indefinido);
    procedure Setclick(const Value : Boolean);
    procedure Settipo(const Value : Integer);
    procedure Setenviado_servidor(const Value : Boolean);
    procedure Setid_venda_referencia(const Value : Integer);
    procedure Setid_devolucao_referencia(const Value : Integer);
    procedure Setid_venda_entrega(const Value : Integer);

  public

    property id : Integer         read Fid    write Fid;
    property id_venda : Integer         read Fid_venda    write Fid_venda;
    property nfe : indefinido         read Fnfe    write Fnfe;
    property xml : indefinido         read Fxml    write Fxml;
    property pendente : Boolean         read Fpendente    write Fpendente;
    property falha : indefinido         read Ffalha    write Ffalha;
    property click : Boolean         read Fclick    write Fclick;
    property tipo : Integer         read Ftipo    write Ftipo;
    property enviado_servidor : Boolean         read Fenviado_servidor    write Fenviado_servidor;
    property id_venda_referencia : Integer         read Fid_venda_referencia    write Fid_venda_referencia;
    property id_devolucao_referencia : Integer         read Fid_devolucao_referencia    write Fid_devolucao_referencia;
    property id_venda_entrega : Integer         read Fid_venda_entrega    write Fid_venda_entrega;

  end;

var
  Frm_ViewERPvendaxml : TFrm_ViewERPvendaxml; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 12; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfe); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].xml); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].pendente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].falha); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].tipo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].enviado_servidor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda_referencia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_devolucao_referencia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda_entrega); 
    end; 
end; 

procedure TFrm_ViewERPvendaxml.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_venda := Edit_id_venda.text;
      FController.Model.nfe := Edit_nfe.text;
      FController.Model.xml := Edit_xml.text;
      FController.Model.pendente := Edit_pendente.text;
      FController.Model.falha := Edit_falha.text;
      FController.Model.click := Edit_click.text;
      FController.Model.tipo := Edit_tipo.text;
      FController.Model.enviado_servidor := Edit_enviado_servidor.text;
      FController.Model.id_venda_referencia := Edit_id_venda_referencia.text;
      FController.Model.id_devolucao_referencia := Edit_id_devolucao_referencia.text;
      FController.Model.id_venda_entrega := Edit_id_venda_entrega.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPvendaxml.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPvendaxml.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPvendaxml.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPvendaxml.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPvendaxml.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPvendaxml.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPvendaxml.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 12;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_venda;  
     Grid.Cells[inttostr(i),0] := nfe;  
     Grid.Cells[inttostr(i),0] := xml;  
     Grid.Cells[inttostr(i),0] := pendente;  
     Grid.Cells[inttostr(i),0] := falha;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := tipo;  
     Grid.Cells[inttostr(i),0] := enviado_servidor;  
     Grid.Cells[inttostr(i),0] := id_venda_referencia;  
     Grid.Cells[inttostr(i),0] := id_devolucao_referencia;  
     Grid.Cells[inttostr(i),0] := id_venda_entrega;  
end;

procedure TFrm_ViewERPvendaxml.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPvendaxml.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPvendaxml.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_venda := Grid.Cells[1,Grid.row];
    FController.Model.nfe := Grid.Cells[2,Grid.row];
    FController.Model.xml := Grid.Cells[3,Grid.row];
    FController.Model.pendente := Grid.Cells[4,Grid.row];
    FController.Model.falha := Grid.Cells[5,Grid.row];
    FController.Model.click := Grid.Cells[6,Grid.row];
    FController.Model.tipo := Grid.Cells[7,Grid.row];
    FController.Model.enviado_servidor := Grid.Cells[8,Grid.row];
    FController.Model.id_venda_referencia := Grid.Cells[9,Grid.row];
    FController.Model.id_devolucao_referencia := Grid.Cells[10,Grid.row];
    FController.Model.id_venda_entrega := Grid.Cells[11,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPvendaxml.LimparTela;  
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

procedure TFrm_ViewERPvendaxml.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxml.Setid_venda(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxml.Setnfe(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxml.Setxml(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxml.Setpendente(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxml.Setfalha(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxml.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxml.Settipo(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxml.Setenviado_servidor(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxml.Setid_venda_referencia(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxml.Setid_devolucao_referencia(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendaxml.Setid_venda_entrega(const Value: Integer);  
begin    
  ativo:=value;  
end;  
end.
