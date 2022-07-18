//SISTEMA DESENVOLVIDO EM RAD Studio 10.1 Berlin
//Desenvolvido por: OSMANO TORRES DE BRITO OSMANO.COM.BR
//Nome: CurvaABC
//Finalidade: Suprir as informações referentes ao principio de Paretto aplicado a uma empresa
//Data Início: 04/07/2022
//Data Entrega> 07/07/2022
unit UBackupPostgres;



interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, Vcl.StdCtrls,
  VCLTee.TeCanvas, VCLTee.TeeEdiGrad, VCLTee.Series, VCLTee.TeEngine,
  Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, Vcl.ComCtrls,
  Vcl.Menus, ZStoredProcedure;

type
  TFrmCurvaABC = class(TForm)
    BD1: TZConnection;
    Qry: TZQuery;
    DS: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    GroupBox3: TGroupBox;
    BTNExecutar: TButtonGradient;
    ZStoredProc1: TZStoredProc;
    procedure FormCreate(Sender: TObject);
  private
    procedure CompraItem;
    procedure CalculaIndice;
    { Private declarations }
  public
  procedure VendaItem;
    { Public declarations }
  end;

type
    TConexao = Class
    Hostname : String;
    Database : String;
    Default  : String;
    Porta    : string;
    Usuario  : string;
    Senha    : string;
end;

var
  FrmCurvaABC: TFrmCurvaABC;

  Conexao: Array[1..5] of TConexao;

implementation
 uses UReport, IniFiles, DateUtils;

{$R *.dfm}
procedure TFrmCurvaABC.FormCreate(Sender: TObject);
var
  I, vDefault:integer;
  ArquivoINI: TIniFile;
  vMensagem, vHostname, vDatabase, vPorta : string;
begin
{
  ArquivoINI := TIniFile.Create(extractfilepath(application.exename));

  for i := 0 to 5 do
    begin
      if i = 0 then
         begin //a conexao padrao é a 0
            Conexao[I] := TConexao.Create;
            Conexao[I].Hostname := ArquivoINI.ReadString('Conexao', 'Hostname', '');
            Conexao[I].Database := ArquivoINI.ReadString('Conexao', 'Database', '');
            Conexao[I].Default  := ArquivoINI.ReadString('Conexao', 'Default', '');
            Conexao[I].Porta    := ArquivoINI.ReadString('Conexao', 'Porta', '');
            Conexao[I].Usuario  := ArquivoINI.ReadString('Conexao', 'Usuario', '');
            Conexao[I].Senha    := ArquivoINI.ReadString('Conexao', 'Senha', 'Via7216');
         end
       else
         begin
            Conexao[I] := TConexao.Create;
            Conexao[I].Hostname := ArquivoINI.ReadString('Conexao', 'Hostname'+inttostr(i), '');
            Conexao[I].Database := ArquivoINI.ReadString('Conexao', 'Database'+inttostr(i), '');
            Conexao[I].Default  := ArquivoINI.ReadString('Conexao', 'Default'+inttostr(i), '');
            Conexao[I].Porta    := ArquivoINI.ReadString('Conexao', 'Porta'+inttostr(i), '');
            Conexao[I].Usuario  := ArquivoINI.ReadString('Conexao', 'Usuario'+inttostr(i), '');
            Conexao[I].Senha    := ArquivoINI.ReadString('Conexao', 'Senha'+inttostr(i), 'Via7216');
         end;
      if Conexao[I].Default = '1'
      then
        begin
          vDefault:= i;
          vHostname:= Conexao[I].Hostname;
          vDatabase:= Conexao[I].Database;
          vPorta   := Conexao[I].porta;
          break;
        end;

    end;

  ArquivoINI.Free;

  BD1.Connected := false;
  BD1.HostName  := vHostname;
  BD1.Database  := vDatabase;
  BD1.Port      := strtoint(vporta);
  BD1.LibraryLocation := {extractfilepath(application.exename)+'d:\ViaERP\libpq.dll';

           }
end;

end.
