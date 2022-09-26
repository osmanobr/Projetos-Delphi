unit ufrmCTemanutencao;

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
  ufrmDefaultConsulta,
  Data.DB,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  ACBrBase,
  ACBrEnterTab,
  Vcl.DBCtrls,
  JvDBControls,
  JvLabel,
  Vcl.Grids,
  Vcl.DBGrids,
  JvExDBGrids,
  JvDBGrid,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.Mask,
  JvExMask,
  JvToolEdit,
  JvMaskEdit,
  JvExControls,
  JvSpeedButton,
  JvExExtCtrls,
  JvImage,
  JvExStdCtrls,
  JvGroupBox,
  Vcl.ComCtrls,
  JvExComCtrls,
  JvStatusBar,
  JvHint,
  dxGDIPlusClasses,
  System.UITypes, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, IdAntiFreezeBase, Vcl.IdAntiFreeze, IdRawBase, IdRawClient,
  IdIcmpClient;

type
  TfrmCTeManutencao = class(TfrmDefaultConsulta)
    btnEnviarXML: TJvSpeedButton;
    btnVisualizarXML: TJvSpeedButton;
    btnCancelarXML: TJvSpeedButton;
    btnImprimirXML: TJvSpeedButton;
    JvSpeedButton3: TJvSpeedButton;
    btnConsultarXML: TJvSpeedButton;
    btnCartaXML: TJvSpeedButton;
    btnEmailEnviar: TJvSpeedButton;
    btnPDFexportXML: TJvSpeedButton;
    btnXMLexportXML: TJvSpeedButton;
    JvSpeedButton1: TJvSpeedButton;
    btnSTATUSconsultar: TJvSpeedButton;
    qryDefaultID_CTE: TIntegerField;
    qryDefaultID_SERIE: TIntegerField;
    qryDefaultID_CFOP: TIntegerField;
    qryDefaultNAT_OPERACAO: TStringField;
    qryDefaultID_SITUACAO: TStringField;
    qryDefaultDT_HORA_EMISSAO: TSQLTimeStampField;
    qryDefaultXML_CHAVE: TStringField;
    qryDefaultXML_STRING: TMemoField;
    qryDefaultXML_STRING_PROTOCOLO: TMemoField;
    qryDefaultXML_CANC_PROTOCOLO: TStringField;
    qryDefaultSITUACAO: TStringField;
    updCancelado: TFDQuery;
    tabCTE_EVENTO: TFDQuery;
    tabCTE_EVENTOID_EMPRESA: TIntegerField;
    tabCTE_EVENTOID_CTE: TIntegerField;
    tabCTE_EVENTOID_SERIE: TIntegerField;
    tabCTE_EVENTOID_EVENTO: TIntegerField;
    tabCTE_EVENTOID_SEQUENCIA: TIntegerField;
    tabCTE_EVENTOTIPO: TStringField;
    tabCTE_EVENTODTHR_EVENTO: TSQLTimeStampField;
    tabCTE_EVENTOLOTE: TStringField;
    tabCTE_EVENTODTHR_PROTOCOLO: TSQLTimeStampField;
    tabCTE_EVENTONUMERO_PROTOCOLO: TStringField;
    tabCTE_EVENTOCSTAT: TIntegerField;
    tabCTE_EVENTOHISTORICO: TStringField;
    tabCTE_EVENTOOBSERVACAO: TBlobField;
    tabCTE_EVENTOXML: TBlobField;
    qryDefaultID_EMPRESA: TIntegerField;
    boxEventos: TJvGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    dtstabCTE_EVENTO: TDataSource;
    Panel8: TPanel;
    JvSpeedButton4: TJvSpeedButton;
    JvSpeedButton2: TJvSpeedButton;
    JvSpeedButton5: TJvSpeedButton;
    JvDBGrid4: TJvDBGrid;
    btnInutilizacao: TJvSpeedButton;
    IdHTTP1: TIdHTTP;
    IdAntiFreeze1: TIdAntiFreeze;
    IdIcmpClient1: TIdIcmpClient;
    procedure dtsDefaultDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure btnEnviarXMLClick(Sender: TObject);
    procedure btnVisualizarXMLClick(Sender: TObject);
    procedure btnConsultarXMLClick(Sender: TObject);
    procedure btnCancelarXMLClick(Sender: TObject);
    procedure btnPDFexportXMLClick(Sender: TObject);
    procedure btnXMLexportXMLClick(Sender: TObject);
    procedure btnSTATUSconsultarClick(Sender: TObject);
    procedure btnCartaXMLClick(Sender: TObject);
    procedure qryDefaultAfterOpen(DataSet: TDataSet);
    procedure JvSpeedButton4Click(Sender: TObject);
    procedure JvSpeedButton2Click(Sender: TObject);
    procedure JvSpeedButton5Click(Sender: TObject);
    procedure btnInutilizacaoClick(Sender: TObject);
    procedure btnEmailEnviarClick(Sender: TObject);
    procedure IdIcmpClient1Reply(ASender: TComponent;
      const AReplyStatus: TReplyStatus);
  private

      { Private declarations }
  public
  function ValidaRegistro(cnpj:widestring): boolean;
  protected
    procedure AlinharControles; override;
  end;

