
unit View.ERP.venda_uniao_itens;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, 
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   
  Vcl.Grids, ViaERP.Funcoes, Controller.ERP.venda_uniao_itens, Controller.Types,              
  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  

type 
  TFrm_ViewERPvendauniaoitens = class(TForm) 
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
    FController : TControllerERPvendauniaoitens; 
    Fid : Integer;
    Fid_venda : Integer;
    Fid_movimento : Integer;
    Fid_cupons : Integer;
    Fnfe : WideString;
    Fnfce : WideString;
    Fcaixa : Integer;
    Floja : Integer;
    Fxml : indefinido;
    Fobs : indefinido;
    Fxml_off : indefinido;
    Fcontingencia : Boolean;
    Fassociacao : Boolean;
    Fcte : WideString;
    Fconsulta_seq : indefinido;
    Fenviar_seq : indefinido;
    Fconsulta_hora : indefinido;
    Fenviar_hora : indefinido;
    Fxml_md5 : WideString;
    Fxml_off_md5 : WideString;
    Fvalidar_contingencia : Boolean;
    Fvalidar_protocolo : indefinido;
    Fdata_protocolo : TDateTime;
    Fclick : Boolean;
    Fenviado_servidor : Boolean;
    Fretirado_monitor : Boolean;

    procedure LimparTela;   
    procedure ModelToScreen;
    procedure ScreenToModel;

    procedure Setid(const Value : Integer);
    procedure Setid_venda(const Value : Integer);
    procedure Setid_movimento(const Value : Integer);
    procedure Setid_cupons(const Value : Integer);
    procedure Setnfe(const Value : WideString);
    procedure Setnfce(const Value : WideString);
    procedure Setcaixa(const Value : Integer);
    procedure Setloja(const Value : Integer);
    procedure Setxml(const Value : indefinido);
    procedure Setobs(const Value : indefinido);
    procedure Setxml_off(const Value : indefinido);
    procedure Setcontingencia(const Value : Boolean);
    procedure Setassociacao(const Value : Boolean);
    procedure Setcte(const Value : WideString);
    procedure Setconsulta_seq(const Value : indefinido);
    procedure Setenviar_seq(const Value : indefinido);
    procedure Setconsulta_hora(const Value : indefinido);
    procedure Setenviar_hora(const Value : indefinido);
    procedure Setxml_md5(const Value : WideString);
    procedure Setxml_off_md5(const Value : WideString);
    procedure Setvalidar_contingencia(const Value : Boolean);
    procedure Setvalidar_protocolo(const Value : indefinido);
    procedure Setdata_protocolo(const Value : TDateTime);
    procedure Setclick(const Value : Boolean);
    procedure Setenviado_servidor(const Value : Boolean);
    procedure Setretirado_monitor(const Value : Boolean);

  public

    property id : Integer         read Fid    write Fid;
    property id_venda : Integer         read Fid_venda    write Fid_venda;
    property id_movimento : Integer         read Fid_movimento    write Fid_movimento;
    property id_cupons : Integer         read Fid_cupons    write Fid_cupons;
    property nfe : WideString         read Fnfe    write Fnfe;
    property nfce : WideString         read Fnfce    write Fnfce;
    property caixa : Integer         read Fcaixa    write Fcaixa;
    property loja : Integer         read Floja    write Floja;
    property xml : indefinido         read Fxml    write Fxml;
    property obs : indefinido         read Fobs    write Fobs;
    property xml_off : indefinido         read Fxml_off    write Fxml_off;
    property contingencia : Boolean         read Fcontingencia    write Fcontingencia;
    property associacao : Boolean         read Fassociacao    write Fassociacao;
    property cte : WideString         read Fcte    write Fcte;
    property consulta_seq : indefinido         read Fconsulta_seq    write Fconsulta_seq;
    property enviar_seq : indefinido         read Fenviar_seq    write Fenviar_seq;
    property consulta_hora : indefinido         read Fconsulta_hora    write Fconsulta_hora;
    property enviar_hora : indefinido         read Fenviar_hora    write Fenviar_hora;
    property xml_md5 : WideString         read Fxml_md5    write Fxml_md5;
    property xml_off_md5 : WideString         read Fxml_off_md5    write Fxml_off_md5;
    property validar_contingencia : Boolean         read Fvalidar_contingencia    write Fvalidar_contingencia;
    property validar_protocolo : indefinido         read Fvalidar_protocolo    write Fvalidar_protocolo;
    property data_protocolo : TDateTime         read Fdata_protocolo    write Fdata_protocolo;
    property click : Boolean         read Fclick    write Fclick;
    property enviado_servidor : Boolean         read Fenviado_servidor    write Fenviado_servidor;
    property retirado_monitor : Boolean         read Fretirado_monitor    write Fretirado_monitor;

  end;

