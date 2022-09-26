unit ufrmTRANSPmanutencao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmDefaultConsulta, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  ACBrBase, ACBrEnterTab, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  Vcl.DBCtrls, JvDBControls, JvLabel, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, JvMaskEdit, JvExControls, JvSpeedButton,
  JvExExtCtrls, JvImage, JvExStdCtrls, JvGroupBox,
  Vcl.ComCtrls, JvExComCtrls, JvStatusBar;

type
  TfrmTRANSPmanutencao = class(TfrmDefaultConsulta)
    qryDefaultID_TRANSPORTADORA: TLargeintField;
    qryDefaultID_CODIGO: TIntegerField;
    qryDefaultRAZAOSOCIAL: TStringField;
    qryDefaultCNPJ: TStringField;
    qryDefaultID_SITUACAO: TStringField;
    qryDefaultTELEFONEFIXO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure qryDefaultBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTRANSPmanutencao: TfrmTRANSPmanutencao;

implementation

uses
  ufrmPESSOAScadastro, uclassEMPRESA, udtmDefault, ufrmTRANSPcadastro;

{$R *.dfm}

procedure TfrmTRANSPmanutencao.FormCreate(Sender: TObject);
begin
  inherited;

  TabelaNome := 'TRANSPORTADORA';
  TabelaCpChave := 'ID_TRANSPORTADORA';
  FormCadastro := TfrmTRANSPcadastro;
end;

procedure TfrmTRANSPmanutencao.qryDefaultBeforeOpen(DataSet: TDataSet);
begin
  TFDQuery(DataSet).ParamByName('ID_EMPRESA').AsInteger := oEmpresa.ID;
end;

end.
