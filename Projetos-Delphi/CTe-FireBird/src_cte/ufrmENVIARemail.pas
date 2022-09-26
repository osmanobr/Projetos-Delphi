unit ufrmENVIARemail;

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
  ACBrBase,
  ACBrEnterTab,
  JvExControls,
  JvSpeedButton,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  dxGDIPlusClasses,
  Vcl.Mask,
  JvExMask,
  JvToolEdit,
  JvMaskEdit,

  pcnNFe,
  pcnConversao;

type
  TfrmENVIARemail = class(TfrmDefaultClean)
    chkPDF: TCheckBox;
    Label1: TLabel;
    Image1: TImage;
    Image2: TImage;
    chkCONFIRMACAO: TCheckBox;
    rbdRETRATO: TRadioButton;
    rdbPAISAGEM: TRadioButton;
    Label11: TLabel;
    edtEMAILdestinatario: TJvMaskEdit;
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FXML                : String;
    FEMAIL              : String;
    FEmailDestinatario  : string;
    FEmailTransportadora: string;
  public
    property XML                : String read FXML write FXML;
    property EmailDestinatario  : string read FEmailDestinatario write FEmailDestinatario;
    property EmailTransportadora: string read FEmailTransportadora write FEmailTransportadora;
    class procedure EnviarEMAIL(AXML: String; AEMAIL: String);
  end;

var
  frmENVIARemail: TfrmENVIARemail;

implementation

{$R *.dfm}

uses
  udtmCTe,
  uclassCTE,
  ufrmMENSAGEMespera,
  ufuncoes;

procedure TfrmENVIARemail.btnConfirmarClick(Sender: TObject);
var
  CopiaEmail     : TStringList;
  NomeEmitente   : String;
  AssuntoMensagem: String;
  CorpoMensagem  : TStringList;

  PathApp, PathArqNFe, PathPDF: string;
