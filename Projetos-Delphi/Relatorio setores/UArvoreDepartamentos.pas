unit UArvoreDepartamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset, ZDataset,
  ZAbstractConnection, ZConnection, Vcl.StdCtrls, comobj, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons;

type
  TFrmArvoreDepartamentos = class(TForm)
    zqrCMD: TZReadOnlyQuery;
    BD1: TZConnection;
    CBDepartamento: TComboBox;
    CBSetor: TComboBox;
    CBSecao: TComboBox;
    CBGrupo: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    CBSubgrupo: TComboBox;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    SpeedButton1: TSpeedButton;
    Label6: TLabel;
    CBOrdem: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure PFiltrar;
    procedure CBDepartamentoSelect(Sender: TObject);
    procedure CBSetorSelect(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    procedure PreencherCombos;


    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmArvoreDepartamentos: TFrmArvoreDepartamentos;

implementation

{$R *.dfm}
procedure TFrmArvoreDepartamentos.PFiltrar;
 var
 Fdepartamento, Fsetor, Fsecao, Fgrupo, Fsubgrupo:string;
begin
   if CBOrdem.ItemIndex = 0 then
      zqrCMD.SortedFields:= 'id'
    else
      zqrCMD.SortedFields := 'nome';

   ZQRCMD.Filtered:=FALSE;
   Fdepartamento :=  'departamento = '+quotedstr(CBDepartamento.text);
   if CBDepartamento.text = 'TODOS' then Fdepartamento :=  'departamento <> '+quotedstr('TODOS');

   FSetor :=  ' and setor = '+quotedstr(CBSetor.text);
   if CBSetor.text = 'TODOS' then FSetor :=  ' and setor <> '+quotedstr('TODOS') ;

   FSecao :=  ' and secao = '+quotedstr(CBSecao.text);
   if CBSecao.text = 'TODOS' then FSecao :=  ' and secao <> '+quotedstr('TODOS');

   FGrupo :=  ' and grupo = '+quotedstr(CBGrupo.text);
   if CBGrupo.text = 'TODOS' then FGrupo :=  ' and grupo <> '+quotedstr('TODOS');

   FSubGrupo :=  ' and subgrupo = '+quotedstr(CBSubGrupo.text);
   if CBSubGrupo.text = 'TODOS' then FSubGrupo :=  ' and subgrupo <> '+quotedstr('TODOS');

    ZQRCMD.Filter := Fdepartamento + FSetor + FSecao + FGrupo + FSubgrupo;
   // showmessage(zqrcmd.filter);
   ZQRCMD.Filtered:=TRUE;
   zqrCMD.First;
end;

procedure TFrmArvoreDepartamentos.CBDepartamentoSelect(Sender: TObject);
begin
  PFiltrar;
end;

procedure TFrmArvoreDepartamentos.CBSetorSelect(Sender: TObject);
begin
PFiltrar;
end;

procedure TFrmArvoreDepartamentos.FormCreate(Sender: TObject);
begin
  preencherCombos;
end;

procedure TFrmArvoreDepartamentos.PreencherCombos;
var

  lista:tstringlist;
  i:integer;
begin
  lista:=tstringlist.Create;

  zqrCMD.Close;
  zqrCMD.SQL.Clear;

  zqrCMD.SQL.Add('SELECT                       ');
  zqrCMD.SQL.Add('	C.ID,                      ');
  zqrCMD.SQL.Add('  C.nome,                    ');
  zqrCMD.SQL.Add('  C.estoque_atual,           ');
  zqrCMD.SQL.Add('	C.preco_venda,             ');
  zqrCMD.SQL.Add('	( C.estoque_atual * C.preco_venda ) AS total ,       ');
  zqrCMD.SQL.Add('	C.id_grupo AS id_Dep,      ');
  zqrCMD.SQL.Add('	d.nome AS departamento,    ');
  zqrCMD.SQL.Add('	e.descricao AS setor,      ');
  zqrCMD.SQL.Add('	e.ID AS id_setor,          ');
  zqrCMD.SQL.Add('	f.descricao AS secao,      ');
  zqrCMD.SQL.Add('	f.ID AS id_secao,          ');
  zqrCMD.SQL.Add('	G.descricao AS grupo,      ');
  zqrCMD.SQL.Add('	G.ID AS id_grupo,          ');
  zqrCMD.SQL.Add('	h.descricao AS subgrupo,   ');
  zqrCMD.SQL.Add('	h.ID AS id_subgrupo        ');

  zqrCMD.SQL.Add('FROM                         ');
  zqrCMD.SQL.Add('	produtos                   ');
  zqrCMD.SQL.Add('	C LEFT JOIN grupo_produto d ON ( d.ID = C.id_grupo )');
  zqrCMD.SQL.Add('	LEFT JOIN setor e ON ( e.ID = C.id_setor )          ');
  zqrCMD.SQL.Add('	LEFT JOIN secao f ON ( f.ID = C.id_secao )          ');
  zqrCMD.SQL.Add('	LEFT JOIN grupo G ON ( G.ID = C.id_grupos )         ');
  zqrCMD.SQL.Add('	LEFT JOIN subgrupo h ON ( h.ID = C.id_subgrupo )    ');
  zqrCMD.SQL.Add('	 ;    ');
  zqrCMD.Open;

//ADICIONANDO OS DEPARTAMENTOS
  zqrCMD.First;
  CBDepartamento.Items.Clear;
  lista.Clear;
  while not zqrCMD.Eof do
  begin
    if trim(zqrCMD.FieldByName('departamento').asstring)<>'' then
       lista.Add(zqrCMD.FieldByName('departamento').asstring);
   zqrCMD.Next;
  end;
  lista.Sort;
  for I := lista.count - 1 downto 1 do
  begin
    if lista[I-1] = lista[I] then
       lista.Delete(I);
  end;
  CBDepartamento.Items.Text:=lista.Text;
  CBDepartamento.Items.Insert(0,'TODOS');
  //---------------------------------------------

//ADICIONANDO OS SETORES
  zqrCMD.First;
  CBSetor.Items.Clear;
  lista.Clear;
  while not zqrCMD.Eof do
  begin
    if trim(zqrCMD.FieldByName('setor').asstring)<>'' then
       lista.Add(zqrCMD.FieldByName('setor').asstring);
   zqrCMD.Next;
  end;
  lista.Sort;
  for I := lista.count - 1 downto 1 do
  begin
    if lista[I-1] = lista[I] then
       lista.Delete(I);
  end;
  CBSetor.Items.Text:=lista.Text;
  CBSetor.Items.Insert(0,'TODOS');
  //---------------------------------------------

//ADICIONANDO AS SECÇÕES
  zqrCMD.First;
  CBSecao.Items.Clear;
  lista.Clear;
  while not zqrCMD.Eof do
  begin
    if trim(zqrCMD.FieldByName('secao').asstring)<>'' then
       lista.Add(zqrCMD.FieldByName('secao').asstring);
   zqrCMD.Next;
  end;
  lista.Sort;
  for I := lista.count - 1 downto 1 do
  begin
    if lista[I-1] = lista[I] then
       lista.Delete(I);
  end;
  CBSecao.Items.Text:=lista.Text;
  CBSecao.Items.Insert(0,'TODOS');
  //---------------------------------------------

//ADICIONANDO OS GRUPOS
  zqrCMD.First;
  CBGrupo.Items.Clear;
  lista.Clear;
  while not zqrCMD.Eof do
  begin
    if trim(zqrCMD.FieldByName('grupo').asstring)<>'' then
       lista.Add(zqrCMD.FieldByName('grupo').asstring);
   zqrCMD.Next;
  end;
  lista.Sort;
  for I := lista.count - 1 downto 1 do
  begin
    if lista[I-1] = lista[I] then
       lista.Delete(I);
  end;
  CBGrupo.Items.Text:=lista.Text;
  CBGrupo.Items.Insert(0,'TODOS');
  //---------------------------------------------

//ADICIONANDO OS SUBGRUPOS
  zqrCMD.First;
  CBSubGrupo.Items.Clear;
  lista.Clear;
  while not zqrCMD.Eof do
  begin
    if trim(zqrCMD.FieldByName('subgrupo').asstring)<>'' then
       lista.Add(zqrCMD.FieldByName('subgrupo').asstring);
   zqrCMD.Next;
  end;
  lista.Sort;
  for I := lista.count - 1 downto 1 do
  begin
    if lista[I-1] = lista[I] then
       lista.Delete(I);
  end;
  CBSubGrupo.Items.Text:=lista.Text;
  CBSubGrupo.Items.Insert(0,'TODOS');
  //---------------------------------------------
  zqrCMD.First;
  CBDepartamento.ItemIndex := 0;
  CBSetor.ItemIndex := 0;
  CBSecao.ItemIndex := 0;
  CBGrupo.ItemIndex := 0;
  CBSubGrupo.ItemIndex := 0;
end;


procedure TFrmArvoreDepartamentos.SpeedButton1Click(Sender: TObject);
var
  Excel: variant;
  Plan: variant;
  lin, i:integer;
begin

  Excel := CreateOleObject('Excel.Application');
  Excel.Visible := True;

  Excel.Workbooks.Add;

  Application.BringToFront;

  Plan := Excel.WorkBooks[1].Sheets[1];
  Plan.Name := 'Departamentos';


  lin := 1;
  Plan.Cells[lin, 1] := 'NOME DA EMPRESA';
  Plan.cells[lin,1].Font.Size           := 14;
  Plan.cells[lin,1].Font.Bold           := True;
  Plan.Range['A1:J1'].Mergecells        := True;
  Plan.Range['A1:J1'].HorizontalAlignment := 3;

  lin := lin+1  ;
  Plan.Cells[lin, 1] := 'RELATORIO ORGANIZADO POR DEPARTATAMENTOS';
  Plan.cells[lin,1].Font.Size           := 12;
  Plan.cells[lin,1].Font.Bold           := True;
  Plan.Range['A1:J1'].Mergecells        := True;
  Plan.Range['A1:J1'].Interior.Color      := $00F2DFC6;

  Plan.Cells[lin+1, 1] := 'FILTRO: Departamento='+CBDepartamento.Text+', Setor='+CBSetor.Text+', Seção='+CBSecao.Text+', Grupo='+CBGrupo.Text+', Subgrupo='+CBSubgrupo.Text;
  Plan.Range['A2:J2'].Mergecells        := True;

  lin:=lin+2;
  Plan.Cells[lin, 1] := 'CODIGO';
  Plan.Cells[lin, 2] := 'PRODUTO';
  Plan.Cells[lin, 8] := 'ESTOQUE';
  Plan.Cells[lin, 9] := 'PREÇO VENDA';
  Plan.Cells[lin, 10] := 'VALOR TOTAL';
  Plan.Range['B'+inttostr(lin)+':G'+inttostr(lin)].Mergecells        := True;
  Plan.Range['A'+inttostr(lin)+':J'+inttostr(lin)].Font.bold         := true;


  zqrCMD.First;
  while not zqrCMD.eof do
  begin
    lin:=lin+1;
    Plan.Cells[lin, 1] := zqrCMD.FieldByName('id').AsString ;
    Plan.Cells[lin, 2] := zqrCMD.FieldByName('nome').AsString ;
    Plan.Range['B'+inttostr(lin)+':G'+inttostr(lin)].Mergecells        := True;
    Plan.Cells[lin, 8] := floattostr(zqrCMD.FieldByName('estoque_atual').Asfloat) ;
    Plan.Cells[lin, 9] := floattostr(zqrCMD.FieldByName('preco_venda').Asfloat) ;
    Plan.Cells[lin, 10] := floattostr( zqrCMD.FieldByName('total').Asfloat) ;
    Plan.cells[lin, 8].NumberFormat   := '0,00';
    Plan.cells[lin, 9].NumberFormat   := '0,00';
    Plan.cells[lin, 10].NumberFormat   := '0,00';

    zqrCMD.next;
  end;

  lin:=lin+1;
  Plan.Cells[lin, 1] := 'Impresso em: '+datetostr(now)+' '+timetostr(now);
  Plan.Range['A'+inttostr(lin)+':J'+inttostr(lin)].Mergecells        := True;
  lin:=lin+1;
  Plan.Cells[lin, 1] := 'Viatech Sistemas - www.viatechinfo.com.br';
  Plan.Range['A'+inttostr(lin)+':J'+inttostr(lin)].Mergecells        := True;
  Plan.Range['A'+inttostr(lin)+':J'+inttostr(lin)].Font.bold         := true;
  Plan.Range['A'+inttostr(lin)+':J'+inttostr(lin)].Font.size         := 10;
  Plan.Range['A1:J'+inttostr(lin)].Borders.LineStyle   := 1;



end;

end.

{
var
  Excel: variant;
  Plan: variant;
begin
  Excel := CreateOleObject('Excel.Application');
  Excel.Visible := True;

  Excel.Workbooks.Add;

  Application.BringToFront;

  Plan := Excel.WorkBooks[1].Sheets[1];
  Plan.Name := 'Aluno';
  Plan.Cells[1, 1] := 'IdAluno';
  Plan.Cells[1, 2] := 'Matricula';
  Plan.Cells[2, 1] :=  '2514';
  Plan.Cells[2, 2] := 'JOSE';

  Plan := Excel.Workbooks[1].Sheets.Add(null, Plan); // adiciona planilha no fim (fica ativa)
  Plan.Name := '2o. Aluno';
  Plan.Cells[1, 1] := '2o. IdAluno';
  Plan.Cells[1, 2] := '2o. Matricula';
  Plan.Cells[2, 1] := '2o. 2515';
  Plan.Cells[2, 2] := '2o. MARIA';

  Plan := Excel.Workbooks[1].Sheets.Add(null, Plan); // adiciona planilha no fim (fica ativa)
  Plan.Name := '3o. Aluno';
  Plan.Cells[1, 1] := '3o. IdAluno';
  Plan.Cells[1, 2] := '3o. Matricula';
  Plan.Cells[2, 1] := '3o. 2516';
  Plan.Cells[2, 2] := '3o. PEDRO';
end;
}
