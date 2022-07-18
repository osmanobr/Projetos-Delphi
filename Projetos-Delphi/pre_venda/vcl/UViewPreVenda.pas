unit UViewPreVenda;

interface

uses
{
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;
}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, dxGDIPlusClasses;

type
  TFrmPreVenda = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    StatusBar1: TStatusBar;
    PCPreVenda: TPageControl;
    TSOrcamento: TTabSheet;
    Venda: TTabSheet;
    TSProdutos: TTabSheet;
    EdtImput: TEdit;
    LblTitulo: TLabel;
    SpeedButton1: TSpeedButton;
    Panel3: TPanel;
    PnlMenuOrcamento: TPanel;
    DBGrid1: TDBGrid;
    TSClientes: TTabSheet;
    Panel5: TPanel;
    Image1: TImage;
    Shape1: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    GroupBox1: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Panel6: TPanel;
    DBGrid2: TDBGrid;
    Panel7: TPanel;
    Image2: TImage;
    Image3: TImage;
    Label29: TLabel;
    Label30: TLabel;
    Panel8: TPanel;
    Shape2: TShape;
    Image4: TImage;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label47: TLabel;
    GroupBox2: TGroupBox;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Panel9: TPanel;
    Label60: TLabel;
    DBGrid3: TDBGrid;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label61: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    TSFornecedores: TTabSheet;
    Label77: TLabel;
    DBGrid5: TDBGrid;
    Panel13: TPanel;
    PnlMenuVenda: TPanel;
    DBGrid6: TDBGrid;
    Panel11: TPanel;
    Panel12: TPanel;
    DBGrid9: TDBGrid;
    Label98: TLabel;
    DBGrid8: TDBGrid;
    Label97: TLabel;
    DBGrid10: TDBGrid;
    Label99: TLabel;
    Panel14: TPanel;
    Shape3: TShape;
    Image5: TImage;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    GroupBox5: TGroupBox;
    SBMenuOrcamento: TSpeedButton;
    PnlItensMenuOrcamento: TPanel;
    GroupBox3: TGroupBox;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    DBGrid4: TDBGrid;
    SBMenuVendas: TSpeedButton;
    PnlItensMenuVenda: TPanel;
    Label78: TLabel;
    DBGrid7: TDBGrid;
    GroupBox4: TGroupBox;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    LblMatriculaVendedor: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    procedure PCPreVendaChange(Sender: TObject);
    procedure SBMenuOrcamentoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SBMenuVendasClick(Sender: TObject);
    procedure LblMatriculaVendedorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPreVenda: TFrmPreVenda;
  vgIdMatriculaVendedor:integer = 0;

implementation

{$R *.dfm}

uses UVendedor;

procedure TFrmPreVenda.FormCreate(Sender: TObject);
begin
  pnlMenuOrcamento.Width:=50;
  pnlMenuVenda.Width:=50;
end;

procedure TFrmPreVenda.LblMatriculaVendedorClick(Sender: TObject);
begin
  Application.CreateForm(TFrmVendedor, FrmVendedor);

  FrmVendedor.ShowModal;
  LblMatriculaVendedor.caption := inttostr(vgIdMatriculaVendedor)
end;

procedure TFrmPreVenda.PCPreVendaChange(Sender: TObject);
begin
  case PCPreVenda.TabIndex of
   0:
     begin
       LblTitulo.Caption := 'ORÇAMENTO: ';
       EdtImput.textHint := 'Localizar Orçamento';
       pnlMenuVenda.Width:=50;
       SBMenuVendas.Caption:='';
       pnlitensmenuvenda.Visible:=false;
     end;
   1:
     begin
       LblTitulo.Caption := 'VENDA: ';
       EdtImput.textHint := 'Localizar Venda';
       pnlMenuOrcamento.Width:=50;
       SBMenuOrcamento.Caption:='';
       pnlitensmenuOrcamento.Visible:=false;
     end;
   2:
     begin
       LblTitulo.Caption := 'PRODUTOS: ';
       EdtImput.textHint := 'Localizar Produto';
     end;
   3:
     begin
       LblTitulo.Caption := 'CLIENTES: ';
       EdtImput.textHint := 'Localizar Cliente';
     end;
   4:
     begin
       LblTitulo.Caption := 'FORNECEDORES: ';
       EdtImput.textHint := 'Localizar Fornecedor';
     end;
  end;
end;

procedure TFrmPreVenda.SBMenuOrcamentoClick(Sender: TObject);
begin

 if pnlMenuOrcamento.Width < 300 then

 while pnlMenuOrcamento.Width < 300 do
   begin
      pnlMenuOrcamento.Width := pnlMenuOrcamento.Width + 10;
      SBMenuOrcamento.Caption:='Menu Orçamento';
      PnlItensMenuOrcamento.Visible := true;

   end
 else
   while pnlMenuOrcamento.Width > 50 do
     begin
        pnlMenuOrcamento.Width := pnlMenuOrcamento.Width - 10;
        SBMenuOrcamento.Caption:='';
        PnlItensMenuOrcamento.Visible := false;
     end;
  PnlItensMenuOrcamento.refresh;
end;

procedure TFrmPreVenda.SBMenuVendasClick(Sender: TObject);
begin

 if pnlMenuVenda.Width < 300 then

 while pnlMenuVenda.Width < 300 do
   begin
      pnlMenuVenda.Width := pnlMenuVenda.Width + 10;
      SBMenuVendas.Caption:='Menu Orçamento';
      PnlItensMenuVenda.Visible := true;

   end
 else
   while pnlMenuVenda.Width > 50 do
     begin
        pnlMenuVenda.Width := pnlMenuVenda.Width - 10;
        SBMenuVendas.Caption:='';
        PnlItensMenuVenda.Visible := false;
     end;
  PnlItensMenuVenda.refresh;
end;

end.
