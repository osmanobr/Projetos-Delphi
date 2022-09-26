unit ufrmCTEcancela;

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
  FireDAC.Comp.Client;

type
  TfrmCTEcancela = class(TfrmDefaultClean)
    memJustificativa: TMemo;
    updCancelado: TFDQuery;
    procedure btnConfirmarClick(Sender: TObject);
  private
  public
    FXML: String;
    class function Cancela(AXML_CTeOS: AnsiString): TModalResult;
  end;

var
  frmCTEcancela: TfrmCTEcancela;

implementation

uses
  udtmDefault,
  udtmCTe,
  uclassEMPRESA,
  pcnConversao;

{$R *.dfm}

procedure TfrmCTEcancela.btnConfirmarClick(Sender: TObject);
var
  vID, vID_SERIE: Integer;
  DataHoraEvento: TDateTime;
  NumeroLote    : Integer;
begin
  if Length(Trim(memJustificativa.Text)) < 15 then
    raise Exception.Create('A justificativa deve ter ao menos 15 caracteres!');

  if Application.MessageBox('Deseja realmente cancelar o  CT-e?', 'Cancelamento', MB_YESNO) = mrYes then
  begin
    dtmCTe.Configurar;

      // numero do lote de envio
    DataHoraEvento := NOW;
    NumeroLote     := StrToInt(FormatDateTime('yymmddhhmm', NOW));

      // carregar o XML do CTe-OS
    dtmCTe.ACBrCTe.Conhecimentos.Clear;
    dtmCTe.ACBrCTe.Conhecimentos.LoadFromString(FXML);

      // dados do CTe-OS
    vID       := dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].CTe.Ide.nCT;
    vID_SERIE := dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].CTe.Ide.serie;

      // Preenchimento do cancelamento
    dtmCTe.ACBrCTe.EventoCTe.Evento.Clear;
    dtmCTe.ACBrCTe.EventoCTe.idLote := NumeroLote;

    with dtmCTe.ACBrCTe.EventoCTe.Evento.new do
    begin
      infEvento.CNPJ            := oEmpresa.CNPJ;
      infEvento.dhEvento        := DataHoraEvento;
      infEvento.tpEvento        := teCancelamento;
      infEvento.chCTe           := dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].CTe.procCTe.chCTe;
      infEvento.detEvento.nProt := dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].CTe.procCTe.nProt;
      infEvento.detEvento.xJust := memJustificativa.Text;
    end;

      // envio do cancelamento
    if dtmCTe.ACBrCTe.EnviarEvento(NumeroLote) then
    begin
      with dtmCTe.ACBrCTe.WebServices do
      begin
        if EnvEvento.EventoRetorno.retEvento.Items[ 0 ].RetInfEvento.cStat <> 135 then
        begin
          raise Exception.CreateFmt('Ocorreu o seguinte erro ao cancelar o CT-e:' + sLineBreak + 'Código:%d' + sLineBreak + 'Motivo: %s',
            [ EnvEvento.EventoRetorno.retEvento.Items[ 0 ].RetInfEvento.cStat, EnvEvento.EventoRetorno.retEvento.Items[ 0 ].RetInfEvento.xMotivo ]);
        end;

        try
          updCancelado.ParamByName('ID_EMPRESA').Value := oEmpresa.ID;
          updCancelado.ParamByName('ID_CTE').Value     := vID;
          updCancelado.ParamByName('ID_SERIE').Value   := vID_SERIE;
          updCancelado.ParamByName('XML_CANC_DATAHORA').Value := EnvEvento.EventoRetorno.retEvento.Items[ 0 ].RetInfEvento.dhRegEvento;
          updCancelado.ParamByName('XML_CANC_PROTOCOLO').Value := EnvEvento.EventoRetorno.retEvento.Items[ 0 ].RetInfEvento.nProt;
          updCancelado.ParamByName('XML_CANC_STRING').Value := EnvEvento.EventoRetorno.retEvento.Items[ 0 ].RetInfEvento.XML;
          updCancelado.ParamByName('XML_STATUS_CODIGO').Value := EnvEvento.EventoRetorno.retEvento.Items[ 0 ].RetInfEvento.cStat;
          updCancelado.ParamByName('XML_XMOTIVO').AsString := EnvEvento.EventoRetorno.retEvento.Items[ 0 ].RetInfEvento.xMotivo;
          updCancelado.Prepare;
          updCancelado.ExecSQL;

          dtmCTe.SalvarEvento(vID, vID_SERIE, NumeroLote, EnvEvento.EventoRetorno.retEvento.Items[ 0 ].RetInfEvento.dhRegEvento, memJustificativa.Text, 'CANC');

          dtmDefault.cnx_BD.CommitRetaining;

          Application.MessageBox('Cancelamento', 'Cancelamento efetuado com sucesso!', MB_ICONINFORMATION);
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
        raise Exception.Create('Ocorreram erros ao tentar efetuar o cancelamento:' + sLineBreak + 'Lote: ' + IntToStr(EventoRetorno.idLote) + sLineBreak + 'Ambiente: ' +
            TpAmbToStr(EventoRetorno.tpAmb) + sLineBreak + 'Orgao: ' + IntToStr(EventoRetorno.cOrgao) + sLineBreak + 'Status: ' + IntToStr(EventoRetorno.cStat) + sLineBreak +
            'Motivo: ' + EventoRetorno.xMotivo);
      end;
    end;
  end;
end;

class function TfrmCTEcancela.Cancela(AXML_CTeOS: AnsiString): TModalResult;
begin
  frmCTEcancela := TfrmCTEcancela.Create(Nil);
  try
    frmCTEcancela.FXML := string(AXML_CTeOS);

    Result := frmCTEcancela.ShowModal;
  finally
    FreeAndNil(frmCTEcancela);
  end;
end;

end.
