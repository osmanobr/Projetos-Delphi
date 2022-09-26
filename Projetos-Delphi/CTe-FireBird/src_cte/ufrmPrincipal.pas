unit ufrmPrincipal;

{$I jvcl.inc}

interface

uses
  Windows,
  Messages,
  SysUtils,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  JvOutlookBar,
  ComCtrls,
  StdCtrls,
  Menus,
  ExtCtrls,
  ImgList,
  JvComponent,
  JvExControls,
  ActnList,
  JvGIF,
  jpeg,
  System.Actions,
  JvExExtCtrls,
  JvExtComponent,
  JvPanel,
  JvComponentBase,
  JvNavigationPane,
  JvJVCLUtils,
  JvImageList,
  JvExComCtrls,
  JvComCtrls,
  System.ImageList, dxGDIPlusClasses, Vcl.Buttons, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP;

type
  TfrmPrincipal = class(TForm)
    popOL: TPopupMenu;
    Splitter1: TSplitter;
    Defaultpopupmenu1: TMenuItem;
    popPage: TPopupMenu;
    Editpagecaption1: TMenuItem;
    statusBAR: TStatusBar;
    Smallbuttons1: TMenuItem;
    Smallbuttons2: TMenuItem;
    act_list: TActionList;
    pnlMaster: TJvPanel;
    timer_principal: TTimer;
    JvOutlookBar1: TJvOutlookBar;
    JvNavPaneStyleManager: TJvNavPaneStyleManager;
    actSairWindows: TAction;
    img_ico_32x32: TJvImageList;
    img_ico_32x32_menu: TJvImageList;
    actBackup: TAction;
    actEmpresaManutencao: TAction;
    actCTeManutencao: TAction;
    actCertificadoConfig: TAction;
    actClientesTomadores: TAction;
    actFinalizarEmitente: TAction;
    actGerarXMLContabilidade: TAction;
    PnlHeader: TPanel;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure JvOutlookBar1ButtonClick(Sender: TObject; Index: Integer);
    procedure JvOutlookBar1PageChanging(Sender: TObject; Index: Integer; var AllowChange: Boolean);
    procedure JvOutlookBar1PageChange(Sender: TObject; Index: Integer);
    procedure acEditPageCaptionExecute(Sender: TObject);
    procedure chkFlatClick(Sender: TObject);
    procedure timer_principalTimer(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure JvOutlookBar1Pages1Buttons2Click(Sender: TObject);
    procedure actSairWindowsExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actBackupExecute(Sender: TObject);
    procedure actEmpresaManutencaoExecute(Sender: TObject);
    procedure actClientesTomadoresExecute(Sender: TObject);
    procedure actFinalizarEmitenteExecute(Sender: TObject);
    procedure actCTeManutencaoExecute(Sender: TObject);
    procedure actCertificadoConfigExecute(Sender: TObject);
    procedure actGerarXMLContabilidadeExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure DoCustomDraw(Sender: TObject; ACanvas: TCanvas; ARect: TRect; AStage: TJvOutlookBarCustomDrawStage; AIndex: Integer; ADown, AInside: Boolean;
      var DefaultDraw: Boolean);


  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses
  ufrmDefaultConsulta,
  udtmDefault,
  ufrmBACKUP,
  ufrmEMPRESASmanutencao,
  uclassCONFIGini,
  ufrmPESSOASmanutencao,
  uclassPESSOA,
  uclassEMPRESA,
  ufrmCTemanutencao,
  uclassCTe,
  ufrmCERTIFICADOconfig,
  ufrmXMLgeracao,
  ACBrUtil, System.json;

  var
  AvisoLabel : TLabel;


procedure TfrmPrincipal.Button2Click(Sender: TObject);
begin
  JvOutlookBar1.LargeImages := nil;
  JvOutlookBar1.SmallImages := nil;
end;

procedure TfrmPrincipal.JvOutlookBar1ButtonClick(Sender: TObject; Index: Integer);
var
  P: TJvOutlookBarPage;
begin
  if (Index > - 1) then
    with JvOutlookBar1 do
    begin
      P       := Pages[ ActivePageIndex ];
      Caption := Format('Você selecionou "%s" na página "%s"', [ P.Buttons[ Index ].Caption, P.Caption ]);
    end;
end;

procedure TfrmPrincipal.JvOutlookBar1PageChanging(Sender: TObject; Index: Integer; var AllowChange: Boolean);
begin
  with JvOutlookBar1 do
    if (ActivePageIndex > - 1) and (Index > - 1) then
      Caption := Format('Pagina alterada de "%s" para "%s"', [ Pages[ ActivePageIndex ].Caption, Pages[ Index ].Caption ]);
end;

procedure TfrmPrincipal.JvOutlookBar1Pages1Buttons2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.timer_principalTimer(Sender: TObject);
begin

  PnlHeader.Caption := '  '+oEmpresa.RAZAO_SOCIAL;

  statusBAR.Panels[ 0 ].Text := FormatDateTime('dd/mm/yyy hh:mm:ss', Now);
  statusBAR.Panels[ 1 ].Text := oEmpresa.RAZAO_SOCIAL;

  actEmpresaManutencao.Enabled     := oEmpresa.ID < 0;
  actFinalizarEmitente.Enabled     := oEmpresa.ID > 0;
  actClientesTomadores.Enabled     := oEmpresa.ID > 0;
  actCTeManutencao.Enabled         := oEmpresa.ID > 0;
  actCertificadoConfig.Enabled     := oEmpresa.ID > 0;
  actGerarXMLContabilidade.Enabled := oEmpresa.ID > 0;
end;

procedure TfrmPrincipal.JvOutlookBar1PageChange(Sender: TObject; Index: Integer);
begin
  if Index > - 1 then
    Caption := Format('Pagina alterada para "%s"', [ JvOutlookBar1.Pages[ Index ].Caption ]);
end;

procedure TfrmPrincipal.Action1Execute(Sender: TObject);
begin
  TfrmDefaultConsulta.Manutencao(pnlMaster);
end;

procedure TfrmPrincipal.actEmpresaManutencaoExecute(Sender: TObject);
begin
  TfrmEMPRESASmanutencao.Manutencao(pnlMaster);
end;

procedure TfrmPrincipal.actFinalizarEmitenteExecute(Sender: TObject);
begin
  if Assigned(frmDefaultConsulta) then
    FreeAndNil(frmDefaultConsulta);

  oEmpresa.Clear;
end;

procedure TfrmPrincipal.actGerarXMLContabilidadeExecute(Sender: TObject);
begin
  TfrmXMLgeracao.Gerar(EmptyStr);
end;

procedure TfrmPrincipal.actCTeManutencaoExecute(Sender: TObject);
begin
  TfrmCTeManutencao.Manutencao(pnlMaster);
end;

procedure TfrmPrincipal.actSairWindowsExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.acEditPageCaptionExecute(Sender: TObject);
begin
  with JvOutlookBar1.PopupObject as TJvOutlookBarPage do
    EditCaption;
end;

procedure TfrmPrincipal.actBackupExecute(Sender: TObject);
begin
  if Assigned(frmDefaultConsulta) then
    FreeAndNil(frmDefaultConsulta);

  TfrmBACKUP.ShowForm;
end;

procedure TfrmPrincipal.actCertificadoConfigExecute(Sender: TObject);
begin
  TfrmCERTIFICADOconfig.showConfig(mCTe);
end;

procedure TfrmPrincipal.actClientesTomadoresExecute(Sender: TObject);
begin
  TfrmPESSOASmanutencao.Manutencao(pnlMaster);
end;

procedure TfrmPrincipal.chkFlatClick(Sender: TObject);
const
  cBorderStyle: array [ Boolean ] of TBorderStyle = (bsSingle, bsNone);
begin

end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dtmDefault.cnx_BD.Close;
end;

procedure TfrmPrincipal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := Application.MessageBox(PWideChar('Deseja realmente encerrar o Aplicativo?'), 'Encerrar', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = ID_YES;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);

begin
  AvisoLabel := TLabel.create(application);
  AvisoLabel.Parent := pnlMaster;
  AvisoLabel.Name := 'AvisoLabel1';
  AvisoLabel.Left := 10;
  AvisoLabel.Top := 10;
  AvisoLabel.font.Size := 16;
  AvisoLabel.font.color := clBLUE;
  refresh;
  AvisoLabel.caption:='Bem vindo!';

  JvNavPaneStyleManager.Theme := nptStandard;
  JvOutlookBar1.Invalidate;
  JvOutlookBar1.OnCustomDraw := DoCustomDraw;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  oEmpresa.GetEmpresa(1);
end;

procedure TfrmPrincipal.DoCustomDraw(Sender: TObject; ACanvas: TCanvas; ARect: TRect; AStage: TJvOutlookBarCustomDrawStage; AIndex: Integer; ADown, AInside: Boolean;
  var DefaultDraw: Boolean);
begin
  DefaultDraw := False;
  case AStage of
    odsBackground:
      with JvNavPaneStyleManager.Colors do
        GradientFillRect(ACanvas, ARect, HeaderColorFrom, HeaderColorTo, fdTopToBottom, 255);
    odsPage:
      with JvNavPaneStyleManager.Colors do
        GradientFillRect(ACanvas, ARect, ButtonColorFrom, ButtonColorTo, fdTopToBottom, 255);
    odsPageButton:
      begin
        with JvNavPaneStyleManager.Colors do
          GradientFillRect(ACanvas, ARect, HeaderColorFrom, HeaderColorTo, fdTopToBottom, 255);
        if ADown then
          OffsetRect(ARect, 1, 1);
        ACanvas.Font.Color := clWhite;
        DrawText(ACanvas.Handle, PChar(JvOutlookBar1.Pages[ AIndex ].Caption), Length(JvOutlookBar1.Pages[ AIndex ].Caption), ARect, DT_SINGLELINE or DT_VCENTER or DT_CENTER);
      end;
    odsButtonFrame:
      begin
        if ADown then
          ACanvas.Brush.Color := clNavy
        else
          ACanvas.Brush.Color := clBlack;
        ACanvas.FrameRect(ARect);
        InflateRect(ARect, - 1, - 1);
        if not ADown then
          ACanvas.Brush.Color := clWhite;
        ACanvas.FrameRect(ARect);
      end;
    odsButton:
      DefaultDraw := True;
  end;
end;

end.