begin
  PathApp    := ExtractFilePath(ParamStr(0));
  PathArqNFe := IncludeTrailingPathDelimiter(PathApp + 'DOCUMENTOS');
  PathPDF    := IncludeTrailingPathDelimiter(PathArqNFe + 'PDF');

  dtmCTe.Configurar;

  if Trim(edtEMAILdestinatario.Text) = EmptyStr then
  begin
    edtEMAILdestinatario.SetFocus;
    raise Exception.Create('Destinat�rio da mensagem n�o informado.');
  end;

    // envio da mensagem
  CopiaEmail := TStringList.Create;
  try
      // configura a confirma�� de leitura como o usu�rio achar melhor
    dtmCTe.ACBrMail.ReadingConfirmation := chkCONFIRMACAO.Checked;

    dtmCTe.ACBrCTe.Conhecimentos.Clear;
    dtmCTe.ACBrCTe.Conhecimentos.LoadFromString(XML, False);

      // setar o diretorio do DANFE por precau��o
    dtmCTe.ACBrCTe.DACTE.PathPDF := IncludeTrailingPathDelimiter(PathApp + 'PDF');

    try
      CorpoMensagem := TStringList.Create;
      try
        NomeEmitente    := dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].CTe.Emit.xNome;
        AssuntoMensagem := 'Conhecimento de Transporte Eletr�nico: ' + NomeEmitente;

        CorpoMensagem := TStringList.Create;
        CorpoMensagem.Clear;
        CorpoMensagem.Add('Prezados,');
        CorpoMensagem.Add('');
        CorpoMensagem.Add('Voc�s est�o recebendo o arquivo XML referente ao seguinte CT-e:');
        CorpoMensagem.Add('N�mero:' + Format('%9.9d', [ dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].CTe.Ide.nCT ]));
        CorpoMensagem.Add('S�rie: ' + Format('%3.3d', [ dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].CTe.Ide.serie ]));
        CorpoMensagem.Add('Data de Emiss�o: ' + FormatDateTime('dd/mm/yyyy', dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].CTe.Ide.dhEmi));
        CorpoMensagem.Add('Emitente: ' + dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].CTe.Emit.xNome);
        CorpoMensagem.Add('Destinat�rio: ' + dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].CTe.Dest.xNome);
        CorpoMensagem.Add('');
        CorpoMensagem.Add('Autorizada em: ' + FormatDateTime('dd/mm/yyyy', dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].CTe.procCTe.dhRecbto));
        CorpoMensagem.Add('N�mero do protocolo: ' + dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].CTe.procCTe.nProt);
        CorpoMensagem.Add('Chave de acesso: ' + dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].CTe.procCTe.chCTe);
        CorpoMensagem.Add('');
        CorpoMensagem.Add('Al�m disso, junto a mercadoria seguir� o ' + 'DACTE (Documento Auxiliar do Conhecimento de Transporte Eletr�nico), ' +
            'impresso em papel que acompanha o transporte das mesmas.');
        CorpoMensagem.Add('');
        CorpoMensagem.Add('O arquivo XML anexado deve ser armazenado eletronicamente por sua empresa pelo ' +
            'prazo de 05 (cinco) anos, conforme previsto na legisla��o tribut�ria ' + 'Artigo. 173 do C�digo Tribut�rio Nacional e � 4� da Lei 5.172 de 25/10/1966.');
        CorpoMensagem.Add('');
        CorpoMensagem.Add('O DACTE em papel pode ser arquivado para apresenta��o ao fisco quando solicitado. ' +
            'Todavia, se sua empresa tamb�m for emitente do CT-e, o arquivamento eletr�nico ' + 'do XML de seus fornecedores � obrigat�rio, sendo pass�vel de fiscaliza��o.');
        CorpoMensagem.Add('');
        CorpoMensagem.Add('Para se certificar que esta CT-e � v�lida, queira por favor consultar sua autenticidade ' +
            'no portal nacional da nota fiscal eletr�nica em http://www.cte.fazenda.gov.br, ' + 'utilizando a chave de acesso contida no DACTE.');
        CorpoMensagem.Add('');
        CorpoMensagem.Add('');
        CorpoMensagem.Add('Atenciosamente,');
        CorpoMensagem.Add('');
        CorpoMensagem.Add(dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].CTe.Emit.xNome);
        CorpoMensagem.Add(dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].CTe.Emit.EnderEmit.xMun + '/' + dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].CTe.Emit.EnderEmit.UF);
        CorpoMensagem.Add(FormatarFone(dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].CTe.Emit.EnderEmit.fone));
        CorpoMensagem.Add('');
        CorpoMensagem.Add('');
        CorpoMensagem.Add('');
        CorpoMensagem.Add(StringOfChar('-', 30));
        CorpoMensagem.Add('Enviado automaticamente por:');
        CorpoMensagem.Add('');
        CorpoMensagem.Add('');

          // orienta��o da impress�o
        if rbdRETRATO.Checked then
          dtmCTe.ACBrCTe.DACTE.TipoDACTE := tiRetrato
        else
          dtmCTe.ACBrCTe.DACTE.TipoDACTE := tiPaisagem;

          // envio do email
        dtmCTe.ACBrCTe.Conhecimentos.Items[ 0 ].EnviarEMAIL(edtEMAILdestinatario.Text, AssuntoMensagem, CorpoMensagem, chkPDF.Checked, CopiaEmail, nil);

        FecharEspera;
        ShowMessage('Enviado com sucesso!');
        inherited;
      finally
        FecharEspera;
        CorpoMensagem.Free;
      end;
    except
      on E: Exception do
      begin
        Application.MessageBox(PWideChar('Ocorreu o seguinte erro ao enviar o CT-e:' + sLineBreak + sLineBreak + E.Message), 'Erro', MB_ICONERROR + MB_OK);
      end;
    end;
  finally
    CopiaEmail.Free;
  end;
end;

class procedure TfrmENVIARemail.EnviarEMAIL(AXML: String; AEMAIL: String);
begin
  frmENVIARemail := TfrmENVIARemail.Create(Nil);
  try
    frmENVIARemail.FXML   := AXML;
    frmENVIARemail.FEMAIL := AEMAIL;
    frmENVIARemail.ShowModal;
  finally
    FreeAndNil(frmENVIARemail);
  end;
end;

procedure TfrmENVIARemail.FormCreate(Sender: TObject);
begin
  inherited;

  edtEMAILdestinatario.Text := FEMAIL;
end;

end.