var
  Frm_ViewERPvendauniaoitens : TFrm_ViewERPvendauniaoitens; 

implementation 

{$R *.dfm}

procedure TFrm_ncm_regra_substituicao.ModelToScreen;
var 
  I : integer; 
begin 
 //  Grid.RowCount := 1; 
   Grid.ColCount := 26; 
   Self.FController.Get;  
  for I := 0 to Self.FController.ModelList.Count-1 do   
    begin                                               
     //  Grid.RowCount := Grid.RowCount+1;              
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_venda); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_movimento); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].id_cupons); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfe); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].nfce); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].caixa); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].loja); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].xml); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].obs); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].xml_off); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].contingencia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].associacao); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].cte); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].consulta_seq); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].enviar_seq); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].consulta_hora); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].enviar_hora); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].xml_md5); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].xml_off_md5); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].validar_contingencia); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].validar_protocolo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].data_protocolo); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].click); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].enviado_servidor); 
         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].retirado_monitor); 
    end; 
end; 

procedure TFrm_ViewERPvendauniaoitens.ScreenToModel;  
begin   
  try   
      FController.Model.Clear;   
      FController.Model.id := Edit_id.text;
      FController.Model.id_venda := Edit_id_venda.text;
      FController.Model.id_movimento := Edit_id_movimento.text;
      FController.Model.id_cupons := Edit_id_cupons.text;
      FController.Model.nfe := Edit_nfe.text;
      FController.Model.nfce := Edit_nfce.text;
      FController.Model.caixa := Edit_caixa.text;
      FController.Model.loja := Edit_loja.text;
      FController.Model.xml := Edit_xml.text;
      FController.Model.obs := Edit_obs.text;
      FController.Model.xml_off := Edit_xml_off.text;
      FController.Model.contingencia := Edit_contingencia.text;
      FController.Model.associacao := Edit_associacao.text;
      FController.Model.cte := Edit_cte.text;
      FController.Model.consulta_seq := Edit_consulta_seq.text;
      FController.Model.enviar_seq := Edit_enviar_seq.text;
      FController.Model.consulta_hora := Edit_consulta_hora.text;
      FController.Model.enviar_hora := Edit_enviar_hora.text;
      FController.Model.xml_md5 := Edit_xml_md5.text;
      FController.Model.xml_off_md5 := Edit_xml_off_md5.text;
      FController.Model.validar_contingencia := Edit_validar_contingencia.text;
      FController.Model.validar_protocolo := Edit_validar_protocolo.text;
      FController.Model.data_protocolo := Edit_data_protocolo.text;
      FController.Model.click := Edit_click.text;
      FController.Model.enviado_servidor := Edit_enviado_servidor.text;
      FController.Model.retirado_monitor := Edit_retirado_monitor.text;

  except 
    ShowMessage('Não foi possivel ler o model para  o model'); 
  end; 
end; 

procedure TFrm_ViewERPvendauniaoitens.bbAlterarClick(Sender: TObject); 
begin 
  if Self.FController.Model.id <> 0 then 
  begin                                  
    Self.FController.Status := vsEdit;   
  end;                                   
end; 
procedure TFrm_ViewERPvendauniaoitens.BBCancelarClick(Sender: TObject); 
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

procedure TFrm_ViewERPvendauniaoitens.BBConfirmarClick(Sender: TObject);  
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

procedure TFrm_ViewERPvendauniaoitens.bbExcluirClick(Sender: TObject);
begin 
 Self.FController.Delete;     
end; 

procedure TFrm_ViewERPvendauniaoitens.bbIncluirClick(Sender: TObject);  
begin                       
  Self.FController.Status := vsInsert;   
end;    

procedure TFrm_ViewERPvendauniaoitens.FormCreate(Sender: TObject);  
Var i:integer;                                                      
begin                                                               
    Self.FController := TControllerERPvendauniaoitens.Create( SysFirst.SQLParam ); 
    Grid.RowCount := 1;         
    Grid.ColCount := 26;         
