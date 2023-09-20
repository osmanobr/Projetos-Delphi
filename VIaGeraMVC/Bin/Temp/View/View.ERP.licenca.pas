
unit View.ERP.leitura_valores;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.leitura_valores, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPleituravalores = class(TForm) 
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
    FController : TControllerERPleituravalores; 
    Fid : Integer;
    Fid_cliente : Integer;
    Fcontato : WideString;
    Fdata_instalacao : TDateTime;
    Fdata_mensal : TDateTime;
    Fmensagemid : WideString;
    Fmensagempublic : WideString;
    Fsendmid : indefinido;
    Fsendmpublic : indefinido;
    Fnotifyinsert : indefinido;
    Fnotifyalter : indefinido;
    Fproduto : indefinido;
    Fcode : WideString;
    Fserie : WideString;
    Fparceiro : WideString;
    Fbonus : indefinido;
    Fbloqueio : indefinido;
    Faplicar_alteracao : indefinido;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_cliente(const Value : Integer);
    procedure Setcontato(const Value : WideString);
    procedure Setdata_instalacao(const Value : TDateTime);
    procedure Setdata_mensal(const Value : TDateTime);
    procedure Setmensagemid(const Value : WideString);
    procedure Setmensagempublic(const Value : WideString);
    procedure Setsendmid(const Value : indefinido);
    procedure Setsendmpublic(const Value : indefinido);
    procedure Setnotifyinsert(const Value : indefinido);
    procedure Setnotifyalter(const Value : indefinido);
    procedure Setproduto(const Value : indefinido);
    procedure Setcode(const Value : WideString);
    procedure Setserie(const Value : WideString);
    procedure Setparceiro(const Value : WideString);
    procedure Setbonus(const Value : indefinido);
    procedure Setbloqueio(const Value : indefinido);
    procedure Setaplicar_alteracao(const Value : indefinido);

  public

    property id : Integer         read Fid    write Fid;
    property id_cliente : Integer         read Fid_cliente    write Fid_cliente;
    property contato : WideString         read Fcontato    write Fcontato;
    property data_instalacao : TDateTime         read Fdata_instalacao    write Fdata_instalacao;
    property data_mensal : TDateTime         read Fdata_mensal    write Fdata_mensal;
    property mensagemid : WideString         read Fmensagemid    write Fmensagemid;
    property mensagempublic : WideString         read Fmensagempublic    write Fmensagempublic;
    property sendmid : indefinido         read Fsendmid    write Fsendmid;
    property sendmpublic : indefinido         read Fsendmpublic    write Fsendmpublic;
    property notifyinsert : indefinido         read Fnotifyinsert    write Fnotifyinsert;
    property notifyalter : indefinido         read Fnotifyalter    write Fnotifyalter;
    property produto : indefinido         read Fproduto    write Fproduto;
    property code : WideString         read Fcode    write Fcode;
    property serie : WideString         read Fserie    write Fserie;
    property parceiro : WideString         read Fparceiro    write Fparceiro;
    property bonus : indefinido         read Fbonus    write Fbonus;
    property bloqueio : indefinido         read Fbloqueio    write Fbloqueio;
    property aplicar_alteracao : indefinido         read Faplicar_alteracao    write Faplicar_alteracao;

  end;

var
  Frm_ViewERPleituravalores : TFrm_ViewERPleituravalores; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 18; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cliente); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].contato); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_instalacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_mensal); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].mensagemid); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].mensagempublic); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].sendmid); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].sendmpublic); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].notifyinsert); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].notifyalter); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].produto); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].code); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].serie); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].parceiro); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].bonus); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].bloqueio); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].aplicar_alteracao); 
    end; 
end; 

