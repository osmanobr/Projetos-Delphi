unit UConexao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TFrmConexao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    CBDriver: TComboBox;
    Label6: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
    ComboBox1: TComboBox;
    Panel3: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label3: TLabel;
    Label8: TLabel;
    Edit6: TEdit;
    Panel5: TPanel;
    SpeedButton1: TSpeedButton;
    Label9: TLabel;
    StatusBar1: TStatusBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConexao: TFrmConexao;

implementation

{$R *.dfm}

end.