var
  frmCTeManutencao: TfrmCTeManutencao;
  vErro:string;
  vPing : boolean;
  vHost : string = '';
implementation

uses
  ufrmCTeCadastro,
  udtmCTe,
  ufuncoes,
  uclassEMPRESA,
  udtmDefault,
  ufrmCTEcancela,
  System.DateUtils,
  uclassCTe,
  Vcl.FileCtrl,
  ufrmCTEcartacorrecao,
  ufrmCTEinutilizacao,
  ufrmENVIARemail, System.json;

{$R *.dfm}


function TfrmCTeManutencao.ValidaRegistro(cnpj:widestring):boolean;
 var
 i: Integer;
 vTextoJson: string;
 vArrayJson: TJSONArray;
 vJSONString: string;
 vJSONScenario: TJSONObject;
 vParseResult: Integer;
 vRequest: TStringStream  ;
 vReceive:widestring;
 vStatus :boolean;

 TimeOut : Word ;
begin
  try
   TimeOut := 1000;
  // pingar no primeiro host...
  vHost := '170.239.224.193';
  IdIcmpClient1.Host := vHost;
  //IdIcmp.PacketSize := 128;
  IdIcmpClient1.Port := 1005;
  IdIcmpClient1.Protocol := 1;
  //IdIcmp.ProtocolIPv6 := 58;
  IdIcmpClient1.ReceiveTimeout := TimeOut;
  // IdIcmpClient1.OnReply := OnReply;
  IdIcmpClient1.Ping();

   //não conseguiu pingar no primeiro host... vai tentar no local
  if vPing = false then
     begin
        vHost := '192.168.10.103';
        IdIcmpClient1.Host := vHost;
        //IdIcmp.PacketSize := 128;
        IdIcmpClient1.Port := 1005;
        IdIcmpClient1.Protocol := 1;
        //IdIcmp.ProtocolIPv6 := 58;
        IdIcmpClient1.ReceiveTimeout := TimeOut;
        // IdIcmpClient1.OnReply := OnReply;
        IdIcmpClient1.Ping();
     end;
  except
    vErro:= 'Não há conexão com a Internet... Confira a sua rede ou portas de Firewall';
    result := false;
    exit;
  end;



  if vPing = false then
     begin
         vErro:= 'O servidor de lincença parece estar offline. Entre em contato com a Viatech  Fone: (63) 3028-3635';
         result := false;
         exit;
     end;


 //acesso interno
 //http://192.168.10.103:1005/ViaKey/v1/getRegisterByCnpj?code=07353150000128&id_produto=5
 //retorno
 //{"cliente":258,"ativo":1,"bloqueado":"NORMAL","data_licenca":"2022-08-15 00:00:00","produto_liberado":1}
 //acesso externo
 //http://170.239.224.193:1005/ViaKey/v1/getRegisterByCnpj?code=07353150000128&id_produto=5

     vHost := 'http://'+vHost+':1005';

      try  //informações de acesso
        vRequest := TStringStream.Create('');
        Self.IdHTTP1.Request.Accept := 'application/json; charset=utf-8';
        Self.IdHTTP1.Request.ContentType := 'application/json; charset=utf-8';
        Self.IdHTTP1.Request.ContentEncoding := 'utf-8';
        Self.IdHTTP1.HTTPOptions := [hoForceEncodeParams];
        Self.IdHTTP1.Request.CharSet := 'utf-8';
        Self.IdHTTP1.Request.Method := 'GET';
                                                                          // 16581245000190
        try
          Self.IdHTTP1.Get( vHost + '/ViaKey/v1/getRegisterByCnpj?code='+cnpj+'&id_produto=5', vRequest);
          vReceive := UTF8ToWideString( AnsiString(vRequest.DataString) );
          vStatus := (Self.IdHTTP1.ResponseCode = 200);

          vTextoJson := vReceive;  //retorno

          //leitura do json retornado
          vJSONScenario := TJSONObject.Create;
          vParseResult := vJSONScenario.Parse(BytesOf(vTextoJson),0);
          if  vParseResult > 110 then
             begin
                vErro:= 'Registro não encontrado, Entre em contato com a Viatech  Fone: (63) 3028-3635';
                result := false;
             end
          else
             begin
                if vTextoJson<>'' then
                   begin
                    vArrayJson := TJSONObject.ParseJSONValue('[' + vTextoJson + ']') as TJSONArray;

                    try
                    for i := 0 to Pred(vArrayJson.Size) do      //ativo:1   //bloqueado:NORMAL
                      if ((TJSONObject(vArrayJson.Get(i)).Get('ativo').JsonValue.Value <> '1')or(TJSONObject(vArrayJson.Get(i)).Get('bloqueado').JsonValue.Value <> 'NORMAL')) then
                         begin
                            vErro:= 'Sistema não registrado. Entre em contato com a Viatech  Fone: (63) 3028-3635';
                            result := false;
                         end;
                    except
                       begin
                          vErro:= 'Erro ao localizar o registro do cliente. Entre em contato com a Viatech  Fone: (63) 3028-3635';
                          result := false;
                       end;
                    end;
                   end;
             end;
        except
           vErro:= 'Sistema não conectado á internet ou não registrado. Entre em contato com a Viatech  Fone: (63) 3028-3635';
           result := false;
        end;

      finally
        FreeAndNil( vRequest );
      end;
      result := true;