procedure TFrm_ViewERPleituravalores.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_cliente := Edit_id_cliente.text;
      FController.Model.contato := Edit_contato.text;
      FController.Model.data_instalacao := Edit_data_instalacao.text;
      FController.Model.data_mensal := Edit_data_mensal.text;
      FController.Model.mensagemid := Edit_mensagemid.text;
      FController.Model.mensagempublic := Edit_mensagempublic.text;
      FController.Model.sendmid := Edit_sendmid.text;
      FController.Model.sendmpublic := Edit_sendmpublic.text;
      FController.Model.notifyinsert := Edit_notifyinsert.text;
      FController.Model.notifyalter := Edit_notifyalter.text;
      FController.Model.produto := Edit_produto.text;
      FController.Model.code := Edit_code.text;
      FController.Model.serie := Edit_serie.text;
      FController.Model.parceiro := Edit_parceiro.text;
      FController.Model.bonus := Edit_bonus.text;
      FController.Model.bloqueio := Edit_bloqueio.text;
      FController.Model.aplicar_alteracao := Edit_aplicar_alteracao.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPleituravalores.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPleituravalores.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPleituravalores.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPleituravalores.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPleituravalores.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPleituravalores.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPleituravalores.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 18;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_cliente;  
     Grid.Cells[inttostr(i),0] := contato;  
     Grid.Cells[inttostr(i),0] := data_instalacao;  
     Grid.Cells[inttostr(i),0] := data_mensal;  
     Grid.Cells[inttostr(i),0] := mensagemid;  
     Grid.Cells[inttostr(i),0] := mensagempublic;  
     Grid.Cells[inttostr(i),0] := sendmid;  
     Grid.Cells[inttostr(i),0] := sendmpublic;  
     Grid.Cells[inttostr(i),0] := notifyinsert;  
     Grid.Cells[inttostr(i),0] := notifyalter;  
     Grid.Cells[inttostr(i),0] := produto;  
     Grid.Cells[inttostr(i),0] := code;  
     Grid.Cells[inttostr(i),0] := serie;  
     Grid.Cells[inttostr(i),0] := parceiro;  
     Grid.Cells[inttostr(i),0] := bonus;  
     Grid.Cells[inttostr(i),0] := bloqueio;  
     Grid.Cells[inttostr(i),0] := aplicar_alteracao;  
end;

procedure TFrm_ViewERPleituravalores.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPleituravalores.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPleituravalores.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_cliente := Grid.Cells[1,Grid.row];
    FController.Model.contato := Grid.Cells[2,Grid.row];
    FController.Model.data_instalacao := Grid.Cells[3,Grid.row];
    FController.Model.data_mensal := Grid.Cells[4,Grid.row];
    FController.Model.mensagemid := Grid.Cells[5,Grid.row];
    FController.Model.mensagempublic := Grid.Cells[6,Grid.row];
    FController.Model.sendmid := Grid.Cells[7,Grid.row];
    FController.Model.sendmpublic := Grid.Cells[8,Grid.row];
    FController.Model.notifyinsert := Grid.Cells[9,Grid.row];
    FController.Model.notifyalter := Grid.Cells[10,Grid.row];
    FController.Model.produto := Grid.Cells[11,Grid.row];
    FController.Model.code := Grid.Cells[12,Grid.row];
    FController.Model.serie := Grid.Cells[13,Grid.row];
    FController.Model.parceiro := Grid.Cells[14,Grid.row];
    FController.Model.bonus := Grid.Cells[15,Grid.row];
    FController.Model.bloqueio := Grid.Cells[16,Grid.row];
    FController.Model.aplicar_alteracao := Grid.Cells[17,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPleituravalores.LimparTela;  
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

procedure TFrm_ViewERPleituravalores.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituravalores.Setid_cliente(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituravalores.Setcontato(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituravalores.Setdata_instalacao(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituravalores.Setdata_mensal(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituravalores.Setmensagemid(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituravalores.Setmensagempublic(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituravalores.Setsendmid(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituravalores.Setsendmpublic(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituravalores.Setnotifyinsert(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituravalores.Setnotifyalter(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituravalores.Setproduto(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituravalores.Setcode(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituravalores.Setserie(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituravalores.Setparceiro(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituravalores.Setbonus(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituravalores.Setbloqueio(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPleituravalores.Setaplicar_alteracao(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
end.