//  Grid.ColWidths[0] := 150;   
     Grid.Cells[inttostr(i),0] := id;  
     Grid.Cells[inttostr(i),0] := id_venda;  
     Grid.Cells[inttostr(i),0] := id_movimento;  
     Grid.Cells[inttostr(i),0] := id_cupons;  
     Grid.Cells[inttostr(i),0] := nfe;  
     Grid.Cells[inttostr(i),0] := nfce;  
     Grid.Cells[inttostr(i),0] := caixa;  
     Grid.Cells[inttostr(i),0] := loja;  
     Grid.Cells[inttostr(i),0] := xml;  
     Grid.Cells[inttostr(i),0] := obs;  
     Grid.Cells[inttostr(i),0] := xml_off;  
     Grid.Cells[inttostr(i),0] := contingencia;  
     Grid.Cells[inttostr(i),0] := associacao;  
     Grid.Cells[inttostr(i),0] := cte;  
     Grid.Cells[inttostr(i),0] := consulta_seq;  
     Grid.Cells[inttostr(i),0] := enviar_seq;  
     Grid.Cells[inttostr(i),0] := consulta_hora;  
     Grid.Cells[inttostr(i),0] := enviar_hora;  
     Grid.Cells[inttostr(i),0] := xml_md5;  
     Grid.Cells[inttostr(i),0] := xml_off_md5;  
     Grid.Cells[inttostr(i),0] := validar_contingencia;  
     Grid.Cells[inttostr(i),0] := validar_protocolo;  
     Grid.Cells[inttostr(i),0] := data_protocolo;  
     Grid.Cells[inttostr(i),0] := click;  
     Grid.Cells[inttostr(i),0] := enviado_servidor;  
     Grid.Cells[inttostr(i),0] := retirado_monitor;  
end;

procedure TFrm_ViewERPvendauniaoitens.FormDestroy(Sender: TObject);
begin
  FreeAndNil( FController 
end;

procedure TFrm_ViewERPvendauniaoitens.FormShow(Sender: TObject);  
begin   
    LimparTela;   
    Self.FController.Get;   
    ModelToScreen;     
end; 
procedure TFrm_ViewERPvendauniaoitens.GridClick(Sender: TObject);   
begin   
  try   
    FController.Model.Clear; 
    FController.Model.id := Grid.Cells[0,Grid.row];
    FController.Model.id_venda := Grid.Cells[1,Grid.row];
    FController.Model.id_movimento := Grid.Cells[2,Grid.row];
    FController.Model.id_cupons := Grid.Cells[3,Grid.row];
    FController.Model.nfe := Grid.Cells[4,Grid.row];
    FController.Model.nfce := Grid.Cells[5,Grid.row];
    FController.Model.caixa := Grid.Cells[6,Grid.row];
    FController.Model.loja := Grid.Cells[7,Grid.row];
    FController.Model.xml := Grid.Cells[8,Grid.row];
    FController.Model.obs := Grid.Cells[9,Grid.row];
    FController.Model.xml_off := Grid.Cells[10,Grid.row];
    FController.Model.contingencia := Grid.Cells[11,Grid.row];
    FController.Model.associacao := Grid.Cells[12,Grid.row];
    FController.Model.cte := Grid.Cells[13,Grid.row];
    FController.Model.consulta_seq := Grid.Cells[14,Grid.row];
    FController.Model.enviar_seq := Grid.Cells[15,Grid.row];
    FController.Model.consulta_hora := Grid.Cells[16,Grid.row];
    FController.Model.enviar_hora := Grid.Cells[17,Grid.row];
    FController.Model.xml_md5 := Grid.Cells[18,Grid.row];
    FController.Model.xml_off_md5 := Grid.Cells[19,Grid.row];
    FController.Model.validar_contingencia := Grid.Cells[20,Grid.row];
    FController.Model.validar_protocolo := Grid.Cells[21,Grid.row];
    FController.Model.data_protocolo := Grid.Cells[22,Grid.row];
    FController.Model.click := Grid.Cells[23,Grid.row];
    FController.Model.enviado_servidor := Grid.Cells[24,Grid.row];
    FController.Model.retirado_monitor := Grid.Cells[25,Grid.row];
  Except

  end; 
end;

procedure TFrm_ViewERPvendauniaoitens.LimparTela;  
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

procedure TFrm_ViewERPvendauniaoitens.Setid(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendauniaoitens.Setid_venda(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendauniaoitens.Setid_movimento(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendauniaoitens.Setid_cupons(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendauniaoitens.Setnfe(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendauniaoitens.Setnfce(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendauniaoitens.Setcaixa(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendauniaoitens.Setloja(const Value: Integer);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendauniaoitens.Setxml(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendauniaoitens.Setobs(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendauniaoitens.Setxml_off(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendauniaoitens.Setcontingencia(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendauniaoitens.Setassociacao(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendauniaoitens.Setcte(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendauniaoitens.Setconsulta_seq(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendauniaoitens.Setenviar_seq(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendauniaoitens.Setconsulta_hora(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendauniaoitens.Setenviar_hora(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendauniaoitens.Setxml_md5(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendauniaoitens.Setxml_off_md5(const Value: WideString);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendauniaoitens.Setvalidar_contingencia(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendauniaoitens.Setvalidar_protocolo(const Value: indefinido);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendauniaoitens.Setdata_protocolo(const Value: TDateTime);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendauniaoitens.Setclick(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendauniaoitens.Setenviado_servidor(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
procedure TFrm_ViewERPvendauniaoitens.Setretirado_monitor(const Value: Boolean);  
begin    
  ativo:=value;  
end;  
end.