end;

procedure TfrmCTeManutencao.btnCartaXMLClick(Sender: TObject);
begin
  if TfrmCTEcartacorrecao.Evento(qryDefaultXML_STRING_PROTOCOLO.AsAnsiString) = mrOK then
  begin
    AtualizarTabela(qryDefault, qryDefaultID_CTE.FieldName, qryDefaultID_CTE.AsString);
  end;
end;

procedure TfrmCTeManutencao.btnConsultarXMLClick(Sender: TObject);
var
  MensagemErro      : String;
  MsgMotivoDenegacao: String;
  Status            : Integer;
  ChaveCTe          : String;
begin
  dtmCTe.Configurar;
  dtmCTe.ACBrCTe.Conhecimentos.Clear;

  if Trim(qryDefaultXML_STRING_PROTOCOLO.AsString) <> '' then
  begin
    dtmCTe.ACBrCTe.Conhecimentos.LoadFromString(qryDefaultXML_STRING_PROTOCOLO.AsString, False)
  end
  else
    raise Exception.Create('XML da conhecimento não foi encontrado.');

  dtmCTe.ACBrCTe.Consultar;

  Status   := dtmCTe.ACBrCTe.WebServices.Consulta.cStat;
  ChaveCTe := dtmCTe.ACBrCTe.WebServices.Consulta.CTeChave;
  case Status of
    100:
      begin
        dtmCTe.updEnviado.ParamByName('ID_CTE').asInteger := qryDefaultID_CTE.asInteger;
        dtmCTe.updEnviado.ParamByName('ID_SERIE').asInteger := qryDefaultID_SERIE.asInteger;
        dtmCTe.updEnviado.ParamByName('ID_EMPRESA').asInteger := oEmpresa.ID;
        dtmCTe.updEnviado.ParamByName('XML_CHAVE').AsString := dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].CTe.procCTe.chCTe;
        dtmCTe.updEnviado.ParamByName('XML_PROTOCOLO').AsString := dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].CTe.procCTe.nProt;
        dtmCTe.updEnviado.ParamByName('XML_STRING_PROTOCOLO').AsString := dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].XMLAssinado;
        dtmCTe.updEnviado.ParamByName('XML_PROCOCOLO_DATAHORA').AsDateTime := dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].CTe.procCTe.dhRecbto;
        dtmCTe.updEnviado.ParamByName('ID_SITUACAO').AsString := 'E';
        dtmCTe.updEnviado.ParamByName('XML_XMOTIVO').AsAnsiString := '100 - CT-e OS autorizado.';
        dtmCTe.updEnviado.ParamByName('XML_STATUS_CODIGO').asInteger := dtmCTe.ACBrCTe.WebServices.Consulta.cStat;
        dtmCTe.updEnviado.Prepare;
        dtmCTe.updEnviado.ExecSQL;

        dtmDefault.cnx_BD.CommitRetaining;

        AtualizarTabela(qryDefault, qryDefaultID_CTE.FieldName, qryDefaultID_CTE.AsString);

        Application.Messagebox(PWideChar('CT-e autorizado para uso.'#13#13'Chave de acesso: '#13 + ChaveCTe), 'Autorizado', MB_ICONINFORMATION + MB_OK);
      end;
    101:
      begin
        updCancelado.ParamByName('ID_EMPRESA').Value := oEmpresa.ID;
        updCancelado.ParamByName('ID_CTE').Value     := qryDefaultID_CTE.asInteger;
        updCancelado.ParamByName('ID_SERIE').Value   := qryDefaultID_SERIE.asInteger;
        updCancelado.ParamByName('XML_CANC_DATAHORA').Value := dtmCTe.ACBrCTe.WebServices.Consulta.dhRecbto;
        updCancelado.ParamByName('XML_CANC_PROTOCOLO').Value := dtmCTe.ACBrCTe.WebServices.Consulta.Protocolo;
        updCancelado.ParamByName('XML_CANC_STRING').Value := dtmCTe.ACBrCTe.WebServices.Consulta.RetornoWS;
        updCancelado.ParamByName('XML_STATUS_CODIGO').Value := dtmCTe.ACBrCTe.WebServices.Consulta.cStat;
        updCancelado.ParamByName('XML_XMOTIVO').AsString := dtmCTe.ACBrCTe.WebServices.Consulta.XMotivo;
        updCancelado.Prepare;
        updCancelado.ExecSQL;

        dtmDefault.cnx_BD.CommitRetaining;

        AtualizarTabela(qryDefault, qryDefaultID_CTE.FieldName, qryDefaultID_CTE.AsString);

        Application.Messagebox(PWideChar('CT-e cancelado.'#13#13'Chave de acesso: ' + ChaveCTe), 'Cancelado', MB_ICONINFORMATION + MB_OK);
      end;

    110, 301, 302:
      begin
        case Status of
          110:
            MsgMotivoDenegacao := '110 - CT-e OS denegado';
          301:
            MsgMotivoDenegacao := '301 - Irregularidade fiscal do emitente';
          302:
            MsgMotivoDenegacao := '302 - Irregularidade fiscal do destinatário';
        end;

        dtmCTe.updEnviado.ParamByName('ID_CTE').asInteger := qryDefaultID_CTE.asInteger;
        dtmCTe.updEnviado.ParamByName('ID_SERIE').asInteger := qryDefaultID_SERIE.asInteger;
        dtmCTe.updEnviado.ParamByName('ID_EMPRESA').asInteger := oEmpresa.ID;
        dtmCTe.updEnviado.ParamByName('XML_CHAVE').AsString := dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].CTe.procCTe.chCTe;
        dtmCTe.updEnviado.ParamByName('XML_PROTOCOLO').AsString := dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].CTe.procCTe.nProt;
        dtmCTe.updEnviado.ParamByName('XML_STRING_PROTOCOLO').AsString := dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].XMLAssinado;
        dtmCTe.updEnviado.ParamByName('XML_PROCOCOLO_DATAHORA').AsDateTime := dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].CTe.procCTe.dhRecbto;
        dtmCTe.updEnviado.ParamByName('ID_SITUACAO').AsString := 'D';
        dtmCTe.updEnviado.ParamByName('XML_XMOTIVO').AsString := MsgMotivoDenegacao;
        dtmCTe.updEnviado.ParamByName('XML_STATUS_CODIGO').asInteger := dtmCTe.ACBrCTe.WebServices.Consulta.cStat;
        dtmCTe.updEnviado.Prepare;
        dtmCTe.updEnviado.ExecSQL;

        dtmDefault.cnx_BD.CommitRetaining;

        AtualizarTabela(qryDefault, qryDefaultID_CTE.FieldName, qryDefaultID_CTE.AsString);

        Application.Messagebox(PWideChar('CT-e denegado.'#13#13'Chave de acesso: '#13 + ChaveCTe), 'Denegado', MB_ICONINFORMATION + MB_OK);
      end;
    else
      MensagemErro := 'Ocorreu o seguinte erro ao consultar CT-e' + sLineBreak + sLineBreak + String(dtmCTe.ACBrCTe.WebServices.Consulta.Msg) + sLineBreak + sLineBreak +
        'Chave de acesso: ' + sLineBreak + ChaveCTe;

      Application.Messagebox(PWideChar(MensagemErro), 'Erro', MB_ICONERROR + MB_OK);
  end;
end;

procedure TfrmCTeManutencao.btnPDFexportXMLClick(Sender: TObject);
begin
  dtmCTe.SaveDialog.Title      := 'Selecione o CTe';
  dtmCTe.SaveDialog.FileName   := qryDefaultXML_CHAVE.AsString + '-cte.pdf';
  dtmCTe.SaveDialog.DefaultExt := '*-cte.pdf';
  dtmCTe.SaveDialog.Filter     := 'Arquivos CTe (*-cte.pdf)|*-cte.pdf|Arquivos PDF (*.pdf)|*.pdf|Todos os Arquivos (*.*)|*.*';

  if dtmCTe.SaveDialog.Execute then
  begin
    dtmCTe.ACBrCTe.DACTE.PathPDF := ExtractFilePath(dtmCTe.SaveDialog.FileName);

    dtmCTe.ACBrCTe.Conhecimentos.Clear;
    dtmCTe.ACBrCTe.Conhecimentos.LoadFromString(qryDefaultXML_STRING_PROTOCOLO.AsString);
    dtmCTe.ACBrCTe.Conhecimentos.ImprimirPDF;
  end;
end;

procedure TfrmCTeManutencao.btnVisualizarXMLClick(Sender: TObject);
begin
  dtmCTe.Configurar;
  dtmCTe.ACBrCTe.Conhecimentos.Clear;

  dtmCTe.ACBrCTe.DACTE.MostraPreview := False;

  if TJvSpeedButton(Sender).Caption = 'Visualizar CT-e' then
    dtmCTe.ACBrCTe.DACTE.MostraPreview := True;

  if qryDefaultID_SITUACAO.AsString = 'A' then
  begin
    dtmCTe.Gerar(qryDefaultID_CTE.asInteger, qryDefaultID_SERIE.asInteger);
    dtmCTe.ACBrCTe.Conhecimentos.Assinar;
  end
  else
    if qryDefaultID_SITUACAO.AsString = 'E' then
    begin
      dtmCTe.ACBrCTeDACTeRL.Cancelada := False;
      dtmCTe.ACBrCTeDACTeRL.Protocolo := qryDefaultXML_STRING_PROTOCOLO.AsString;
      dtmCTe.ACBrCTe.Conhecimentos.LoadFromString(qryDefaultXML_STRING_PROTOCOLO.AsString);
    end
    else
      if qryDefaultID_SITUACAO.AsString = 'C' then
      begin
        dtmCTe.ACBrCTe.Conhecimentos.LoadFromString(qryDefaultXML_STRING_PROTOCOLO.AsString);
        dtmCTe.ACBrCTe.DACTE.Cancelada := True;
        dtmCTe.ACBrCTe.DACTE.Protocolo := qryDefaultXML_CANC_PROTOCOLO.AsString;
      end;

  dtmCTe.ACBrCTe.Conhecimentos.Imprimir;
end;

procedure TfrmCTeManutencao.btnXMLexportXMLClick(Sender: TObject);
begin
  dtmCTe.SaveDialog.Title      := 'Selecione o CTe';
  dtmCTe.SaveDialog.FileName   := qryDefaultXML_CHAVE.AsString + '-cte.xml';
  dtmCTe.SaveDialog.DefaultExt := '*-cte.xml';
  dtmCTe.SaveDialog.Filter     := 'Arquivos CTe (*-cte.xml)|*-cte.xml|Arquivos XML (*.xml)|*.xml|Todos os Arquivos (*.*)|*.*';

  if dtmCTe.SaveDialog.Execute then
  begin
    dtmCTe.ACBrCTe.Conhecimentos.Clear;
    dtmCTe.ACBrCTe.Conhecimentos.LoadFromString(qryDefaultXML_STRING_PROTOCOLO.AsString);
    dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].GravarXML(dtmCTe.SaveDialog.FileName, ExtractFilePath(dtmCTe.SaveDialog.FileName));
    dtmCTe.ACBrCTe.Conhecimentos.Clear;
  end;
end;

procedure TfrmCTeManutencao.btnSTATUSconsultarClick(Sender: TObject);
var
  Mensagem    : string;
  CodigoStatus: Integer;
begin
    // configura componente
  dtmCTe.Configurar;
  dtmCTe.ACBrCTe.WebServices.StatusServico.Executar;

  CodigoStatus := dtmCTe.ACBrCTe.WebServices.StatusServico.cStat;
  case CodigoStatus of
    107: // serviço em operação
      begin
        Mensagem := Trim(Format('Código:%d'#13'Mensagem: %s'#13'Tempo médio: %d segundo(s)', [ dtmCTe.ACBrCTe.WebServices.StatusServico.cStat,
              dtmCTe.ACBrCTe.WebServices.StatusServico.XMotivo, dtmCTe.ACBrCTe.WebServices.StatusServico.TMed ]));

        MessageDlg(Mensagem, mtInformation, [ mbOK ], 0);
      end;

    108, 109: // serviço paralisado temporariamente (108) ou sem previsão (109)
      begin
        Mensagem := Trim(Format('Código:%d'#13'Motivo: %s'#13'%s', [ dtmCTe.ACBrCTe.WebServices.StatusServico.cStat, dtmCTe.ACBrCTe.WebServices.StatusServico.XMotivo,
              dtmCTe.ACBrCTe.WebServices.StatusServico.xObs ]));

        MessageDlg(Mensagem, mtError, [ mbOK ], 0);
      end;
    else
        // qualquer outro retorno
      if CodigoStatus > 0 then
      begin
        Mensagem := Trim(Format('Webservice indisponível:'#13'Código:%d'#13'Motivo: %s'#13'%s', [ dtmCTe.ACBrCTe.WebServices.StatusServico.cStat,
              dtmCTe.ACBrCTe.WebServices.StatusServico.XMotivo, dtmCTe.ACBrCTe.WebServices.StatusServico.xObs ]));
      end
      else
      begin
        Mensagem := 'Webservice indisponível ou retorno em branco, tente novamente!';
      end;

      MessageDlg(Mensagem, mtInformation, [ mbOK ], 0);
  end;
