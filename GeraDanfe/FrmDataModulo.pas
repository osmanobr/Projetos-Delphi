unit FrmDataModulo;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG, FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TModulo = class(TDataModule)
    Conexao: TFDConnection;
    Qr1: TFDQuery;
    PGLink: TFDPhysPgDriverLink;
    Qr2: TFDQuery;
    Qr3: TFDQuery;
    Qr4: TFDQuery;
    QR5: TFDQuery;
    DS1: TDataSource;
    DS2: TDataSource;
    DS3: TDataSource;
    DS4: TDataSource;
    DS5: TDataSource;
    QrEmpresas: TFDQuery;
    DSEmpresas: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Modulo: TModulo;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
