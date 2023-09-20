unit UnitMae;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  ACBrDFeReport, ACBrDFeDANFeReport, ACBrNFeDANFEClass, ACBrNFeDANFeRLClass,
  ACBrBase, ACBrDFe, ACBrNFe, Vcl.ExtCtrls, Vcl.OleCtrls, SHDocVw, Vcl.FileCtrl,
  Vcl.Menus, Winapi.ShellAPI,  xmldom, XMLIntf, msxmldom, XMLDoc, Vcl.Grids, Vcl.ComCtrls,
  inifiles,  FrmDataModulo;

type
  TfrmViaGeraDanfe = class(TForm)
    ACBrNFe1: TACBrNFe;
    ACBrNFeDANFeRL1: TACBrNFeDANFeRL;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    BBAbrirXML: TBitBtn;
    PopupMenu1: TPopupMenu;
    Abricomprogramapadro1: TMenuItem;
    Panel2: TPanel;
    Panel3: TPanel;
    BBGravarAlteracoes: TBitBtn;
    PopupMenu3: TPopupMenu;
    AutoMultiplicar: TMenuItem;
    EditItensSomaQuantidade: TEdit;
    EditItensSomaDesconto: TEdit;
    EditItensSomaTotal: TEdit;
    Imprimir1: TMenuItem;
    Splitter3: TSplitter;
    Panel4: TPanel;
    WebBrowser1: TWebBrowser;
    Label1: TLabel;
    PageControl1: TPageControl;
    TSXmlArquivo: TTabSheet;
    Panel5: TPanel;
    Splitter2: TSplitter;
    FileListBox1: TFileListBox;
    DirectoryListBox1: TDirectoryListBox;
    Panel6: TPanel;
    SGXml: TStringGrid;
    TSXmlBanco: TTabSheet;
    Panel7: TPanel;
    EditServer: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    EditUser: TEdit;
    Label5: TLabel;
    EditDatabase: TEdit;
    Label6: TLabel;
    EditPort: TEdit;
    Label7: TLabel;
    EditPass: TEdit;
    Panel8: TPanel;
    LabelConexao: TLabel;
    GroupBox1: TGroupBox;
    Splitter1: TSplitter;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    Splitter4: TSplitter;
    MemoNotasBanco: TMemo;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    SBConectar: TSpeedButton;
    Panel9: TPanel;
    Label9: TLabel;
    GroupBox3: TGroupBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BBAbrirXMLClick(Sender: TObject);
    procedure FileListBox1DblClick(Sender: TObject);
    procedure Abricomprogramapadro1Click(Sender: TObject);
    procedure SGXmlDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure BBGravarAlteracoesClick(Sender: TObject);
    procedure AutoMultiplicarClick(Sender: TObject);
    procedure SGXmlKeyPress(Sender: TObject; var Key: Char);
    procedure Imprimir1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SBConectarClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    procedure ExecFile(F: String);
    procedure ImportarXml;
    procedure GravaAlteracoes;
    procedure Conectar;
    procedure ConfigurarConexao;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmViaGeraDanfe: TfrmViaGeraDanfe;
  vGCaminhoViaERP:string = 'd:\viaerp';
  vgDatabase:string;
  vgServer:string;
  vgPort:integer;


implementation

{$R *.dfm}

procedure TfrmViaGeraDanfe.ConfigurarConexao;
var
  Ini : tIniFile;
  vLDefault:integer;

