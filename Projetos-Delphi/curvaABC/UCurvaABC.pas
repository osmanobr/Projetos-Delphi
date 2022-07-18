//SISTEMA DESENVOLVIDO EM RAD Studio 10.1 Berlin
//Desenvolvido por: OSMANO TORRES DE BRITO OSMANO.COM.BR
//Nome: CurvaABC
//Finalidade: Suprir as informações referentes ao principio de Paretto aplicado a uma empresa
//Data Início: 04/07/2022
//Data Entrega> 07/07/2022
unit UCurvaABC;



interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, Vcl.StdCtrls,
  VCLTee.TeCanvas, VCLTee.TeeEdiGrad, VCLTee.Series, VCLTee.TeEngine,
  Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, Vcl.ComCtrls,
  Vcl.Menus;

type
  TFrmCurvaABC = class(TForm)
    Chart1: TChart;
    Series1: TFastLineSeries;
    BD1: TZConnection;
    Qry: TZQuery;
    DS: TDataSource;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    CBCurvas: TComboBox;
    GroupBox2: TGroupBox;
    DTPFim: TDateTimePicker;
    DTPInicio: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox3: TGroupBox;
    BTNExecutar: TButtonGradient;
    BtnRelatorio: TButtonGradient;
    GroupBox4: TGroupBox;
    EdtIndiceA: TEdit;
    EdtIndiceB: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    BtnImprimirGrafico: TButtonGradient;
    Series2: TBarSeries;
    Label6: TLabel;
    EdtIndiceC: TEdit;
    LbSomaIndices: TLabel;
    LBEmpresa: TLabel;
    PopupMenu1: TPopupMenu;
    RestaurarValores1: TMenuItem;
    procedure BTNExecutarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnRelatorioClick(Sender: TObject);
    procedure BtnImprimirGraficoClick(Sender: TObject);
    procedure EdtIndiceAKeyPress(Sender: TObject; var Key: Char);
    procedure EdtIndiceBKeyPress(Sender: TObject; var Key: Char);
    procedure EdtIndiceAKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtIndiceBKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtIndiceAExit(Sender: TObject);
    procedure EdtIndiceBExit(Sender: TObject);
    procedure EdtIndiceCExit(Sender: TObject);
    procedure RestaurarValores1Click(Sender: TObject);
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
 var empresa:string;
     IndiceA, IndiceB, IndiceC :double;
{$R *.dfm}
procedure TFrmCurvaABC.BTNExecutarClick(Sender: TObject);
begin
  case CBCurvas.ItemIndex of
  0:  VendaItem;
  1:  CompraItem;
  end;
end;

procedure TFrmCurvaABC.CalculaIndice;
begin
  LbSomaIndices.Caption:='0,00%';
  if(length(EdtIndiceA.text)>0)and(length(EdtIndiceB.text)>0) then
    begin
      IndiceA     := StrtoFloat(EdtIndiceA.text);
      IndiceB     := StrtoFloat(EdtIndiceB.text);
      IndiceB     := indiceA + IndiceB;
      indiceC     := 100 - (IndiceB) ;

        EdtIndiceC.text     := floattostr(indiceC);
        LbSomaIndices.Caption:=floattostr(Strtofloat(EdtIndiceA.text)+Strtofloat(EdtIndiceB.text)+Strtofloat(EdtIndiceC.text))+'%';

    end;
end;

procedure TFrmCurvaABC.VendaItem;
var A, B, C, classe : string;
   somaA,somaB,somaC:double;
   reg:integer;//registros
   cor : TColor;
