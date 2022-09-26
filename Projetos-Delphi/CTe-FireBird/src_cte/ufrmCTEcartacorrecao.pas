unit ufrmCTEcartacorrecao;

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
  Vcl.DBCtrls;

type
  TfrmCTEcartacorrecao = class(TfrmDefaultClean)
    JvgGroupBox3: TJvgGroupBox;
    Label21: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    JvgGroupBox19: TJvgGroupBox;
    Panel12: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    GRUPO_ALTERADO: TJvMaskEdit;
    Panel13: TPanel;
    Panel14: TPanel;
    JvDBGrid2: TJvDBGrid;
    Panel16: TPanel;
    btnEXCLUIR: TJvSpeedButton;
    btnINCLUIR: TJvSpeedButton;
    CAMPO_ALTERADO: TJvMaskEdit;
    Label1: TLabel;
    NOVA_INFORMACAO: TJvMaskEdit;
    dtstabCTE_EVENTO: TDataSource;
    dtstabCTE_EVENTO_CCE_ITENS: TDataSource;
    ID_SERIE: TJvDBMaskEdit;
    ID_CTE: TJvDBMaskEdit;
    DTHR_EVENTO: TJvDBDateTimePicker;
    ID_SEQUENCIA: TJvDBSpinEdit;
    JvgGroupBox2: TJvgGroupBox;
    Label6: TLabel;
    TIPO: TJvDBMaskEdit;
    GravarEvento: TFDQuery;
    OBSERVACAO: TDBMemo;
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure dtstabCTE_EVENTO_CCE_ITENSDataChange(Sender: TObject; Field: TField);
    procedure btnEXCLUIRClick(Sender: TObject);
    procedure btnINCLUIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
  public
    FXML: String;
    class function Evento(AXML_CTE: AnsiString): TModalResult;
  end;

var
  frmCTEcartacorrecao: TfrmCTEcartacorrecao;

implementation

uses
  udtmDefault,
  udtmCTe,
  uclassEMPRESA,
  pcnConversao,
  pcteConversaoCTe,
  uclassCTE;

{$R *.dfm}

procedure TfrmCTEcartacorrecao.btnCancelarClick(Sender: TObject);
begin
  dtstabCTE_EVENTO_CCE_ITENS.DataSet.Cancel;
  dtstabCTE_EVENTO.DataSet.Cancel;

  dtmDefault.cnx_BD.RollbackRetaining;

  FFecharOK := True;

  Self.Close;
  Self.ModalResult := mrCancel;
end;

procedure TfrmCTEcartacorrecao.btnConfirmarClick(Sender: TObject);
var
    //  vID, vID_SERIE: Integer;
  DataHoraEvento: TDateTime;
  NumeroLote    : Integer;