begin
  Ini := TIniFile.Create(vGCaminhoViaERP+'\ViaERP.ini');
  if Ini.ReadString('Conexao', 'Default', '0')='1' then
     vLDefault := 0
     else
      if Ini.ReadString('Conexao', 'Default1', '0')='1' then
         vLDefault := 1
         else
          if Ini.ReadString('Conexao', 'Default2', '0')='1' then
             vLDefault := 2
             else
              if Ini.ReadString('Conexao', 'Default3', '0')='1' then
                 vLDefault := 3
                 else
                  if Ini.ReadString('Conexao', 'Default4', '0')='1' then
                     vLDefault := 4
                     else
                      if Ini.ReadString('Conexao', 'Default5', '0')='1' then
                         vLDefault := 5
                         else
                            vLDefault := 6;

      if  vLDefault = 0
         then
           begin
              vgDatabase := Ini.ReadString('Conexao', 'Database', 'postgres');
              vgServer   := Ini.ReadString('Conexao', 'Hostname', '127.0.0.1');
              vgPort     := Ini.ReadInteger('Conexao', 'Porta', 5432);
           end
       else if vLDefault > 0 then
           begin
              vgDatabase := Ini.ReadString('Conexao', 'Database'+inttostr(vLDefault), 'postgres');
              vgServer   := Ini.ReadString('Conexao', 'Hostname'+inttostr(vLDefault), '127.0.0.1');
              vgPort     := Ini.ReadInteger('Conexao', 'Porta'+inttostr(vLDefault), 5432);
           end;
      Ini.Free;

  EditServer.Text     :=  vgServer ;
  EditUser.Text       :=  'ViaERP';
  EditDatabase.Text   :=  vgDatabase;
  EditPort.Text       :=  inttostr(vgPort);
  EditPass.Text       :=  'Via7216';

end;




procedure TfrmViaGeraDanfe.CheckBox1Click(Sender: TObject);
begin
   modulo.Qr1.Close;
   modulo.Qr1.sql.Clear;
   modulo.Qr1.sql.add('select * from ');
   modulo.Qr1.sql.add('venda v inner join ');
   modulo.Qr1.sql.add('monitor_nf m ');
   modulo.Qr1.sql.add('on(v.id = m.id_venda) ');
   modulo.Qr1.sql.add('where v.data_emissao = BETWEEN '+quotedstr(datetostr(DateTimePicker3.date))+' and '+quotedstr(datetostr(DateTimePicker4.date))+'; ');
   modulo.Qr1.sql.add('order by v.id; ');
   modulo.Qr1.open;
   if modulo.Qr1.recordcount > 0 then
      begin
        if not modulo.Qr1.eof then repeat
           begin
              MemoNotasBanco.Lines.Add(modulo.Qr1.fieldbyname());
           end;
        until modulo.Qr1.eof;
      end;


end;

procedure TfrmViaGeraDanfe.Conectar;
var
  StringA : string;
  aLength : integer;
begin

      try
            Modulo.Conexao.Connected := false;
            Modulo.Conexao.close;

            StringA := ExtractFilePath(Application.ExeName);
            aLength := Length(StringA) - Length('Modulos');
            vGCaminhoViaERP := StringA.Remove(aLength-2);

            Modulo.Conexao.Params.DriverID             := 'PG';
            Modulo.Conexao.Params.Values['Database']   := EditDatabase.Text;
            Modulo.Conexao.Params.Values['Server']     := EditServer.Text;
            Modulo.Conexao.Params.Values['Port']       := EditPort.Text;
            Modulo.Conexao.Params.Values['User_Name']  := EditUser.Text;
            Modulo.Conexao.Params.Values['Password']   := EditPass.Text;

            if fileexists('C:\ViaERP\libpq.dll') then
               Modulo.pgLink.VendorLib := 'C:\ViaERP\libpq.dll';
            if fileexists('D:\ViaERP\libpq.dll') then
               Modulo.pgLink.VendorLib := 'D:\ViaERP\libpq.dll';
            if fileexists(vGCaminhoViaERP + '\libpq.dll') then
               Modulo.pgLink.VendorLib := vGCaminhoViaERP + '\libpq.dll';

            Modulo.Conexao.Connected := true;
            Modulo.QrEmpresas.Open;
            LabelConexao.Caption := 'CONEXÃO ON';

       Except
           showmessage('Erro de conexão');
           LabelConexao.Caption := 'CONEXÃO OFF';
       end;
end;

function NPt(str:string):string;
begin
  str:= StringReplace(str,'.','', [rfReplaceAll]);
  result:=str;