end;

procedure TfrmCTeManutencao.AlinharControles;
begin
    //inherited;

    //Alinha
  pnlNavigator.Align := alBottom;
  pnlComandos.Align  := alBottom;
  boxPesquisa.Align  := alBottom;
  boxEventos.Align   := alBottom;
  dbGrid.Align       := alClient;

    //SQL Default
  FSQLPadrao := TFDQuery(dtsDefault.DataSet).SQL.Text;
  Application.ProcessMessages;
end;

procedure TfrmCTeManutencao.btnCancelarXMLClick(Sender: TObject);
begin
  if TfrmCTEcancela.Cancela(qryDefaultXML_STRING_PROTOCOLO.AsAnsiString) = mrOK then
  begin
    AtualizarTabela(qryDefault, qryDefaultID_CTE.FieldName, qryDefaultID_CTE.AsString);
    btnConsultarXML.Click;
  end;
end;

procedure TfrmCTeManutencao.btnEmailEnviarClick(Sender: TObject);
begin
  TfrmENVIARemail.EnviarEMAIL(qryDefaultXML_STRING_PROTOCOLO.AsString, EmptyStr);
end;

procedure TfrmCTeManutencao.btnEnviarXMLClick(Sender: TObject);
begin
  if oEmpresa.CNPJ <> '' then
     begin
        if not (ValidaRegistro(oEmpresa.CNPJ))    //oEmpresa.CNPJ
         then
            showmessage(vErro) //o cnpj não é registrado na viatech
        else
            begin
                if Application.Messagebox('Deseja realmente validar a CT-e ?', 'Confirmação', MB_YESNO + MB_ICONQUESTION) = mrYes then
                begin
                  dtmCTe.Configurar;
                    //verifica se existe XML já autorizado
                  if oCTe.CheckXMLvalido(qryDefaultDT_HORA_EMISSAO.AsDateTime, qryDefaultXML_CHAVE.AsString, qryDefaultXML_STRING_PROTOCOLO.AsWideString, qryDefaultID_CTE.asInteger,
                    qryDefaultID_SERIE.asInteger)
                  then
                      begin
                        AtualizarTabela(qryDefault, qryDefaultID_CTE.FieldName, qryDefaultID_CTE.AsString);
                        btnConsultarXML.Click;
                      end
                      else
                      begin
                        dtmCTe.ACBrCTe.DACTE.MostraPreview := True;
                        dtmCTe.ACBrCTe.Conhecimentos.Clear;
                        dtmCTe.Gerar(qryDefaultID_CTE.asInteger, qryDefaultID_SERIE.asInteger);
                        AtualizarTabela(qryDefault, qryDefaultID_CTE.FieldName, qryDefaultID_CTE.AsString);
                      end;
                end;
            end;
     end;
