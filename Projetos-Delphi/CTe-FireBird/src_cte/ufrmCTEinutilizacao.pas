unit ufrmCTEinutilizacao;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  ufrmDefaultClean,
  Vcl.StdCtrls,
  ACBrBase,
  ACBrEnterTab,
  JvExControls,
  JvSpeedButton,
  Vcl.ExtCtrls,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt,
  Data.DB,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  JvSpin,
  Vcl.Mask,
  JvExMask,
  JvToolEdit,
  JvMaskEdit,
  Vcl.ComCtrls,
  JvExComCtrls,
  JvDateTimePicker,
  JvDBDateTimePicker,
  JvgGroupBox,
  Vcl.Grids,
  Vcl.DBGrids,
  JvExDBGrids,
  JvDBGrid,
  JvDBSpinEdit,
  JvDBControls,
  Vcl.DBCtrls,
  System.UITypes;

type
  TfrmCTEinutilizacao = class(TfrmDefaultClean)
    JvgGroupBox3: TJvgGroupBox;
    Label3: TLabel;
    JvgGroupBox19: TJvgGroupBox;
    Panel13: TPanel;
    Panel14: TPanel;
    JvDBGrid2: TJvDBGrid;
    Panel16: TPanel;
    JvgGroupBox2: TJvgGroupBox;
    insertINUT: TFDQuery;
    Label1: TLabel;
    edtNumeroInicial: TJvSpinEdit;
    edtNumeroFinal: TJvSpinEdit;
    edtJustificativa: TMemo;
    Label2: TLabel;
    edtAno: TJvSpinEdit;
    Label4: TLabel;
    edtSerie: TJvSpinEdit;
    qryINUT: TFDQuery;
    dtsqryINUT: TDataSource;
    qryINUTID_EMPRESA: TIntegerField;
    qryINUTID_EVENTO: TIntegerField;
    qryINUTDT_CADASTRO: TSQLTimeStampField;
    qryINUTANO: TIntegerField;
    qryINUTNUMERO_INICIAL: TIntegerField;
    qryINUTNUMERO_FINAL: TIntegerField;
    qryINUTSERIE: TIntegerField;
    qryINUTPROTOCOLO: TStringField;
    qryINUTDTHR_RECEBIMENTO: TSQLTimeStampField;
    qryINUTJUSTIFICATIVA: TBlobField;
    qryINUTXML: TBlobField;
    SaveDialog1: TSaveDialog;
    btnImprimirXML: TJvSpeedButton;
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryINUTBeforeOpen(DataSet: TDataSet);
    procedure btnVisualizarXMLClick(Sender: TObject);
  private
  public
    FXML: String;
    class function Inutilizar: TModalResult; static;
  end;

var
  frmCTEinutilizacao: TfrmCTEinutilizacao;

implementation

uses
  udtmDefault,
  udtmCTe,
  uclassEMPRESA,
  pcnConversao,
  pcteConversaoCTe,
  uclassCTE,
  uclassPESSOA,
  ACBrUtil,
  DateUtils;

{$R *.dfm}

procedure TfrmCTEinutilizacao.btnCancelarClick(Sender: TObject);
begin
  dtmDefault.cnx_BD.RollbackRetaining;

  FFecharOK := True;

  Self.Close;
  Self.ModalResult := mrCancel;
end;