end;

procedure TfrmViaGeraDanfe.ExecFile(F: String);
var
r: String;
begin
  case ShellExecute(Handle, nil, PChar(F), nil, nil, SW_SHOWNORMAL) of
    ERROR_FILE_NOT_FOUND: r := 'The specified file was not found.';
    ERROR_PATH_NOT_FOUND: r := 'The specified path was not found.';
    ERROR_BAD_FORMAT: r := 'The .EXE file is invalid (non-Win32 .EXE or error in .EXE image).';
    SE_ERR_ACCESSDENIED: r := 'Windows 95 only: The operating system denied access to the specified file.';
    SE_ERR_ASSOCINCOMPLETE: r := 'The filename association is incomplete or invalid.';
    SE_ERR_DDEBUSY: r := 'The DDE transaction could not be completed because other DDE transactions were being processed.';
    SE_ERR_DDEFAIL: r := 'The DDE transaction failed.';
    SE_ERR_DDETIMEOUT: r := 'The DDE transaction could not be completed because the request timed out.';
    SE_ERR_DLLNOTFOUND: r := 'Windows 95 only: The specified dynamic-link library was not found.';
    SE_ERR_NOASSOC: r := 'There is no application associated with the given filename extension.';
    SE_ERR_OOM: r := 'Windows 95 only: There was not enough memory to complete the operation.';
    SE_ERR_SHARE: r := 'A sharing violation occurred.';
  else
    Exit;
  end;
    ShowMessage(r);
end;


procedure TfrmViaGeraDanfe.Abricomprogramapadro1Click(Sender: TObject);
begin
  ExecFile(FileListBox1.FileName);
end;

procedure TfrmViaGeraDanfe.AutoMultiplicarClick(Sender: TObject);
var i:integer;
        vdesconto, vtotal:Double;
begin

  if SGXml.Row > 0 then
     begin
        SGXml.Cells[5, SGXml.row] := FormatFloat('0.00',(strtofloat(SGXml.Cells[1, SGXml.row])*strtofloat(SGXml.Cells[3, SGXml.row])-strtofloat(SGXml.Cells[4, SGXml.row])));
     end;

   vdesconto := 0.00;
   vtotal    := 0.00;
   if SGXml.Row > 0 then
      for i := 1 to (SGXml.RowCount - 1) do
          begin
            vdesconto := vdesconto + strtofloat(SGXml.Cells[4, i]);   //desconto
            vtotal    := vtotal + strtofloat(SGXml.Cells[5, i]);     //total
            EditItensSomaDesconto.Text := formatfloat('0.00',vdesconto);
            EditItensSomaTotal.text := FormatFloat('#,0.00',vtotal);
          end;
   SGXml.Refresh;


end;

procedure TfrmViaGeraDanfe.BBAbrirXMLClick(Sender: TObject);
 var n:Integer;
begin
if OpenDialog1.execute then
   begin
      ACBrNFe1.NotasFiscais.Clear;
      n:=0;
      ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.fileName);
      ACBrNFe1.NotasFiscais.ImprimirPDF;
      sleep(2000);
      WebBrowser1.Navigate(OpenDialog1.fileName);
      DirectoryListBox1.Directory:=ExtractFilePath(Application.exename)+'\pdf';
      ImportarXml;
   end;
end;


procedure TfrmViaGeraDanfe.BBGravarAlteracoesClick(Sender: TObject);
begin
 GravaAlteracoes;
end;

procedure TfrmViaGeraDanfe.ImportarXml;
var nItem, qtdprod,  row:integer;
    vdesconto, vtotal : double;