end;

procedure TfrmCTeManutencao.btnInutilizacaoClick(Sender: TObject);
begin
  TfrmCTEinutilizacao.Inutilizar;
end;

procedure TfrmCTeManutencao.dtsDefaultDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if Assigned(qryDefault) then
  begin
    btnAlterar.Enabled       := qryDefaultID_SITUACAO.AsString = 'A';
    btnDeletar.Enabled       := qryDefaultID_SITUACAO.AsString = 'A';
    btnCartaXML.Enabled      := qryDefaultID_SITUACAO.AsString = 'E';
    btnEnviarXML.Enabled     := qryDefaultID_SITUACAO.AsString = 'A';
    btnCancelarXML.Enabled   := qryDefaultID_SITUACAO.AsString = 'E';
    btnEmailEnviar.Enabled   := qryDefaultID_SITUACAO.AsString = 'E';
    btnImprimirXML.Enabled   := not qryDefault.IsEmpty;
    btnPDFexportXML.Enabled  := qryDefaultID_SITUACAO.AsString = 'E';
    btnXMLexportXML.Enabled  := qryDefaultID_SITUACAO.AsString = 'E';
    btnConsultarXML.Enabled  := qryDefaultXML_STRING_PROTOCOLO.AsString.Trim.Length > 0;
    btnVisualizarXML.Enabled := not qryDefault.IsEmpty;
  end;
