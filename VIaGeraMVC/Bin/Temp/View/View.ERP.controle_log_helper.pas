
unit View.ERP.controle_envio_email_anexo;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.controle_envio_email_anexo, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPcontroleenvioemailanexo = class(TForm) 
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
    FController : TControllerERPcontroleenvioemailanexo; 
    Fid : Integer;
    Flog : indefinido;
    Fid_venda_entrega : Integer;
    Fid_devolucao : Integer;
    Fid_venda_xml : Integer;
    Fid_venda_xml_nfe : Integer;
    Fid_venda_cancelada : Integer;
    Fsolucionado : Boolean;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setlog(const Value : indefinido);
    procedure Setid_venda_entrega(const Value : Integer);
    procedure Setid_devolucao(const Value : Integer);
    procedure Setid_venda_xml(const Value : Integer);
    procedure Setid_venda_xml_nfe(const Value : Integer);
    procedure Setid_venda_cancelada(const Value : Integer);
    procedure Setsolucionado(const Value : Boolean);

  public

    property id : Integer         read Fid    write Fid;
    property log : indefinido         read Flog    write Flog;
    property id_venda_entrega : Integer         read Fid_venda_entrega    write Fid_venda_entrega;
    property id_devolucao : Integer         read Fid_devolucao    write Fid_devolucao;
    property id_venda_xml : Integer         read Fid_venda_xml    write Fid_venda_xml;
    property id_venda_xml_nfe : Integer         read Fid_venda_xml_nfe    write Fid_venda_xml_nfe;
    property id_venda_cancelada : Integer         read Fid_venda_cancelada    write Fid_venda_cancelada;
    property solucionado : Boolean         read Fsolucionado    write Fsolucionado;

  end;

var
  Frm_ViewERPcontroleenvioemailanexo : TFrm_ViewERPcontroleenvioemailanexo; 

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
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].log); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda_entrega); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_devolucao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda_xml); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda_xml_nfe); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda_cancelada); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].solucionado); 
    end; 
end; 

procedure TFrm_ViewERPcontroleenvioemailanexo.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.log := Edit_log.text;
      FController.Model.id_venda_entrega := Edit_id_venda_entrega.text;
      FController.Model.id_devolucao := Edit_id_devolucao.text;
      FController.Model.id_venda_xml := Edit_id_venda_xml.text;
      FController.Model.id_venda_xml_nfe := Edit_id_venda_xml_nfe.text;
      FController.Model.id_venda_cancelada := Edit_id_venda_cancelada.text;
      FController.Model.solucionado := Edit_solucionado.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPcontroleenvioemailanexo.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPcontroleenvioemailanexo.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPcontroleenvioemailanexo.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPcontroleenvioemailanexo.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPcontroleenvioemailanexo.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPcontroleenvioemailanexo.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPcontroleenvioemailanexo.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 8;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := log;  
     Grid.Cells[inttostr(i),0] := id_venda_entrega;  
     Grid.Cells[inttostr(i),0] := id_devolucao;  
     Grid.Cells[inttostr(i),0] := id_venda_xml;  
     Grid.Cells[inttostr(i),0] := id_venda_xml_nfe;  
     Grid.Cells[inttostr(i),0] := id_venda_cancelada;  
     Grid.Cells[inttostr(i),0] := solucionado;  
end;

procedure TFrm_ViewERPcontroleenvioemailanexo.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPcontroleenvioemailanexo.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPcontroleenvioemailanexo.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.log := Grid.Cells[1,Grid.row];
    FController.Model.id_venda_entrega := Grid.Cells[2,Grid.row];
    FController.Model.id_devolucao := Grid.Cells[3,Grid.row];
    FController.Model.id_venda_xml := Grid.Cells[4,Grid.row];
    FController.Model.id_venda_xml_nfe := Grid.Cells[5,Grid.row];
    FController.Model.id_venda_cancelada := Grid.Cells[6,Grid.row];
    FController.Model.solucionado := Grid.Cells[7,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPcontroleenvioemailanexo.LimparTela;  
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

procedure TFrm_ViewERPcontroleenvioemailanexo.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontroleenvioemailanexo.Setlog(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontroleenvioemailanexo.Setid_venda_entrega(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontroleenvioemailanexo.Setid_devolucao(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontroleenvioemailanexo.Setid_venda_xml(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontroleenvioemailanexo.Setid_venda_xml_nfe(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontroleenvioemailanexo.Setid_venda_cancelada(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPcontroleenvioemailanexo.Setsolucionado(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