begin
  try
      qtdprod := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Count;
      SGXml.rowCount := qtdprod+1;
      SGXml.ColCount := 6;
      row:=0;
      SGXml.Cells[0, row] := 'Codigo';
      SGXml.Cells[1, row] := 'Quantidade' ;
      SGXml.Cells[2, row] := 'Produto' ;
      SGXml.Cells[3, row] := 'Unitario';
      SGXml.Cells[4, row] := 'Desconto';
      SGXml.Cells[5, row] := 'Total';

      SGXml.ColWidths[0] := 100;
      SGXml.ColWidths[1] := 80;
      SGXml.ColWidths[2] := 360;
      SGXml.ColWidths[3] := 80;
      SGXml.ColWidths[4] := 100;
      SGXml.ColWidths[5] := 140;

      vdesconto:= 0;
      vtotal := 0;
       for nItem := 0 to (qtdprod - 1) do
          begin
            row:=row+1;
            SGXml.Cells[0, row] := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.items[ nItem ].Prod.cProd;      //codigo
            SGXml.Cells[1, row] := formatfloat('0.00',ACBrNFe1.NotasFiscais.Items[0].NFe.Det.items[ nItem ].Prod.qCom);  //quantidade
            SGXml.Cells[2, row] := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.items[ nItem ].Prod.xProd ; //produto
            SGXml.Cells[3, row] := formatfloat('0.00',ACBrNFe1.NotasFiscais.Items[0].NFe.Det.items[ nItem ].Prod.vUnCom);    //unitario
            SGXml.Cells[4, row] := formatfloat('0.00',ACBrNFe1.NotasFiscais.Items[0].NFe.Det.items[ nItem ].Prod.vDesc);       //total
            SGXml.Cells[5, row] := formatfloat('0.00',ACBrNFe1.NotasFiscais.Items[0].NFe.Det.items[ nItem ].Prod.vProd);       //total
            EditItensSomaQuantidade.Text := inttostr(qtdprod);
            vdesconto := vdesconto + ACBrNFe1.NotasFiscais.Items[0].NFe.Det.items[ nItem ].Prod.vDesc;
            vtotal    := vtotal + ACBrNFe1.NotasFiscais.Items[0].NFe.Det.items[ nItem ].Prod.vProd;
            EditItensSomaDesconto.Text := formatfloat('0.00',vdesconto);
            EditItensSomaTotal.text := FormatFloat('#,0.00',vtotal);
          end;
      BBGravarAlteracoes.Enabled := true;

  except
    BBGravarAlteracoes.Enabled := False;
    Showmessage('Não foi possível abrir o arquivo...');
  end;


end;

procedure TfrmViaGeraDanfe.Imprimir1Click(Sender: TObject);
begin
     ACBrNFe1.NotasFiscais.Items[0].Imprimir;
end;



procedure TfrmViaGeraDanfe.GravaAlteracoes;
var nItem, qtdprod,  row:integer;
  xmlArquivo : tstringlist;
begin
  try
    qtdprod := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Count;
    xmlArquivo := tstringlist.create;
     for nItem := 0 to (qtdprod - 1) do
        begin
          if SGXml.Cells[0, nItem+1] = ACBrNFe1.NotasFiscais.Items[0].NFe.Det.items[ nItem ].Prod.cProd then
             begin
                ACBrNFe1.NotasFiscais.Items[0].NFe.Det.items[ nItem ].Prod.vUnCom := StrToCurr(NPt(SGXml.Cells[3, nItem+1]));    //unitario
                ACBrNFe1.NotasFiscais.Items[0].NFe.Det.items[ nItem ].Prod.vDesc  := StrToCurr(NPt(SGXml.Cells[4, nItem+1]));     //desconto
                ACBrNFe1.NotasFiscais.Items[0].NFe.Det.items[ nItem ].Prod.vProd  := StrToCurr(NPt(SGXml.Cells[5, nItem+1]));     //total
               // ShowMessage( formatfloat('0.00',ACBrNFe1.NotasFiscais.Items[0].NFe.Det.items[ nItem ].Prod.vProd));
             end;
        end;

       ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF   := (strtofloat(NPt(EditItensSomaTotal.text))-strtofloat(NPt(EditItensSomaDesconto.text)));
       ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vProd := strtofloat(NPt(EditItensSomaTotal.text));
       ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vDesc := strtofloat(NPt(EditItensSomaDesconto.text)) ;
       ACBrNFe1.NotasFiscais.Items[0].NFe.pag.Items[0].vPag   := (strtofloat(NPt(EditItensSomaTotal.text))-strtofloat(NPt(EditItensSomaDesconto.text)));


     ACBrNFe1.NotasFiscais.Items[0].GerarXML;
     xmlArquivo.Text :=  ACBrNFe1.NotasFiscais.Items[0].XML;
     xmlArquivo.SaveToFile(OpenDialog1.FileName);
     sleep(1000);
     WebBrowser1.Navigate(OpenDialog1.fileName);
     BBGravarAlteracoes.Enabled := False;
  except
    BBGravarAlteracoes.Enabled := true;
    showmessage('Não foi possivel gravar as alterações');
  end;