end;

procedure TfrmCTeManutencao.FormCreate(Sender: TObject);
begin
  inherited;

  FormCadastro := TfrmCTeCadastro;

  TabelaNome    := 'CTE';
  TabelaCpChave := 'ID_CTE';
end;

procedure TfrmCTeManutencao.IdIcmpClient1Reply(ASender: TComponent;
  const AReplyStatus: TReplyStatus);
begin
  inherited;
  //-- Analisa o retorno do ping
  if AReplyStatus.FromIpAddress = '0.0.0.0' then
    vPing := false
    //ShowMessage('Ping falhou')
  else
    vPing := true;//ShowMessage(AReplyStatus.FromIpAddress);
end;

procedure TfrmCTeManutencao.JvSpeedButton2Click(Sender: TObject);
var
  PathPDF: String;
begin
  if tabCTE_EVENTOXML.AsString.Trim.Length = 0 then
    raise Exception.Create('Evento não possui arquivo XML');

  dtmCTe.Configurar;

  if SelectDirectory('Informe o diretorio onde deseja salvar o arquivo PDF:', '', PathPDF) then
  begin
    dtmCTe.ACBrCTe.DACTE.PathPDF       := PathPDF;
    dtmCTe.ACBrCTe.DACTE.MostraPreview := True;

    dtmCTe.ACBrCTe.Conhecimentos.Clear;
    dtmCTe.ACBrCTe.Conhecimentos.LoadFromString(qryDefaultXML_STRING_PROTOCOLO.AsString, False);

    dtmCTe.ACBrCTe.EventoCTe.Evento.Clear;
    dtmCTe.ACBrCTe.EventoCTe.LerXMLFromString(tabCTE_EVENTOXML.AsString);

    dtmCTe.ACBrCTe.ImprimirEventoPDF;
    ShowMessage(Format('Arquivo PDF salvo no diretório "%s"', [ PathPDF ]));
  end;
