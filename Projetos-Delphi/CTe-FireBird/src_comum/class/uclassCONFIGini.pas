unit uclassCONFIGini;

interface

uses
  Windows,
  SysUtils,
  Variants,
  Classes,
  IniFiles,
  Forms;

type
  TconfigINI = class;

  TConfigINIBase = class(TObject)
  private
    FOwner: TconfigINI;
  public
    constructor Create(AOwner: TconfigINI);
    property Owner: TconfigINI read FOwner;
  end;

  TconfigINIconexao = class(TConfigINIBase)
  private
    function GetServer: String;
    function GetServer_Port: String;
    function GetLocalBanco: String;

    procedure SetServer(const Value: string);
    procedure SetServer_Port(const Value: String);
  public
    property Server     : String read GetServer write SetServer;
    property Server_Port: String read GetServer_Port write SetServer_Port;
    property LocalBanco : String read GetLocalBanco;
  end;

  TconfigINI = class(TIniFile)
  private
    FConexao: TconfigINIconexao;
    function GetEMAILcontabilidade: String;
    function GetMDFEInserirDefault: Boolean;
    procedure SetMDFEInserirDefault(const Value: Boolean);
    procedure SetEMAILcontabilidade(const Value: String);
  public
    function GetWindowState: TWindowState;
    function GetWindowWidth: Integer;
    function GetWindowHeigth: Integer;
    constructor Create(const FileName: string);
    destructor Destroy; override;
    property Conexao: TconfigINIconexao read FConexao write FConexao;
    property MDFEInserirDefault: Boolean read GetMDFEInserirDefault write SetMDFEInserirDefault;
    property EMAILcontabilidade: String read GetEMAILcontabilidade write SetEMAILcontabilidade;
  end;

var
  oConfigINI: TconfigINI;

implementation

  { TConfigINIBase }
constructor TConfigINIBase.Create(AOwner: TconfigINI);
begin
  Self.FOwner := AOwner;
end;

  { TConfigINI }
constructor TconfigINI.Create(const FileName: string);
begin
  inherited;

  Conexao := TconfigINIconexao.Create(Self);
end;

destructor TconfigINI.Destroy;
begin
  Conexao.Free;

  inherited;
end;

function TconfigINI.GetEMAILcontabilidade: String;
begin
  Result := ReadString('XML', 'EmailContabilidade', EmptyStr);
end;

function TconfigINI.GetMDFEInserirDefault: Boolean;
begin
  Result := ReadBool('MDFE', 'InserirDefault', False);
end;

function TconfigINI.GetWindowHeigth: Integer;
begin
  Result := ReadInteger('CONFIG', 'FormPrincipalHeigth', 768);
end;

function TconfigINI.GetWindowState: TWindowState;
var
  aEstado: string;
begin
  aEstado := ReadString('CONFIG', 'FormWindowState', 'Maximizado');

  if aEstado = 'Maximizado' then
    Result := wsMaximized
  else
    if aEstado = 'Normal' then
      Result := wsNormal
    else
      Result := wsMaximized;
end;

function TconfigINI.GetWindowWidth: Integer;
begin
  Result := ReadInteger('CONFIG', 'FormPrincipalWidth', 1200);
end;

procedure TconfigINI.SetEMAILcontabilidade(const Value: String);
begin
  WriteString('XML', 'EmailContabilidade', Value);
end;

procedure TconfigINI.SetMDFEInserirDefault(const Value: Boolean);
begin
  WriteBool('MDFE', 'InserirDefault', Value);
end;

function TconfigINIconexao.GetLocalBanco: String;
begin
  Result := Owner.ReadString('BANCO', 'SERVER_PATH', Result);
end;

function TconfigINIconexao.GetServer_Port: String;
begin
  Result := Owner.ReadString('BANCO', 'PORTA', '3050');
end;

function TconfigINIconexao.GetServer: String;
begin
  Result := Owner.ReadString('BANCO', 'SERVER', Result);
end;

procedure TconfigINIconexao.SetServer_Port(const Value: String);
begin
  Owner.WriteString('BANCO', 'PORTA', Value);
end;

procedure TconfigINIconexao.SetServer(const Value: string);
begin
  Owner.WriteString('BANCO', 'SERVER', Value);
end;

initialization

oConfigINI := TconfigINI.Create(ExtractFilePath(ParamStr(0)) + '\config.ini');

finalization

FreeAndNil(oConfigINI);

end.