begin
  CalculaIndice;

  if ((IndiceA >= IndiceB)or(IndiceB <= IndiceC) or (IndiceA <= IndiceC)or(indiceC<1)or(indiceB<1)or(indiceA<1)) then
     begin
       showmessage('Os valores devem seguir uma ordem decrescente de A para C');
       exit;
     end;

  Qry.Close;
  Qry.SQL.Clear;

  Qry.SQL.Add('SELECT                 ');
  Qry.SQL.Add('  D2.id_produto,       ');
  Qry.SQL.Add('  D2.nome_produto,     ');
  Qry.SQL.Add('  D2.valor_vendido,    ');
  Qry.SQL.Add('  D2.soma_vendas,      ');
  Qry.SQL.Add('  D2.percentual,       ');
  Qry.SQL.Add('  D2.perc_acumulado,   ');
  Qry.SQL.Add('CASE                   ');
  Qry.SQL.Add('    WHEN D2.perc_acumulado <= '+floattostr(IndiceA)+' THEN    ');
  Qry.SQL.Add('    ''A''                                ');
  Qry.SQL.Add('    WHEN D2.perc_acumulado <= '+floattostr(IndiceB)+' THEN    ');
  Qry.SQL.Add('    ''B'' ELSE ''C''                     ');
  Qry.SQL.Add('  END as classe                          ');
  Qry.SQL.Add('  FROM                                   ');
  Qry.SQL.Add('    (                                    ');
  Qry.SQL.Add('    SELECT                               ');
  Qry.SQL.Add('      D1.id_produto,                     ');
  Qry.SQL.Add('      D1.nome_produto,                   ');
  Qry.SQL.Add('      D1.valor_vendido,                  ');
  Qry.SQL.Add('      D1.soma_vendas,                    ');
  Qry.SQL.Add('      D1.percentual,                     ');
  Qry.SQL.Add('      SUM ( D1.percentual ) OVER ( ORDER BY D1.percentual DESC ) AS perc_acumulado   ');
  Qry.SQL.Add('    FROM                                 ');
  Qry.SQL.Add('      (                                  ');
  Qry.SQL.Add('      SELECT                             ');
  Qry.SQL.Add('        id_produto,                      ');
  Qry.SQL.Add('        nome_produto,                    ');
  Qry.SQL.Add('        valor_vendido,                   ');
  Qry.SQL.Add('        SUM ( valor_vendido ) OVER ( ) AS soma_vendas,         ');
  Qry.SQL.Add('        CAST ( valor_vendido AS NUMERIC ( 15, 3 ) ) / CAST ( SUM ( valor_vendido ) OVER ( ) AS NUMERIC ( 15, 3 ) ) * 100 AS percentual     ');
  Qry.SQL.Add('      FROM                               ');
  Qry.SQL.Add('        (                                ');
  Qry.SQL.Add('        SELECT                           ');
  Qry.SQL.Add('          vi.id_produto,                 ');
  Qry.SQL.Add('          vi.nome_produto,               ');
  Qry.SQL.Add('          SUM ( vi.vl_total ) AS valor_vendido   ');
  Qry.SQL.Add('        FROM                               ');
  Qry.SQL.Add('          venda_item AS vi                 ');
  Qry.SQL.Add('  inner join venda v on(v.id=vi.id_venda)  ');
  Qry.SQL.Add('        WHERE                              ');
  Qry.SQL.Add('          vi.DATA BETWEEN '''+datetostr(DTPInicio.Date)+''' ');
  Qry.SQL.Add('          AND '''+datetostr(DTPFim.Date)+'''                ');
  Qry.SQL.Add('and (v.gerado = ''SIM'' or v.expedicao = ''SIM'')           ');
  Qry.SQL.Add('and not v.nf_uniao                       ');
  Qry.SQL.Add('and v.cancelada = ''NAO''                ');
  Qry.SQL.Add('and vi.cancelada = ''NAO''               ');
  Qry.SQL.Add('and v.devolucao = ''NAO''                ');
  Qry.SQL.Add('        GROUP BY                         ');
  Qry.SQL.Add('          vi.id_produto,                 ');
  Qry.SQL.Add('          vi.nome_produto                ');
  Qry.SQL.Add('        ORDER BY                         ');
  Qry.SQL.Add('          2 DESC                         ');
  Qry.SQL.Add('        ) AS valor_item                  ');
  Qry.SQL.Add('      ) AS D1                            ');
  Qry.SQL.Add('  ) AS D2                                ');
  Qry.Open;

  if Qry.RecordCount <1 then
  begin
    showmessage('Não consta movimento no intervalo de datas selecionado.'+#13+'Selecione outro intervalo!');
    exit;
  end;

  somaA:=0.00;
  somaB:=0.00;
  somaC:=0.00;
  Qry.first;
    if not Qry.eof then repeat
    begin
      if  Qry.FieldByName('classe').AsString ='A' then SomaA:= SomaA+Qry.FieldByName('percentual').AsFloat;
      if  Qry.FieldByName('classe').AsString ='B' then SomaB:= SomaB+Qry.FieldByName('percentual').AsFloat;
      if  Qry.FieldByName('classe').AsString ='C' then SomaC:= SomaC+Qry.FieldByName('percentual').AsFloat;
      Qry.next;
    end;
  until Qry.eof;

  A:='A';
  B:='B';
  C:='C';

  series1.Clear;
  series2.Clear;

  cor := clblue;

  Qry.first;
  if not Qry.eof then repeat    //formatfloat('#,0.00',Qry.FieldByName('valor_vendido').AsFloat)
    begin
      Series1.AddY(Qry.FieldByName('Perc_acumulado').AsFloat,'',cor) ;

      //adicionando valores percentual á barra do chart
      if  A = Qry.FieldByName('classe').AsString then
          classe:=A+'= '+formatfloat('#.0.00',somaA )+'%';

      if  B = Qry.FieldByName('classe').AsString then
          classe:=B+'= '+formatfloat('#.0.00',somaB )+'%';

      if  C = Qry.FieldByName('classe').AsString then
          classe:=C+'= '+formatfloat('#.0.00',somaC )+'%';

      //o grafico 2 passa os valores padrões A, B, C

      if(Qry.FieldByName('classe').AsString = 'A') then cor := clgreen;
      if(Qry.FieldByName('classe').AsString = 'B') then cor := clPurple;
      if(Qry.FieldByName('classe').AsString = 'C') then cor := $000080FF;
      Series2.AddY(Qry.FieldByName('Percentual').AsFloat,classe,cor) ;

      //não quero que os valores da barra se repitam a cada subida ou descida do grafico
      if A = Qry.FieldByName('classe').AsString then
        begin
          classe := '';
          A:='';
        end;
      if B = Qry.FieldByName('classe').AsString then
        begin
          classe := '';
          B:='';
        end;
      if C = Qry.FieldByName('classe').AsString then
        begin
          classe := ''; C:='';
        end;

      Qry.next;
    end;
  until Qry.eof;

  chart1.Title.Text.CleaR;
  chart1.Title.Text.ADD('CURVA ABC');
  Series1.Title := 'VENDAS';
  reg:= Qry.RecordCount;

  if reg in [1,31] then Series1.Marks.DrawEvery :=1;
  if ((reg>31)and(reg <101)) then Series1.Marks.DrawEvery :=10;
  if ((reg>102)and(reg <1000)) then Series1.Marks.DrawEvery :=50;

  Series2.Title := 'PERCENTUAL';
  Series2.Gradient.Visible:=true;
  Series2.Gradient.EndColor   := clBlue;
  Series2.Gradient.StartColor := clWhite;
  Chart1.repaint;
end;

procedure TFrmCurvaABC.CompraItem;
var A, B, C, classe : string;
   somaA,somaB,somaC:double;
   reg:integer;//registros
   cor : TColor;
begin
  CalculaIndice;

   if ((IndiceA >= IndiceB)or(IndiceB <= IndiceC) or (IndiceA <= IndiceC)or(indiceC<1)or(indiceB<1)or(indiceA<1)) then
     begin
       showmessage('Os valores devem seguir uma ordem decrescente de A para C');
       exit;
     end;

  Qry.Close;
  Qry.SQL.Clear;

  Qry.SQL.Add('SELECT                 ');
  Qry.SQL.Add('	D2.id_produto,        ');
  Qry.SQL.Add('	D2.nome_produto,      ');
  Qry.SQL.Add('	D2.valor_comprado,    ');
  Qry.SQL.Add('	D2.soma_compras,      ');
  Qry.SQL.Add('	D2.percentual,        ');
  Qry.SQL.Add('	D2.perc_acumulado,    ');
  Qry.SQL.Add('CASE                   ');
  Qry.SQL.Add('		WHEN D2.perc_acumulado <= 80 THEN   ');
  Qry.SQL.Add('		''A''                               ');
  Qry.SQL.Add('		WHEN D2.perc_acumulado <= 95 THEN   ');
  Qry.SQL.Add('		''B'' ELSE ''C''    ');
  Qry.SQL.Add('	END   as classe       ');
  Qry.SQL.Add('	FROM                  ');
  Qry.SQL.Add('		(                   ');
  Qry.SQL.Add('	SELECT                ');
  Qry.SQL.Add('		D1.id_produto,      ');
  Qry.SQL.Add('		D1.nome_produto,    ');
  Qry.SQL.Add('		D1.valor_comprado,  ');
  Qry.SQL.Add('		D1.soma_compras,    ');
  Qry.SQL.Add('		D1.percentual,      ');
  Qry.SQL.Add('		SUM ( D1.percentual ) OVER ( ORDER BY D1.percentual DESC ) AS perc_acumulado    ');
  Qry.SQL.Add('	FROM                  ');
  Qry.SQL.Add('		(                   ');
  Qry.SQL.Add('			SELECT            ');
  Qry.SQL.Add('				id_produto,     ');
  Qry.SQL.Add('				nome_produto,   ');
  Qry.SQL.Add('				valor_comprado, ');
  Qry.SQL.Add('				SUM ( valor_comprado ) OVER ( ) AS soma_compras,          ');
  Qry.SQL.Add('				CAST ( valor_comprado AS NUMERIC ( 15, 3 ) ) / CAST ( SUM ( valor_comprado ) OVER ( ) AS NUMERIC ( 15, 3 ) ) * 100 AS percentual  ');
  Qry.SQL.Add('			FROM                         ');
  Qry.SQL.Add('				(                          ');
  Qry.SQL.Add('						SELECT                 ');
  Qry.SQL.Add('							ci.id_produto,       ');
  Qry.SQL.Add('							ci.nome_produto,     ');
  Qry.SQL.Add('							SUM ( ci.total ) AS valor_comprado ');
  Qry.SQL.Add('						FROM                                 ');
  Qry.SQL.Add('							compra_item AS ci                  ');
  Qry.SQL.Add('							INNER JOIN compra C ON ( C.ID = ci.id_compra )      ');
  Qry.SQL.Add('						WHERE                                                 ');
  Qry.SQL.Add('							C.DATA BETWEEN '''+datetostr(DTPInicio.Date)+'''    ');
  Qry.SQL.Add('							AND '''+datetostr(DTPFim.Date)+'''                  ');
  Qry.SQL.Add('           AND c.gerado = ''SIM''               ');
  Qry.SQL.Add('						GROUP BY                             ');
  Qry.SQL.Add('							ci.id_produto,                     ');
  Qry.SQL.Add('							ci.nome_produto                    ');
  Qry.SQL.Add('						ORDER BY                             ');
  Qry.SQL.Add('							2 DESC                             ');
  Qry.SQL.Add('				 ) AS valor_item                         ');
  Qry.SQL.Add('		 ) as D1                                     ');
  Qry.SQL.Add('	 )as D2                                        ');
  Qry.open;

if Qry.RecordCount <1 then
  begin
    showmessage('Não consta movimento no intervalo de datas selecionado.'+#13+'Selecione outro intervalo!');
    exit;
  end;

  somaA:=0.00;
  somaB:=0.00;
  somaC:=0.00;
  Qry.first;
    if not Qry.eof then repeat
    begin
      if  Qry.FieldByName('classe').AsString ='A' then SomaA:= SomaA+Qry.FieldByName('percentual').AsFloat;
      if  Qry.FieldByName('classe').AsString ='B' then SomaB:= SomaB+Qry.FieldByName('percentual').AsFloat;
      if  Qry.FieldByName('classe').AsString ='C' then SomaC:= SomaC+Qry.FieldByName('percentual').AsFloat;
      Qry.next;
    end;
  until Qry.eof;

  A:='A';
  B:='B';
  C:='C';

  series1.Clear;
  series2.Clear;

  cor := clblue;

  Qry.first;
  if not Qry.eof then repeat    //formatfloat('#,0.00',Qry.FieldByName('valor_vendido').AsFloat)
    begin
      Series1.AddY(Qry.FieldByName('Perc_acumulado').AsFloat,'',cor) ;

      //adicionando valores percentual á barra do chart
      if  A = Qry.FieldByName('classe').AsString then
          classe:=A+'= '+formatfloat('#.0.00',somaA )+'%';

      if  B = Qry.FieldByName('classe').AsString then
          classe:=B+'= '+formatfloat('#.0.00',somaB )+'%';

      if  C = Qry.FieldByName('classe').AsString then
          classe:=C+'= '+formatfloat('#.0.00',somaC )+'%';

      //o grafico 2 passa os valores padrões A, B, C

      if(Qry.FieldByName('classe').AsString = 'A') then cor := clTeal;
      if(Qry.FieldByName('classe').AsString = 'B') then cor := clAqua;
      if(Qry.FieldByName('classe').AsString = 'C') then cor := clYellow;
      Series2.AddY(Qry.FieldByName('Percentual').AsFloat,classe,cor) ;

      //não quero que os valores da barra se repitam a cada subida ou descida do grafico
      if A = Qry.FieldByName('classe').AsString then
        begin
          classe := '';
          A:='';
        end;
      if B = Qry.FieldByName('classe').AsString then
        begin
          classe := '';
          B:='';
        end;
      if C = Qry.FieldByName('classe').AsString then
        begin
          classe := ''; C:='';
        end;

      Qry.next;
    end;
  until Qry.eof;

  chart1.Title.Text.CleaR;
  chart1.Title.Text.ADD('CURVA ABC');
  Series1.Title := 'COMPRAS';
  reg:= Qry.RecordCount;

  if reg in [1,31] then Series1.Marks.DrawEvery :=1;
  if ((reg>31)and(reg <101)) then Series1.Marks.DrawEvery :=10;
  if ((reg>102)and(reg <1000)) then Series1.Marks.DrawEvery :=50;

  Series2.Title := 'PERCENTUAL';
  Series2.Gradient.Visible:=true;
  Series2.Gradient.EndColor   := clBlue;
  Series2.Gradient.StartColor := clWhite;
  Chart1.repaint;
end;



procedure TFrmCurvaABC.EdtIndiceAExit(Sender: TObject);
begin
CalculaIndice;
end;

procedure TFrmCurvaABC.EdtIndiceAKeyPress(Sender: TObject; var Key: Char);
begin
if not(key in ['0'..'9','.',',',#8,#13]) then
  key := #0;
end;

procedure TFrmCurvaABC.EdtIndiceAKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
CalculaIndice;

end;

procedure TFrmCurvaABC.EdtIndiceBExit(Sender: TObject);
begin
CalculaIndice;
end;

procedure TFrmCurvaABC.EdtIndiceBKeyPress(Sender: TObject; var Key: Char);
begin
if not(key in ['0'..'9','.',',',#8,#13]) then
  key := #0;
end;

procedure TFrmCurvaABC.EdtIndiceBKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
CalculaIndice;

end;

procedure TFrmCurvaABC.EdtIndiceCExit(Sender: TObject);
begin
CalculaIndice;
end;

procedure TFrmCurvaABC.BtnImprimirGraficoClick(Sender: TObject);
begin
Chart1.PrintLandscape;
end;

procedure TFrmCurvaABC.BtnRelatorioClick(Sender: TObject);
begin
  try
    FrmReport:=  TFrmReport.Create(nil);
    Ureport.vCurva:=cbcurvas.ItemIndex;
    FrmReport.RLLEmpresa.Caption:=empresa;
    FrmReport.RLReport1.PreviewModal;
  finally
   FrmReport.Free;
  end;

 // showmessage(inttostr(Ureport.vCurva));
end;

procedure TFrmCurvaABC.FormCreate(Sender: TObject);
var
  I, vDefault:integer;
  ArquivoINI: TIniFile;
  vMensagem, vHostname, vDatabase, vPorta : string;
begin

  ArquivoINI := TIniFile.Create({extractfilepath(application.exename)+}'d:\ViaERP\ViaERP.ini');

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
  BD1.LibraryLocation := extractfilepath(application.exename)+'\libpq.dll';

  if((vHostname<>'')and(vDatabase<>'')) then
    begin
      try
        BD1.Connected := true;
        Qry.Close;
        Qry.SQL.Clear;
        Qry.SQL.Add('SELECT nome from empresas;');
        Qry.open;
        empresa:= Qry.FieldByName('nome').AsString;
        LBEmpresa.Caption:= empresa+'    ';
      except
        showmessage('Não foi possivel conectar á base de dados...');
        exit;
      end;
    end;

  DTPInicio.date := StartofTheMonth(date);
  DTPFim.date := EndofTheMonth(date);

  //limpando os graficos
  series1.Clear;
  series2.Clear;
  Series1.Title := 'VENDAS';
  Series2.Title := 'PERCENTUAL';
end;

procedure TFrmCurvaABC.RestaurarValores1Click(Sender: TObject);
begin
 EdtIndiceA.text:= '80';
 EdtIndiceB.text:= '15';
 EdtIndiceC.text:= '5';
end;

end.