end;

procedure TfrmViaGeraDanfe.FileListBox1DblClick(Sender: TObject);
begin
  WebBrowser1.Navigate(FileListBox1.FileName);
end;

procedure TfrmViaGeraDanfe.FormCreate(Sender: TObject);
begin
  ConfigurarConexao;
  LabelConexao.Caption := 'CONEXÃO OFF'
end;

procedure TfrmViaGeraDanfe.FormShow(Sender: TObject);
begin

  SGXml.rowCount := 1;
  SGXml.ColCount := 6;

  SGXml.Cells[0, 0] := 'Codigo';
  SGXml.Cells[1, 0] := 'Quantidade' ;
  SGXml.Cells[2, 0] := 'Produto' ;
  SGXml.Cells[3, 0] := 'Unitario';
  SGXml.Cells[4, 0] := 'Desconto';
  SGXml.Cells[5, 0] := 'Total';

  SGXml.ColWidths[0] := 100;
  SGXml.ColWidths[1] := 80;
  SGXml.ColWidths[2] := 360;
  SGXml.ColWidths[3] := 80;
  SGXml.ColWidths[4] := 100;
  SGXml.ColWidths[5] := 140;
end;

procedure TfrmViaGeraDanfe.SBConectarClick(Sender: TObject);
begin
  Conectar;
end;

procedure TfrmViaGeraDanfe.SGXmlDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
Const
  clPaleGreen = TColor($009BFF9B);
  clPaleRed =   TColor($009DABF9);
  var
  vquantidade, vunitario, vdesconto, vtotal:Double;
begin

  if Arow=0
    then SGXml.Canvas.Brush.color := clSilver
  else
    begin
        if (trim(SGXml.Cells[1, Arow])<>'') then vquantidade := strtofloat(SGXml.Cells[1, Arow]) else  vquantidade := 0.00; // 'Quantidade' ;
        if (trim(SGXml.Cells[3, Arow])<>'') then vunitario := strtofloat(SGXml.Cells[3, Arow]) else  vunitario := 0.00; // 'Unitario' ;
        if (trim(SGXml.Cells[4, Arow])<>'') then vdesconto := strtofloat(SGXml.Cells[4, Arow]) else  vdesconto := 0.00; //  desconto
        if (trim(SGXml.Cells[5, Arow])<>'') then vtotal := strtofloat(SGXml.Cells[5, Arow]) else  vtotal := 0.00; // Total
           vtotal := vquantidade*vunitario-vdesconto;
        if SGXml.Cells[5,ARow] = FormatFloat('0.00',vtotal)  //certo
          then SGXml.Canvas.Brush.color := clPaleGreen
          else SGXml.Canvas.Brush.color := clPaleRed;

    end;
      SGXml.Canvas.Font.Color:=clblack;
      SGXml.Canvas.Font.Size:=9;

    SGXml.canvas.fillRect(Rect);
    SGXml.canvas.TextOut(Rect.Left,Rect.Top,SGXml.Cells[ACol,ARow]);

end;

procedure TfrmViaGeraDanfe.SGXmlKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
     SGXml.Refresh;
end;

end.