begin
  if Application.MessageBox('Deseja realmente enviar a Carta de Correção este CT-e ?', 'Aviso', MB_YESNO) = mrYes then
  begin
    dtmCTe.Configurar;

      // numero do lote de envio
    DataHoraEvento := NOW;
    NumeroLote     := StrToInt(FormatDateTime('yymmddhhmm', NOW));

      // carregar o XML do CTe
    dtmCTe.ACBrCTe.Conhecimentos.Clear;
    dtmCTe.ACBrCTe.Conhecimentos.LoadFromString(FXML);

      // dados do CTe
      //    vID := dtmCTe.ACBrCTe.Conhecimentos.Items[0].CTe.Ide.nCT;
      //    vID_SERIE  := dtmCTe.ACBrCte.Conhecimentos.Items[0].CTe.Ide.serie;

      // Preenchimento do cancelamento
    dtmCTe.ACBrCTe.EventoCTe.Evento.Clear;
    dtmCTe.ACBrCTe.EventoCTe.idLote := NumeroLote;

    with dtmCTe.ACBrCTe.EventoCTe.Evento.new do
    begin
      infEvento.chCTe           := dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].CTe.procCTe.chCTe;
      infEvento.CNPJ            := oEmpresa.CNPJ;
      infEvento.dhEvento        := DataHoraEvento;
      infEvento.tpEvento        := teCCe;
      infEvento.nSeqEvento      := dtstabCTE_EVENTO.DataSet.FieldByName('ID_SEQUENCIA').AsInteger;
      infEvento.detEvento.xJust := dtstabCTE_EVENTO.DataSet.FieldByName('OBSERVACAO').AsString;

      dtmCTe.ACBrCTe.EventoCTe.Evento.Items[ 0 ].infEvento.detEvento.infCorrecao.Clear;
      dtstabCTE_EVENTO_CCE_ITENS.DataSet.First;

      while Not dtstabCTE_EVENTO_CCE_ITENS.DataSet.Eof do
      begin
        with dtmCTe.ACBrCTe.EventoCTe.Evento.Items[ 0 ].infEvento.detEvento.infCorrecao.new do
        begin
          grupoAlterado := dtstabCTE_EVENTO_CCE_ITENS.DataSet.FieldByName('CAMPO_GRUPO').AsString.Trim;
          campoAlterado := dtstabCTE_EVENTO_CCE_ITENS.DataSet.FieldByName('CAMPO_DESCRICAO').AsString.Trim;
          valorAlterado := dtstabCTE_EVENTO_CCE_ITENS.DataSet.FieldByName('CAMPO_CONTEUDO').AsString.Trim;
        end;

        dtstabCTE_EVENTO_CCE_ITENS.DataSet.Next;
      end;
    end;

      // envia evento
    if dtmCTe.ACBrCTe.EnviarEvento(NumeroLote) then
    begin
      with dtmCTe.ACBrCTe.WebServices do
      begin
        if EnvEvento.EventoRetorno.retEvento.Items[ 0 ].RetInfEvento.cStat <> 135 then
        begin
          raise Exception.CreateFmt('Ocorreu o seguinte erro ao enviar o evento da Carta de correção:' + sLineBreak + 'Código:%d' + sLineBreak + 'Motivo: %s',
            [ EnvEvento.EventoRetorno.retEvento.Items[ 0 ].RetInfEvento.cStat, EnvEvento.EventoRetorno.retEvento.Items[ 0 ].RetInfEvento.xMotivo ]);
        end;

        try
          if dtstabCTE_EVENTO.DataSet.State in [ dsBrowse ] then
            dtstabCTE_EVENTO.DataSet.Edit;

          dtstabCTE_EVENTO.DataSet.FieldByName('ID_SERIE').AsInteger := dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].CTe.Ide.serie;
          dtstabCTE_EVENTO.DataSet.FieldByName('ID_CTE').AsInteger := dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].CTe.Ide.nCT;
          dtstabCTE_EVENTO.DataSet.FieldByName('DTHR_EVENTO').AsDateTime := DataHoraEvento;
          dtstabCTE_EVENTO.DataSet.FieldByName('LOTE').Value := NumeroLote;
          dtstabCTE_EVENTO.DataSet.FieldByName('DTHR_PROTOCOLO').Value := EnvEvento.EventoRetorno.retEvento.Items[ 0 ].RetInfEvento.dhRegEvento;
          dtstabCTE_EVENTO.DataSet.FieldByName('NUMERO_PROTOCOLO').Value := EnvEvento.EventoRetorno.retEvento.Items[ 0 ].RetInfEvento.nProt;
          dtstabCTE_EVENTO.DataSet.FieldByName('CSTAT').Value := EnvEvento.EventoRetorno.retEvento.Items[ 0 ].RetInfEvento.cStat;
          dtstabCTE_EVENTO.DataSet.FieldByName('HISTORICO').Value := EnvEvento.EventoRetorno.retEvento.Items[ 0 ].RetInfEvento.xMotivo;
          dtstabCTE_EVENTO.DataSet.FieldByName('XML').Value := EnvEvento.EventoRetorno.retEvento.Items[ 0 ].RetInfEvento.XML;
          dtstabCTE_EVENTO.DataSet.Post;

          dtmDefault.cnx_BD.CommitRetaining;

          Application.MessageBox('Carta de Correção enviada com sucesso!', 'Aviso', MB_ICONINFORMATION);
          FFecharOK := True;

          Self.Close;
          Self.ModalResult := mrOk;
        except
          on E: Exception do
          begin
            dtmDefault.cnx_BD.RollbackRetaining;

            raise Exception.Create('Ocorreram erros ao gravar o evento no banco de dados' + sLineBreak + E.Message);
          end;
        end;
      end;
    end
    else
    begin
      with dtmCTe.ACBrCTe.WebServices.EnvEvento do
      begin
        raise Exception.Create('Ocorreram erros ao tentar enviar o evento:' + sLineBreak + 'Lote: ' + IntToStr(EventoRetorno.idLote) + sLineBreak + 'Ambiente: ' +
            TpAmbToStr(EventoRetorno.tpAmb) + sLineBreak + 'Orgao: ' + IntToStr(EventoRetorno.cOrgao) + sLineBreak + 'Status: ' + IntToStr(EventoRetorno.cStat) + sLineBreak +
            'Motivo: ' + EventoRetorno.xMotivo);
      end;
    end;
  end;
end;

procedure TfrmCTEcartacorrecao.btnEXCLUIRClick(Sender: TObject);
begin
  dtstabCTE_EVENTO_CCE_ITENS.DataSet.Delete;
end;

