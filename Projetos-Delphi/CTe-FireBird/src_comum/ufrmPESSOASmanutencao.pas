unit ufrmPESSOASmanutencao;

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
  Vcl.Grids,
  Vcl.DBGrids,
  JvExDBGrids,
  JvDBGrid,
  Vcl.DBCtrls,
  JvDBControls,
  JvLabel,
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
  dxGDIPlusClasses;

type
  TfrmPESSOASmanutencao = class(TfrmDefaultConsulta)
    qryDefaultID_PESSOA: TIntegerField;
    qryDefaultRAZAOSOCIAL: TStringField;
    qryDefaultCPF_CNPJ: TStringField;
    qryDefaultID_SITUACAO: TStringField;
    qryDefaultTELEFONEFIXO: TStringField;
    qryDefaultTELEFONETRABALHO: TStringField;
    qryDefaultCELULAR: TStringField;
    qryDefaultID_PRODUTOR: TStringField;
    qryDefaultID_TRANSPORTADORA: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure qryDefaultBeforeOpen(DataSet: TDataSet);
  private
      { Private declarations }
  public
      { Public declarations }
  end;

var
  frmPESSOASmanutencao: TfrmPESSOASmanutencao;

implementation

uses
  ufrmPESSOAScadastro,
  uclassEMPRESA,
  udtmDefault;

{$R *.dfm}

procedure TfrmPESSOASmanutencao.FormCreate(Sender: TObject);
begin
  inherited;

  TabelaNome    := 'PESSOA';
  TabelaCpChave := 'ID_PESSOA';
  FormCadastro  := TfrmPESSOAScadastro;
end;

procedure TfrmPESSOASmanutencao.qryDefaultBeforeOpen(DataSet: TDataSet);
begin
  TFDQuery(DataSet).ParamByName('ID_EMPRESA').AsInteger := oEmpresa.ID;
end;

end.
