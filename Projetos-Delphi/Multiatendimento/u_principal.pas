unit u_principal;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms,  Vcl.ExtCtrls,
  //############ ATENCAO AQUI ####################
  //units adicionais obrigatorias
   uTInject.ConfigCEF, uTInject,            uTInject.Constant,      uTInject.JS,     uInjectDecryptFile,
   uTInject.Console,   uTInject.Diversos,   uTInject.AdjustNumber,  uTInject.Config, uTInject.Classes,
  //units Opcionais (dependendo do que ira fazer)
   System.NetEncoding, System.TypInfo,  WinInet,
  Vcl.StdCtrls, System.ImageList, Vcl.ImgList, Vcl.AppEvnts, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons, Vcl.Mask, Data.DB, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Dialogs, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, Vcl.OleCtrls, SHDocVw, IdHTTP, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, Vcl.Imaging.jpeg,
  REST.Types, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, ClipBrd,
  Vcl.Menus,
     IdMultipartFormData, Datasnap.DBClient, Math
  ;
type
  TfrmPrincipal = class(TForm)
    TInject1: TInject;
    OpenDialog1: TOpenDialog;
    TrayIcon1: TTrayIcon;
    ImageList1: TImageList;
    PageControl1: TPageControl;
    TSPrincipal: TTabSheet;
    TSAcaoManual: TTabSheet;
    TSLog: TTabSheet;
    memo_unReadMessage: TMemo;
    StatusBar1: TStatusBar;
    groupEnvioMsg: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    mem_message: TMemo;
    ed_num: TComboBox;
    Panel2: TPanel;
    whatsOn: TImage;
    whatsOff: TImage;
    lblStatus: TLabel;
    Timer2: TTimer;
    CheckBox5: TCheckBox;
    lblMensagem: TLabel;
    Rdb_FormaConexao: TRadioGroup;
    SpeedButton3: TSpeedButton;
    Label6: TLabel;
    ed_videoLink: TEdit;
    PopupMenu1: TPopupMenu;
    Copyall1: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    Copy1: TMenuItem;
    Copy2: TMenuItem;
    PopupMenu3: TPopupMenu;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    PopupMenu4: TPopupMenu;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    ed_contactName: TEdit;
    IdHTTP: TIdHTTP;
    DataSource1: TDataSource;
    CDSLista: TClientDataSet;
    DBGrid1: TDBGrid;
    TSContatos: TTabSheet;
    groupListaContatos: TGroupBox;
    Panel4: TPanel;
    Button2: TButton;
    listaContatos: TListView;
    TSConfig: TTabSheet;
    Pnl_Config: TPanel;
    Panel3: TPanel;
    Label5: TLabel;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit1: TLabeledEdit;
    chk_AutoResposta: TCheckBox;
    ComboBox1: TComboBox;
    Pnl_FONE: TPanel;
    Edt_LengDDD: TLabeledEdit;
    Edt_LengDDI: TLabeledEdit;
    Edt_LengFone: TLabeledEdit;
    Edt_DDIPDR: TLabeledEdit;
    CheckBox4: TCheckBox;
    Panel10: TPanel;
    Image1: TImage;
    Label11: TLabel;
    Memo1: TMemo;
    EdtUrl: TEdit;
    EdtToken: TEdit;
    EdtNumeroWhatsApp: TEdit;
    Label8: TLabel;
    Panel5: TPanel;
    GroupBox2: TGroupBox;
    lblNumeroConectado: TLabel;
    lblContactStatus: TLabel;
    lblContactNumber: TLabel;
    btSendTextAndFile: TButton;
    btSendText: TButton;
    ImgBtnPower: TImage;
    EdtIdEmpresa: TEdit;
    Button3: TButton;
    Timer1: TTimer;
    DBMemo1: TDBMemo;
    LbLed: TLabel;
    Image2: TImage;
    Lbl_Avisos: TLabel;
    CBResponderAtendimento: TCheckBox;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btSendTextClick(Sender: TObject);
    procedure btSendTextAndFileClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure TInject1GetUnReadMessages(Const Chats: TChatList);
    procedure listaChatsDblClick(Sender: TObject);
    procedure listaContatosDblClick(Sender: TObject);
    procedure TrayIcon1Click(Sender: TObject);
    procedure ApplicationEvents1Minimize(Sender: TObject);
    procedure TInject1GetStatus(Sender: TObject);
    procedure Edt_DDIPDRExit(Sender: TObject);
    procedure ed_numChange(Sender: TObject);
    procedure ed_numSelect(Sender: TObject);
    procedure TInject1GetMyNumber(Sender: TObject);
    procedure TInject1ErroAndWarning(Sender: TObject; const PError,      PInfoAdc: string);
    procedure Timer2Timer(Sender: TObject);
    procedure TInject1GetChatList(const Chats: TChatList);
    procedure TInject1GetAllContactList(      const AllContacts: TRetornoAllContacts);
    procedure TInject1GetQrCode(COnst Sender: TObject; const QrCode: TResultQRCodeClass);
    procedure whatsOnClick(Sender: TObject);
    procedure TInject1LowBattery(Sender: TObject);
    procedure TInject1DisconnectedBrute(Sender: TObject);
    procedure listaContatosClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure TInject1GetCheckIsValidNumber(Sender: TObject; Number: string;      IsValid: Boolean);
    procedure TInject1IsConnected(Sender: TObject; Connected: Boolean);
    procedure TInject1GetBatteryLevel(Sender: TObject);
    procedure TInject1GetProfilePicThumb(Sender: TObject; Base64: string);
    procedure Button5Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure TInject1GetStatusMessage(const Result: TResponseStatusMessage);
    procedure TInject1GetInviteGroup(const Invite: string);
    procedure TInject1GetMe(const vMe: TGetMeClass);
    procedure TInject1NewGetNumber(const vCheckNumber: TReturnCheckNumber);
    procedure listaChatsClick(Sender: TObject);
    procedure ed_numKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MenuItem4Click(Sender: TObject);
    procedure TInject1GetIsDelivered(Sender: TObject);


    procedure ImgBtnPowerClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
    procedure CBResponderAtendimentoClick(Sender: TObject);
  private
    { Private declarations }
    FIniciando: Boolean;
    FStatus: Boolean;
    FNameContact:  string;
    FChatID: string;
    function PostMsg(origem, destino, tipo, msg, token: string;
      status: integer): boolean;
    function GetMsg(url, id_empresa, celular_empresa, token: string): boolean;







  public
    { Public declarations }
    mensagem  : string;
    AFile     : string;
    procedure AddChatList(ANumber: String);
    procedure AddContactList(ANumber: String);
    procedure AddGroupList(ANumber: string);
    procedure AddGroupAdmins(ANumber: string);
    procedure AddGroupContacts(ANumber: string);
    function  VerificaPalavraChave( pMensagem, pSessao, pTelefone, pContato : String ) : Boolean;
  end;
