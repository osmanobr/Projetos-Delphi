//SISTEMA DESENVOLVIDO EM RAD Studio 10.1 Berlin
//Desenvolvido por: OSMANO TORRES DE BRITO OSMANO.COM.BR
//Nome: CurvaABC
//Finalidade: Suprir as informações referentes ao principio de Paretto aplicado a uma empresa
//Data Início: 04/07/2022
//Data Entrega> 07/07/2022
unit UReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, UCurvaABC, RLParser,
  RLXLSXFilter, RLRichFilter, RLHTMLFilter, RLXLSFilter, RLFilters, RLPDFFilter,
  RLPreviewForm;

type
  TFrmReport = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLLEmpresa: TRLLabel;
    RLLTitulo: TRLLabel;
    RLLabel1: TRLLabel;
    RLBand4: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLBand5: TRLBand;
    RLLabel7: TRLLabel;
    RLDBText6: TRLDBText;
    RLGroup1: TRLGroup;
    RLBand6: TRLBand;
    RLDBResult4: TRLDBResult;
    RLDBResult5: TRLDBResult;
    RLPreviewSetup1: TRLPreviewSetup;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLXLSXFilter1: TRLXLSXFilter;
    RLExpressionParser1: TRLExpressionParser;
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure RLGroup1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmReport: TFrmReport;
  vCurva:integer;
implementation

{$R *.dfm}

procedure TFrmReport.FormCreate(Sender: TObject);
begin
  case vcurva of
      0:
      begin
        RLLTitulo.Caption:= 'Relatório Curva ABC - Venda Itens';
        RLLabel4.Caption:='Vl Vendido';
        RLDBText3.DataField := 'valor_vendido';
        RLDBResult1.DataField:='valor_vendido';
        RLDBResult4.DataField:='valor_vendido';
      end;
      1:
      begin
        RLLTitulo.Caption:= 'Relatório Curva ABC - Compra Itens';
        RLLabel4.Caption:='Vl Comprado';
        RLDBText3.DataField := 'valor_comprado';
        RLDBResult1.DataField:='valor_comprado';
        RLDBResult4.DataField:='valor_comprado';
      end;
  end;

end;

procedure TFrmReport.RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
if RLBand2.Color = clWhite then
   RLBand2.Color := clGradientInactiveCaption
else
  RLBand2.Color := clWhite;

end;

procedure TFrmReport.RLGroup1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
case vcurva of
      0:
      begin
        RLLTitulo.Caption:= 'Relatório Curva ABC - Venda Itens';
        RLLabel4.Caption:='Vl Vendido';
        RLDBText3.DataField := 'valor_vendido';
        RLDBResult1.DataField:='valor_vendido';
        RLDBResult4.DataField:='valor_vendido';
      end;
      1:
      begin
        RLLTitulo.Caption:= 'Relatório Curva ABC - Compra Itens';
        RLLabel4.Caption:='Vl Comprado';
        RLDBText3.DataField := 'valor_comprado';
        RLDBResult1.DataField:='valor_comprado';
        RLDBResult4.DataField:='valor_comprado';
      end;
  end;
end;

end.