end;

procedure TfrmCTeManutencao.JvSpeedButton4Click(Sender: TObject);
begin
  if tabCTE_EVENTOXML.AsString.Trim.Length = 0 then
    raise Exception.Create('Evento não possui arquivo XML');

  dtmCTe.Configurar;

  dtmCTe.ACBrCTe.DACTE.MostraPreview := True;

  dtmCTe.ACBrCTe.Conhecimentos.Clear;
  dtmCTe.ACBrCTe.Conhecimentos.LoadFromString(qryDefaultXML_STRING_PROTOCOLO.AsString, False);

  dtmCTe.ACBrCTe.EventoCTe.Evento.Clear;
  dtmCTe.ACBrCTe.EventoCTe.LerXMLFromString(tabCTE_EVENTOXML.AsString.Trim);

  dtmCTe.ACBrCTe.ImprimirEvento;
end;

procedure TfrmCTeManutencao.JvSpeedButton5Click(Sender: TObject);
begin
  if tabCTE_EVENTOXML.AsString.Trim.Length = 0 then
    raise Exception.Create('Evento não possui arquivo XML');

  dtmCTe.Configurar;

  dtmCTe.SaveDialog.Filter     := 'Arquivos XML|*.XML';
  dtmCTe.SaveDialog.Title      := 'Salvar Evento';
  dtmCTe.SaveDialog.DefaultExt := 'XML';
  dtmCTe.SaveDialog.FileName   := qryDefaultXML_CHAVE.AsString + '-procEventoCTe.xml';

  if dtmCTe.SaveDialog.Execute then
  begin
    try
      TBlobField(tabCTE_EVENTOXML).SaveToFile(dtmCTe.SaveDialog.FileName);
      ShowMessage(Format('Arquivo "%s" salvo corretamente!', [ dtmCTe.SaveDialog.FileName ]));
    except
      on E: Exception do
      begin

        Application.Messagebox(PWideChar('Ocorreu o seguinte erro ao tentar salvar o evento:' + sLineBreak + E.Message), 'Erro', MB_ICONERROR + MB_OK);
      end;
    end;
  end;
end;

procedure TfrmCTeManutencao.qryDefaultAfterOpen(DataSet: TDataSet);
begin
  tabCTE_EVENTO.Active := DataSet.Active;
end;

end.