var
  frmPrincipal: TfrmPrincipal;

  celular_conectado:string;
  DSLista: TDataSource;


  implementation

uses
  Winapi.ShellAPI, System.AnsiStrings, System.JSON,  Midas, MidasLib,
   NB30,  Winapi.WinSock;
{$R *.dfm}

function SomenteNumeros(const S: string): string;
var
  vText : PChar;
begin
  vText := PChar(S);
  Result := '';

  while (vText^ <> #0) do
  begin
    {$IFDEF UNICODE}
    if CharInSet(vText^, ['0'..'9']) then
    {$ELSE}
    if vText^ in ['0'..'9'] then
    {$ENDIF}
      Result := Result + vText^;

    Inc(vText);
  end;
end;


Function TfrmPrincipal.GetMsg(url, id_empresa, celular_empresa, token : string):boolean;
  var
  LJSONValue: TJSONValue;
  LJSONArray: TJSONArray;
  JsonStream: TStringStream;
  id, de, para, tipo, msg, status, urls:string;
begin
   JsonStream:= TStringStream.Create('');
   urls := url+'/getWhatsApp.php?empresa='+id_empresa+'&celular='+celular_empresa+'&token='+token;

   idHttp.Get(url+'/getWhatsApp.php?empresa='+id_empresa+'&celular='+celular_empresa+'&token='+token, JsonStream);
   LJSONArray := TJSONObject.ParseJSONValue(JsonStream.DataString) as TJSONArray;

  if (JsonStream.DataString <>'ERROR 404 - "Registro nao encontrado"') then
    begin
      try
       // try
          for LJSONValue in LJSONArray do
            begin
         //    if trim(id)<>'' then
          //      begin
                  id    :=  LJSONValue.GetValue<string>('id');
                  de    :=  LJSONValue.GetValue<string>('de');
                  para  :=  LJSONValue.GetValue<string>('para');
                  tipo  :=  LJSONValue.GetValue<string>('tipo');
                  msg   :=  LJSONValue.GetValue<string>('msg');
                  status := LJSONValue.GetValue<string>('status');
                  Lbl_Avisos.caption := 'Mensagem Encontrada: '+id+' '+de+' '+' '+para+' '+tipo+' '+msg;

                  CDSLista.Append;
                  CDSLIsta.FieldByName('CDSListaId').AsString := id;
                  CDSLIsta.FieldByName('CDSListaId_empresa').AsString := EdtIdEmpresa.text;
                  CDSLIsta.FieldByName('CDSListaId_atendimento').AsString := '0';
                  CDSLIsta.FieldByName('CDSListaDe').AsString := de;
                  CDSLIsta.FieldByName('CDSListaPara').AsString := para;
                  CDSLIsta.FieldByName('CDSListaTipo').AsString := tipo;
                  CDSLIsta.FieldByName('CDSListaMsg').AsString := msg;
                  CDSLIsta.FieldByName('CDSListaData_hora').AsString := datetostr(now)+' '+timetostr(now);
                  CDSLIsta.FieldByName('CDSListaStatus').AsString := status;
                  CDSLista.post;

                  //colocar o post aqui

              //  end;
            end;
//        except
//           LbMensagem.caption :='Erro ao buscar informações';
//        end;
      finally
        LJSONArray.Free;
        JsonStream.Free();
       // memo1.Clear;
      end;
    end
    else
       Lbl_Avisos.caption :='Erro registro não encontrado...';
end;

Function TfrmPrincipal.PostMsg(origem, destino, tipo, msg, token:string; status:integer):boolean;
var
  Stream, retorno, envio: TStringStream;
  Params: TIdMultipartFormDataStream;
  dados:tstringlist;
begin

  dados := tstringlist.Create;
  dados.Clear;
  dados.Add('origem='+origem);
  dados.Add('destino='+destino);
  dados.Add('tipo='+tipo);
  dados.Add('msg='+msg);
  dados.Add('token='+token);
  //dados.Add('status='+inttostr(status));
  dados.Add('status=1');
  Stream := TStringStream.Create('');
  try
     Params := TIdMultipartFormDataStream.Create;
     try
        try
          retorno := TstringStream.Create;
          IdHTTP.Post(EdtUrl.text+'/postWhatsApp.php', dados, retorno);
          Lbl_Avisos.CAPtion:= UTF8Decode(retorno.DataString);
          result:=true;
        except
         on E: Exception do
          Lbl_Avisos.CAPtion := 'Erros encontrados durante o POST: ' + E.Message;
        end;

     finally
      Params.Free;
     end;
  finally
   Stream.Free;
  end;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  ReportMemoryLeaksOnShutdown  := false;
  PageControl1.ActivePageIndex := 0;
  FIniciando := True;
  try
    ComboBox1.Items.Clear;
    for I := 0 to 3 do
    Begin
      ComboBox1.Items.Add(GetEnumName(TypeInfo(TLanguageInject), ord(TLanguageInject(i))));
    End;
    GlobalCEFApp.LogConsoleActive := true;
    ComboBox1.ItemIndex   := Integer(TInject1.LanguageInject);

    TSAcaoManual.TabVisible  := False;
    TSLog.TabVisible  := False;
    TSContatos.TabVisible  := False;
    TSConfig.TabVisible  := False;

    LabeledEdit1.text     := TInject1.Config.ControlSendTimeSec.ToString;
    LabeledEdit2.Text     := TInject1.Config.SecondsMonitor.ToString;
  finally
    FIniciando := False;
  end;






end;
procedure TfrmPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_F1  then
begin
    if MessageDlg('Olá! Você será direcionado para o site osmano. Cadastre-se usando seu número de Whatsapp e ative sua licença. '+#13+#13+'Ao ativar você ganhará um token de acesso demo. Insira os dados recebidos no painel inicial e é só usar o sistema.'+#13+#13+#13+#13+'Vamos prosseguir?', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes then
  begin
    ShellExecute(Handle, 'open', 'https://osmano.com.br', '', '', 1);
  end
end;
end;

procedure TfrmPrincipal.ImgBtnPowerClick(Sender: TObject);
begin
  ImgBtnPower.picture.LoadFromFile('../powerblue.png') ;
  if not TInject1.Auth(false) then
  Begin
    TInject1.FormQrCodeType := TFormQrCodeType(Rdb_FormaConexao.ItemIndex);
    TInject1.FormQrCodeStart;
  End;
  if not TInject1.FormQrCodeShowing then
     begin
        TInject1.FormQrCodeShowing := True;
     end
  else
     begin
        TInject1.FormQrCodeShowing := True;
     end;


end;

procedure TfrmPrincipal.AddContactList(ANumber: String);
var
  Item: TListItem;
begin
  Item := listaContatos.Items.Add;
  if Length(ANumber) < 12 then
     ANumber := '55' + ANumber;
  item.Caption := ANumber;
  item.SubItems.Add(item.Caption+'SubItem 1');
  item.SubItems.Add(item.Caption+'SubItem 2');
  item.ImageIndex := 0;
end;
procedure TfrmPrincipal.AddGroupAdmins(ANumber: string);
var
  Item: TListItem;
begin
  item.Caption := ANumber;
  item.SubItems.Add(item.Caption+'SubItem 1');
  item.SubItems.Add(item.Caption+'SubItem 2');
  item.ImageIndex := 0;
end;
procedure TfrmPrincipal.AddGroupContacts(ANumber: string);
var
  Item: TListItem;
begin

  item.Caption := ANumber;
  item.SubItems.Add(item.Caption+'SubItem 1');
  item.SubItems.Add(item.Caption+'SubItem 2');
  item.ImageIndex := 0;
end;
procedure TfrmPrincipal.AddGroupList(ANumber: string);
var
  Item: TListItem;
begin
  item.Caption := ANumber;
  item.SubItems.Add(item.Caption+'SubItem 1');
  item.SubItems.Add(item.Caption+'SubItem 2');
  item.ImageIndex := 0;
end;
procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TInject1.ShutDown;
end;
Procedure TfrmPrincipal.AddChatList(ANumber: String);
var
  Item: TListItem;
begin

     ANumber := '55' + ANumber;
  item.Caption := ANumber;
  item.SubItems.Add(item.Caption+'SubItem 1');
  item.SubItems.Add(item.Caption+'SubItem 2');
  item.ImageIndex := 2;
end;
procedure TfrmPrincipal.ApplicationEvents1Minimize(Sender: TObject);
begin
  self.Hide();
  self.WindowState := wsMinimized;
  trayIcon1.Visible := true;
  TrayIcon1.Animate := True;
  TrayIcon1.ShowBalloonHint;
end;
procedure TfrmPrincipal.btSendTextAndFileClick(Sender: TObject);
Begin
  if not OpenDialog1.Execute then
     Exit;
  try
    if not TInject1.Auth then
       exit;
    TInject1.SendFile(ed_num.Text, openDialog1.FileName,  mem_message.Text);
  finally
    ed_num.SelectAll;
    ed_num.SetFocus;
  end;
end;

procedure TfrmPrincipal.Button10Click(Sender: TObject);
begin
  if not TInject1.Auth then
     Exit;

end;
procedure TfrmPrincipal.Button11Click(Sender: TObject);
begin
  if not TInject1.Auth then
     Exit;

end;
procedure TfrmPrincipal.Button12Click(Sender: TObject);
begin
  if not TInject1.Auth then
     Exit;

end;
procedure TfrmPrincipal.Button2Click(Sender: TObject);
begin
  TInject1.getAllContacts;
end;
procedure TfrmPrincipal.Button3Click(Sender: TObject);
begin
  TInject1.getAllChats;
end;
procedure TfrmPrincipal.Button5Click(Sender: TObject);
begin
  if not TInject1.Auth then
     Exit;
  TInject1.getAllGroups;
end;
procedure TfrmPrincipal.CBResponderAtendimentoClick(Sender: TObject);
begin
  if CBResponderAtendimento.Checked = true then
     begin
        timer1.Interval := 1000;
        LbLed.Visible := true;
     end
    else
      begin
        timer1.Interval := 0;
        LbLed.Visible := false;
      end;
end;
procedure TfrmPrincipal.btSendTextClick(Sender: TObject);
begin
  try
    if not TInject1.Auth then
       Exit;
    TInject1.send(ed_num.Text, mem_message.Text);
  finally
    ed_num.SelectAll;
    ed_num.SetFocus;
  end;
end;
procedure TfrmPrincipal.ed_numChange(Sender: TObject);
var
  LRet: TStringList;
  I: Integer;
  Ltexto: String;
begin
//  ExecuteFilter;
  //Esta processando outro CHANGE
  if not CheckBox5.Checked then
     Exit;
  if ed_num.AutoComplete = False Then
     Exit;

  {
   ##### modo 1
  TInject1.GetContacts(ComboBox1.Text, ComboBox1.Items);
  if ComboBox1.Items.Count <= 0 then
     ComboBox1.Style := csSimple else
     ComboBox1.Style := csOwnerDrawFixed;

  ##### modo 2
   }
  LRet:= TStringList.Create;
  ed_num.AutoComplete := False;
  Ltexto                 := ed_num.Text;
  try
    ed_num.Items.Clear;
    if LRet.Count <= 0 then
       ed_num.Style := csSimple else
       ed_num.Style := csDropDown;
    for I := 0 to LRet.Count -1 do
       ed_num.Items.Add(LRet.Strings[i]);
  finally
    ed_num.Text         := Ltexto;
    ed_num.SelStart     := Length(Ltexto);
    ed_num.AutoComplete := True;
    FreeAndNil(LRet);
  end;
end;
procedure TfrmPrincipal.ed_numKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  lblContactNumber.Caption := ed_num.Text;
  lblContactStatus.Caption := '-';
end;
procedure TfrmPrincipal.ed_numSelect(Sender: TObject);
begin
  if not CheckBox5.Checked then
     Exit;
  if (ed_num.ItemIndex >=0) and (ed_num.Items.Count > 0) then
  Begin
    ed_num.AutoComplete := False;
    ed_num.Text         := ed_num.Items.Strings[ed_num.ItemIndex];
    ed_num.AutoComplete := True;
  End;
end;
procedure TfrmPrincipal.Edt_DDIPDRExit(Sender: TObject);
begin
  if FIniciando then
     Exit;

  //TInject1.Config.AutoStart           := chk_AutoStart.Checked;
  TInject1.Config.ControlSendTimeSec    := StrToIntDef(LabeledEdit1.Text, 8);
  TInject1.Config.SecondsMonitor        := StrToIntDef(LabeledEdit2.Text, 3);

//  TInject1.Config.ShowRandom          := .Checked;
//  TInject1.Config.SyncContacts        := .Checked;
  TInject1.AjustNumber.LengthDDI         := StrToIntDef(Edt_LengDDI.text , 2);
  TInject1.AjustNumber.LengthDDD         := StrToIntDef(Edt_LengDDD.text , 2);
  TInject1.AjustNumber.LengthPhone       := StrToIntDef(Edt_LengFone.text, 8);
  TInject1.AjustNumber.DDIDefault        := StrToIntDef(Edt_DDIPDR.text  , 55);
  TInject1.AjustNumber.AllowOneDigitMore := CheckBox4.Checked;
 // ExecuteFilter;
  TInject1.LanguageInject                := TLanguageInject(ComboBox1.ItemIndex);
end;
procedure TfrmPrincipal.TInject1DisconnectedBrute(Sender: TObject);
begin
  ShowMessage('Conexão foi finalizada pelo celular');
end;
procedure TfrmPrincipal.TInject1ErroAndWarning(Sender: TObject;
  const PError, PInfoAdc: string);
begin
  Timer2.Enabled        := False;
  Lbl_Avisos.Caption    := Perror + ' -> ' + PInfoAdc;
  Lbl_Avisos.Font.Color := clBlack;
  Timer2.Enabled        := True;
end;
procedure TfrmPrincipal.TInject1GetAllContactList(
  const AllContacts: TRetornoAllContacts);
var
  AContact: TContactClass;
begin
  listaContatos.Clear;
  for AContact in AllContacts.result do
  begin
    AddContactList(AContact.id + ' ' +AContact.name);
  end;
  AContact := nil;
end;
procedure TfrmPrincipal.TInject1GetBatteryLevel(Sender: TObject);
begin
  Lbl_Avisos.Caption  := 'O telefone '  + TInject(Sender).MyNumber + ' está com '+ TInject(Sender).BatteryLevel.ToString + '% de bateria';
 // btStatusBat.caption := 'Status da bateria (' + TInject(Sender).BatteryLevel.ToString + '%)';
end;
procedure TfrmPrincipal.TInject1GetChatList(const Chats: TChatList);
var
  AChat: TChatClass;
begin

  for AChat in Chats.result do
    AddChatList('('+ AChat.unreadCount.ToString + ') ' + AChat.name + ' - ' + AChat.id);
end;
procedure TfrmPrincipal.TInject1GetCheckIsValidNumber(Sender: TObject;
  Number: string; IsValid: Boolean);
begin
  if IsValid then
     ShowMessage('Whatsapp Valid -' + Number) else
     ShowMessage('Whatsapp Invalid') ;
end;
procedure TfrmPrincipal.TInject1GetInviteGroup(const Invite: string);
begin
 ShowMessage(Invite);
end;
procedure TfrmPrincipal.TInject1GetIsDelivered(Sender: TObject);
begin
  showmessage(TInject(Sender).IsDelivered);
end;
procedure TfrmPrincipal.TInject1GetMe(const vMe: TGetMeClass);
var aList : TStringList;
begin
 try
  aList := TStringList.Create();

  aList.Add('Battery: ' + vME.battery.ToString);
  aList.Add('LC: ' +  vMe.lc);
  aList.Add('LG: ' + vMe.lg);
  aList.Add('Locate: ' + vMe.locate);

  if vMe.plugged then
   aList.Add('Plugged: true')
  else
   aList.Add('Plugged: false');

  aList.Add('Pushname: ' + vMe.pushname);
  aList.Add('ServerToken: ' + vMe.serverToken);
  aList.Add('Status: ' + vMe.status.status);
  aList.Add('Me: ' + vMe.me);
  aList.Add('Phone Device_Manufacturer:  ' + vMe.phone.device_manufacturer);
  aList.Add('Phone Device Model: ' + vMe.phone.device_model);
  aList.Add('Phone MCC: ' + vMe.phone.mcc);
  aList.Add('Phone MNC: ' + vMe.phone.mnc);
  aList.Add('Phone OS Builder Number: ' + vMe.phone.os_build_number);
  aList.Add('Phone OS Version: ' + vMe.phone.os_version);
  aList.Add('Phone wa Version: ' + vMe.phone.wa_version);

  if vME.phone.InjectWorking then
   aList.Add('Phone InjectWorkink: true')
  else
   aList.Add('Phone InjectWorkin: false');

  Showmessage (aList.Text);
 finally
  aList.Free;
 end;
end;
procedure TfrmPrincipal.TInject1GetMyNumber(Sender: TObject);
begin
  lblNumeroConectado.Caption :=   TInject(Sender).MyNumber;
  EdtNumeroWhatsApp.Text     :=   copy(SomenteNumeros(TInject(Sender).MyNumber),3,10);
  celular_conectado := EdtNumeroWhatsApp.Text;
end;
procedure TfrmPrincipal.TInject1GetProfilePicThumb(Sender: TObject;
  Base64: string);
var
  LInput: TMemoryStream;
  LOutput: TMemoryStream;
  AStr: TStringList;
  lThread: TThread;
begin
  lThread := TThread.CreateAnonymousThread(
  procedure
  begin
    try
      LInput := TMemoryStream.Create;
      LOutput := TMemoryStream.Create;
      AStr  := TStringList.Create;
      AStr.Add(Base64);
      AStr.SaveToStream(LInput);
      LInput.Position := 0;
      TNetEncoding.Base64.Decode( LInput, LOutput );
      LOutput.Position := 0;
      {$IFDEF VER330}
        Image2.Picture.LoadFromStream(LOutput);


      {$ENDIF}
    finally
      LInput.Free;
      LOutput.Free;
      AStr.Free;
    end;
  end);
  lThread.FreeOnTerminate := true;
  lThread.Start;
end;
procedure TfrmPrincipal.TInject1GetQrCode(Const Sender: TObject;  const QrCode: TResultQRCodeClass);
begin
  if TInject1.FormQrCodeType = TFormQrCodeType(Ft_none) then
     Image1.Picture := QrCode.AQrCodeImage else
     Image1.Picture := nil; //Limpa foto
end;
procedure TfrmPrincipal.TInject1GetStatus(Sender: TObject);//Const PStatus : TStatusType; Const PFormQrCode: TFormQrCodeType);
begin
  if not Assigned(Sender) Then
     Exit;
  try
    TSAcaoManual.TabVisible  := False;
    TSLog.TabVisible  := (TInject(Sender).Status = Inject_Initialized);
    TSContatos.TabVisible  := False;
    TSConfig.TabVisible  := False;

  Except
  end;
  if (TInject(Sender).Status = Inject_Initialized) then
  begin
    lblStatus.Caption            := 'Online';
    lblStatus.Font.Color         := $0000AE11;
    SpeedButton3.Enabled              := true;
    ImgBtnPower.picture.LoadFromFile('../powerblue.png') ;
  end else
  begin
    SpeedButton3.Enabled              := false;
    lblStatus.Caption            := 'Offline';
    lblStatus.Font.Color         := $002894FF;
    ImgBtnPower.picture.LoadFromFile('../powerred.png') ;
  end;
  StatusBar1.Panels[1].Text  := lblStatus.Caption;
  whatsOn.Visible            := SpeedButton3.enabled;
  lblNumeroConectado.Visible := whatsOn.Visible;
  whatsOff.Visible           := Not whatsOn.Visible;


  case TInject(Sender).status of
    Server_ConnectedDown       : lblMensagem.Caption := TInject(Sender).StatusToStr;
    Server_Disconnected        : lblMensagem.Caption := TInject(Sender).StatusToStr;
    Server_Disconnecting       : lblMensagem.Caption := TInject(Sender).StatusToStr;
    Server_Connected           : lblMensagem.Caption := '';
    Server_Connecting          : lblMensagem.Caption := TInject(Sender).StatusToStr;
    Inject_Initializing        : lblMensagem.Caption := TInject(Sender).StatusToStr;
    Inject_Initialized         : lblMensagem.Caption := TInject(Sender).StatusToStr;
    Server_ConnectingNoPhone   : lblMensagem.Caption := TInject(Sender).StatusToStr;
    Server_ConnectingReaderCode: lblMensagem.Caption := TInject(Sender).StatusToStr;
    Server_TimeOut             : lblMensagem.Caption := TInject(Sender).StatusToStr;
    Inject_Destroying          : lblMensagem.Caption := TInject(Sender).StatusToStr;
    Inject_Destroy             : lblMensagem.Caption := TInject(Sender).StatusToStr;
  end;
  If lblMensagem.Caption <> '' Then
     lblMensagem.Visible := true;

  If TInject(Sender).Status in [Server_ConnectingNoPhone, Server_TimeOut] Then
  Begin
    if TInject(Sender).FormQrCodeType = Ft_Desktop then
    Begin
       if TInject(Sender).Status = Server_ConnectingNoPhone then
          TInject1.FormQrCodeStop;
    end else
    Begin
      if TInject(Sender).Status = Server_ConnectingNoPhone then
      Begin
        if not TInject(Sender).FormQrCodeShowing then
           TInject(Sender).FormQrCodeShowing := True;
      end else
      begin
        TInject(Sender).FormQrCodeReloader;
      end;
    end;
  end;
end;
procedure TfrmPrincipal.TInject1GetStatusMessage(
  const Result: TResponseStatusMessage);
var
  i: integer;
var
  AResult: String;
var
 cara: TResponseStatusMessage;
begin
  if FStatus = true then
  begin
    //lblContactStatus.Caption := Result.status ;
     showmessage(Result.id + ' - ' + Result.status);
  end else
    begin
      showmessage(Result.id + ' - ' + Result.status);
    end;
end;
procedure TfrmPrincipal.TInject1GetUnReadMessages(Const Chats: TChatList);
var
  AChat: TChatClass;
  AMessage: TMessagesClass;
  contato, telefone : string;
  injectDecrypt: TInjectDecryptFile;
begin
 caption:= lblNumeroConectado.Caption;
    for AChat in Chats.result do
    begin
      for AMessage in AChat.messages do
      begin
        if not AChat.isGroup then //Não processa chats de grupos
        begin
          if not AMessage.isGroupMsg then //Não processa mensagens de grupos
          begin
            if not AMessage.sender.isMe then  //Não exibe mensages enviadas por mim
              begin
                memo_unReadMessage.Clear;
                //Tratando o tipo do arquivo recebido e faz o download para pasta \BIN\temp
                case AnsiIndexStr(UpperCase(AMessage.&type), ['PTT', 'IMAGE', 'VIDEO', 'AUDIO', 'DOCUMENT']) of
                  0: begin injectDecrypt.download(AMessage.deprecatedMms3Url, AMessage.mediaKey, 'mp3', AChat.id); end;
                  1: begin injectDecrypt.download(AMessage.deprecatedMms3Url, AMessage.mediaKey, 'jpg', AChat.id); end;
                  2: begin injectDecrypt.download(AMessage.deprecatedMms3Url, AMessage.mediaKey, 'mp4', AChat.id); end;
                  3: begin injectDecrypt.download(AMessage.deprecatedMms3Url, AMessage.mediaKey, 'mp3', AChat.id); end;
                  4: begin injectDecrypt.download(AMessage.deprecatedMms3Url, AMessage.mediaKey, 'pdf', AChat.id); end;
                end;
                sleepNoFreeze(100);
                memo_unReadMessage.Lines.Add(PChar( 'Nome Contato: ' + Trim(AMessage.Sender.pushName)));
                  memo_unReadMessage.Lines.Add(PChar( 'Chat Id     : ' + AChat.id));
                FChatID := AChat.id;
                memo_unReadMessage.Lines.Add(PChar('Tipo mensagem: '      + AMessage.&type));
                memo_unReadMessage.Lines.Add( StringReplace(AMessage.body, #$A, #13#10, [rfReplaceAll, rfIgnoreCase]));
                telefone  :=  Copy(AChat.id, 3, Pos('@', AChat.id) - 3);
                contato   :=  AMessage.Sender.pushName;
                memo1.lines.add('id de quem enviou: '+AChat.contact.id);


                caption:= 'celular conectado: '+celular_conectado;

                TInject1.ReadMessages(AChat.id);
                if chk_AutoResposta.Checked then
                   VerificaPalavraChave(AMessage.body, '', telefone, contato);
                if not (PostMsg(telefone,celular_conectado,AMessage.&type, AMessage.body, edttoken.Text,0))then
                Lbl_Avisos.Caption:='Mensagem não enviada ao servidor...'
                else  Lbl_Avisos.Caption:='Mensagem enviada ao servidor!'
              end
            else
              begin  //da empresa para o cliente
                     //vai enviar para o site

                 memo1.lines.add('telefone da empresa : '+celular_conectado);
                 memo1.Lines.Add(PChar('Tipo mensagem: '      + AMessage.&type));
                 memo1.Lines.Add(PChar( 'de: ' + celular_conectado));
                 telefone := Copy(AChat.id, 3, Pos('@', AChat.id) - 3);
                 memo1.Lines.Add(PChar( 'para: ' + telefone));
                 memo1.Lines.Add( StringReplace(AMessage.body, #$A, #13#10, [rfReplaceAll, rfIgnoreCase]));
                 if not PostMsg(celular_conectado,telefone, AMessage.&type,AMessage.body,edttoken.text,0) then
                 Lbl_Avisos.Caption:='Não foi possível enviar a mensagem...'
                 else  Lbl_Avisos.Caption:='Mensagem enviada ao servidor!'
              end;

          end;
        end;
      end;
    end;
end;
procedure TfrmPrincipal.TInject1IsConnected(Sender: TObject;
  Connected: Boolean);
begin
  if Connected = true then
  showMessage('Conectado / Connected') else
  showMessage('Desconectado / Not connected')
end;
procedure TfrmPrincipal.TInject1LowBattery(Sender: TObject);
begin
  Timer2.Enabled        := False;
  Lbl_Avisos.Caption    := 'Alarme de BATERIA.  Você está com ' + TInject(Sender).BatteryLevel.ToString + '%';
  Lbl_Avisos.Font.Color := clRed;
  Timer2.Enabled        := True;
end;
procedure TfrmPrincipal.TInject1NewGetNumber(
  const vCheckNumber: TReturnCheckNumber);
begin
 if vCheckNumber.valid then
  Showmessage(vCheckNumber.id + ' é um numero Válido')
 else
  Showmessage(vCheckNumber.id + ' é um numero INVÁLIDO');
end;
procedure TfrmPrincipal.listaChatsClick(Sender: TObject);
begin
  lblContactStatus.caption := '-';
end;
procedure TfrmPrincipal.listaChatsDblClick(Sender: TObject);
begin

  lblContactNumber.Caption := ed_num.Text;
end;
procedure TfrmPrincipal.listaContatosClick(Sender: TObject);
begin
  mem_message.Text := Copy(listaContatos.Items[listaContatos.Selected.Index].SubItems[1], 0,
     Pos('@', listaContatos.Items[listaContatos.Selected.Index].SubItems[1]) + 3);

  FNameContact :=
  stringReplace(Copy(listaContatos.Items[listaContatos.Selected.Index].SubItems[1],
              Pos('@', listaContatos.Items[listaContatos.Selected.Index].SubItems[1])+6,
              length(listaContatos.Items[listaContatos.Selected.Index].SubItems[1])), 'Subitem 2', '', [rfReplaceAll, rfIgnoreCase]);
  mem_message.Text := FNameContact;
  lblContactStatus.caption := '-';
end;
procedure TfrmPrincipal.listaContatosDblClick(Sender: TObject);
begin
  ed_num.Text :=  Copy(listaContatos.Items[listaContatos.Selected.Index].SubItems[1], 0,
    Pos('@', listaContatos.Items[listaContatos.Selected.Index].SubItems[1]))+'c.us';
  lblContactNumber.Caption := ed_num.Text;
end;
procedure TfrmPrincipal.MenuItem4Click(Sender: TObject);
begin
  try
    Clipboard.AsText := listaContatos.Selected.Caption;
  except
  end;
end;
procedure TfrmPrincipal.SpeedButton3Click(Sender: TObject);
begin
  if not TInject1.auth then
    exit;
   TInject1.Logtout;
   TInject1.Disconnect;
end;
procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
  try
    if LbLed.Visible then
       LbLed.Visible:=false
    else
       LbLed.Visible := true;

    if not GetMsg(EdtUrl.Text, EdtIdEmpresa.Text, EdtNumeroWhatsApp.Text, edttoken.text)  then
      begin
        Lbl_Avisos.Caption := 'Não há novas mensagens';
      end;

    CDSLista.First;
    CDSLista.filter:= 'CDSListaStatus = '+quotedstr('0');
    CDSLista.Filtered := true;
    CDSLista.First;
    Timer1.interval := 0;

    if not CDSLista.Eof then repeat
      begin
        if not TInject1.Auth then
           Exit;
        if ((EdtNumeroWhatsApp.Text <> CDSLista.FieldByName('CDSListaPara').AsString)and(CDSLista.FieldByName('CDSListaStatus').AsInteger < 1)) then
           begin
              TInject1.send(CDSLista.FieldByName('CDSListaPara').AsString, CDSLista.FieldByName('CDSListaMsg').AsString);
              CDSLista.Edit;
              CDSLista.FieldByName('CDSListaStatus').AsInteger := 1;
              CDSLista.post;
           end;

        CDSLista.Next;
      end;
    until CDSLista.Eof;
      Timer1.interval := RandomRange(800,5000);


  except
    //faz nada
  end;

end;
procedure TfrmPrincipal.Timer2Timer(Sender: TObject);
begin
  Lbl_Avisos.Caption := '';
  Timer2.Enabled := False;
end;
procedure TfrmPrincipal.TrayIcon1Click(Sender: TObject);
begin
  TrayIcon1.Visible := False;
  Show();
  WindowState := wsNormal;
  Application.BringToFront();
end;
function TfrmPrincipal.VerificaPalavraChave(pMensagem, pSessao, pTelefone,
  pContato: String): Boolean;
begin
  Result := False;
   if ( POS('OLA', AnsiUpperCase(pMensagem))        > 0 ) or ( POS('OLÁ', AnsiUpperCase(pMensagem))       > 0 ) or
      ( POS('BOM DIA', AnsiUpperCase(pMensagem))    > 0 ) or ( POS('BOA TARDE', AnsiUpperCase(pMensagem)) > 0 ) or
      ( POS('BOA NOITE', AnsiUpperCase(pMensagem))  > 0 ) or ( POS('INÍCIO', AnsiUpperCase(pMensagem))    > 0 ) or
      ( POS('HELLO', AnsiUpperCase(pMensagem))      > 0 ) or ( POS('HI', AnsiUpperCase(pMensagem))        > 0 ) or
      ( POS('INICIO', AnsiUpperCase(pMensagem))     > 0 ) or ( POS('OI', AnsiUpperCase(pMensagem))        > 0 )then
      begin
        mensagem :=
        TInject1.Emoticons.AtendenteH+ 'Olá *'+pContato+'!*\n\n'+
        'Você está no auto atendimento!\n\n'+
        'Digite um número:\n\n'+
        TInject1.Emoticons.Um             +' Suporte\n\n'+
        TInject1.Emoticons.Dois           +' Vendas\n\n'+
        TInject1.Emoticons.Tres           +' Financeiro\n\n'+
        TInject1.Emoticons.Quatro         +' Horários de atendimento\n\n';
        TInject1.SendFile(pTelefone, ExtractFileDir(Application.ExeName)+'\Img\logo.png', mensagem);
        Result := True;
        exit;
      end;
   exit;
end;
procedure TfrmPrincipal.whatsOnClick(Sender: TObject);
begin
  if not TInject1.FormQrCodeShowing then
     TInject1.FormQrCodeShowing := True;
end;



end.