procedure TfrmCTEcartacorrecao.btnINCLUIRClick(Sender: TObject);
begin
  if Trim(GRUPO_ALTERADO.Text) = '' then
  begin
    Exit;

    GRUPO_ALTERADO.SetFocus;
  end;

  if Trim(GRUPO_ALTERADO.Text) = '' then
  begin
    Exit;
    GRUPO_ALTERADO.SetFocus;
  end;

  if Trim(GRUPO_ALTERADO.Text) = '' then
  begin
    Exit;
    GRUPO_ALTERADO.SetFocus;
  end;

  if TFDQuery(dtstabCTE_EVENTO.DataSet).State in [ dsInsert ] then
  begin
    dtstabCTE_EVENTO.DataSet.Post;
    dtstabCTE_EVENTO.DataSet.Edit;
  end;

  try
    TFDQuery(dtstabCTE_EVENTO_CCE_ITENS.DataSet).Append;
    TFDQuery(dtstabCTE_EVENTO_CCE_ITENS.DataSet).FieldByName('CAMPO_GRUPO').Value := Trim(GRUPO_ALTERADO.Text);
    TFDQuery(dtstabCTE_EVENTO_CCE_ITENS.DataSet).FieldByName('CAMPO_DESCRICAO').Value := Trim(CAMPO_ALTERADO.Text);
    TFDQuery(dtstabCTE_EVENTO_CCE_ITENS.DataSet).FieldByName('CAMPO_CONTEUDO').Value := Trim(NOVA_INFORMACAO.Text);
    TFDQuery(dtstabCTE_EVENTO_CCE_ITENS.DataSet).Prepare;
    TFDQuery(dtstabCTE_EVENTO_CCE_ITENS.DataSet).Post;

    GRUPO_ALTERADO.Clear;
    CAMPO_ALTERADO.Clear;
    NOVA_INFORMACAO.Clear;
  except
    on E: Exception do
    begin
      dtstabCTE_EVENTO_CCE_ITENS.DataSet.Cancel;
      raise Exception.Create(E.Message);
    end;
  end;
end;

procedure TfrmCTEcartacorrecao.dtstabCTE_EVENTO_CCE_ITENSDataChange(Sender: TObject; Field: TField);
begin
  if Assigned(dtstabCTE_EVENTO_CCE_ITENS.DataSet) then
  begin
    btnEXCLUIR.Enabled   := not dtstabCTE_EVENTO_CCE_ITENS.DataSet.IsEmpty;
    btnConfirmar.Enabled := not dtstabCTE_EVENTO_CCE_ITENS.DataSet.IsEmpty;
  end;
end;

class function TfrmCTEcartacorrecao.Evento(AXML_CTE: AnsiString): TModalResult;
begin
  frmCTEcartacorrecao := TfrmCTEcartacorrecao.Create(Nil);
  try
    frmCTEcartacorrecao.FXML := string(AXML_CTE);
    Result                   := frmCTEcartacorrecao.ShowModal;
  finally
    FreeAndNil(frmCTEcartacorrecao);
  end;
end;

procedure TfrmCTEcartacorrecao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dtstabCTE_EVENTO.DataSet.Close;

  inherited;
end;

procedure TfrmCTEcartacorrecao.FormShow(Sender: TObject);
var
  AID_CTE, AID_SERIE: Integer;
    //  ADT_HR_EMISSAO: TDateTime;
begin
  dtmCTe.ACBrCTe.Conhecimentos.Clear;
  dtmCTe.ACBrCTe.Conhecimentos.LoadFromString(FXML);

  AID_CTE   := dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].CTe.Ide.nCT;
  AID_SERIE := dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].CTe.Ide.serie;

  dtstabCTE_EVENTO.DataSet.Close;
  dtstabCTE_EVENTO.DataSet.Open;
  dtstabCTE_EVENTO.DataSet.Append;
  dtstabCTE_EVENTO.DataSet.FieldByName('ID_SERIE').AsInteger := dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].CTe.Ide.serie;
  dtstabCTE_EVENTO.DataSet.FieldByName('ID_CTE').AsInteger := dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].CTe.Ide.nCT;
  dtstabCTE_EVENTO.DataSet.FieldByName('ID_EVENTO').AsInteger := oCTe.GetNEW_ID_CTE_EVENTO(AID_CTE, AID_SERIE);
  dtstabCTE_EVENTO.DataSet.FieldByName('ID_SEQUENCIA').AsInteger := oCTe.GetNEW_ID_CTE_EVENTO_SEQUENCIA(AID_CTE, AID_SERIE, 'CCE');
  dtstabCTE_EVENTO.DataSet.FieldByName('TIPO').AsString := 'CCE';
  dtstabCTE_EVENTO.DataSet.FieldByName('DTHR_EVENTO').AsDateTime := NOW;
end;

end.