procedure TfrmCTEinutilizacao.btnConfirmarClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente inutilizar a numeração informada?', 'Inutilização', MB_ICONQUESTION + MB_YESNO) = ID_YES then
  begin
    if edtAno.Value <= 0 then
    begin
      edtAno.SetFocus;
      raise EDatabaseError.Create('Informe o ano.');
    end;

    if edtNumeroInicial.Value <= 0 then
    begin
      edtNumeroInicial.SetFocus;
      raise EDatabaseError.Create('Informe o número inicial.');
    end;

    if edtNumeroFinal.Value <= 0 then
    begin
      edtNumeroFinal.SetFocus;
      raise EDatabaseError.Create('Informe o número final.');
    end;

    if edtNumeroFinal.Value < edtNumeroInicial.Value then
    begin
      edtNumeroFinal.SetFocus;
      raise EDatabaseError.Create('O Número final dever ser maior ou igual ao Número inicial.');
    end;

    if Trim(edtJustificativa.Text) = EmptyStr then
    begin
      edtJustificativa.SetFocus;
      raise EDatabaseError.Create('Informe a justificativa da inutilização.');
    end;

      // Rotina de inutilização
    try
      try
        dtmCTe.Configurar;

        dtmCTe.ACBrCTe.WebServices.Inutiliza(ACBrUtil.OnlyNumber(oEmpresa.CNPJ), string(edtJustificativa.Text), StrToIntDef(edtAno.Text, 0), 57, StrToIntDef(edtSerie.Text, 0),
          StrToIntDef(edtNumeroInicial.Text, 0), StrToIntDef(edtNumeroFinal.Text, 0));

        if dtmCTe.ACBrCTe.WebServices.Inutilizacao.cStat = 102 then
        begin
          insertINUT.ParamByName('ID_EMPRESA').Value       := oEmpresa.ID;
          insertINUT.ParamByName('ID_EVENTO').Value        := oCTe.GetNEW_ID_INITILIZACAO;
          insertINUT.ParamByName('DT_CADASTRO').Value      := Now;
          insertINUT.ParamByName('ANO').Value              := StrToIntDef(edtAno.Text, 0);
          insertINUT.ParamByName('NUMERO_INICIAL').Value   := StrToIntDef(edtNumeroInicial.Text, 0);
          insertINUT.ParamByName('NUMERO_FINAL').Value     := StrToIntDef(edtNumeroFinal.Text, 0);
          insertINUT.ParamByName('SERIE').Value            := StrToIntDef(edtSerie.Text, 0);
          insertINUT.ParamByName('PROTOCOLO').Value        := dtmCTe.ACBrCTe.WebServices.Inutilizacao.Protocolo;
          insertINUT.ParamByName('DTHR_RECEBIMENTO').Value := dtmCTe.ACBrCTe.WebServices.Inutilizacao.dhRecbto;
          insertINUT.ParamByName('JUSTIFICATIVA').Value    := edtJustificativa.Lines.Text;
          insertINUT.ParamByName('XML').Value              := dtmCTe.ACBrCTe.WebServices.Inutilizacao.XML_procInutCTe;
          insertINUT.ExecSQL;

          dtmDefault.cnx_BD.CommitRetaining;
        end
        else
        begin
          raise EDatabaseError.CreateFmt('Código:%d'#13'Motivo: %s', [ dtmCTe.ACBrCTe.WebServices.Inutilizacao.cStat, dtmCTe.ACBrCTe.WebServices.Inutilizacao.xMotivo ]);
        end;
      finally
      end;

      MessageDlg('Inutilização da numeração efetuada com sucesso.', mtInformation, [ mbOK ], 0);

      inherited;
    except
      on E: Exception do
      begin
        dtmDefault.cnx_BD.RollbackRetaining;

        MessageDlg('Ocorreu o seguinte erro ao tentar inutilizar a númeração informada:' + sLineBreak + E.Message, mtError, [ mbOK ], 0);
      end;
    end;
  end;
end;

procedure TfrmCTEinutilizacao.btnVisualizarXMLClick(Sender: TObject);
begin
  dtmCTe.ACBrCTe.InutCTe.LerXMLFromString(qryINUTXML.AsString);
  dtmCTe.ACBrCTe.ImprimirInutilizacao;
end;

class function TfrmCTEinutilizacao.Inutilizar: TModalResult;
begin
  frmCTEinutilizacao := TfrmCTEinutilizacao.Create(Nil);
  try
    Result := frmCTEinutilizacao.ShowModal;
  finally
    FreeAndNil(frmCTEinutilizacao);
  end;
end;

procedure TfrmCTEinutilizacao.qryINUTBeforeOpen(DataSet: TDataSet);
begin
  TFDQuery(DataSet).Params[ 0 ].AsInteger := oEmpresa.ID;
end;

procedure TfrmCTEinutilizacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryINUT.Close;

  inherited;
end;

procedure TfrmCTEinutilizacao.FormShow(Sender: TObject);
begin
  qryINUT.Open;
end;

end.
