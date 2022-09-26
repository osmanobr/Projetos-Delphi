unit UMae;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, StrUtils,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client, FireDAC.Phys.PG, FireDAC.Phys.PGDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TFrmVIaGeraMVC = class(TForm)
    EdtHost: TLabeledEdit;
    EdtPorta: TLabeledEdit;
    EdtUsuario: TLabeledEdit;
    EdtSenha: TLabeledEdit;
    CBTabelas: TComboBox;
    Label2: TLabel;
    EditView: TLabeledEdit;
    EditModel: TLabeledEdit;
    EditController: TLabeledEdit;
    EditDal: TLabeledEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    Panel2: TPanel;
    SpeedButton2: TSpeedButton;
    Panel3: TPanel;
    SpeedButton3: TSpeedButton;
    Panel4: TPanel;
    SpeedButton4: TSpeedButton;
    Panel5: TPanel;
    SpeedButton6: TSpeedButton;
    MModel: TMemo;
    MView: TMemo;
    MController: TMemo;
    MDal: TMemo;
    Conexao: TFDConnection;
    SBGerarModulos: TSpeedButton;
    EdtDatabase: TLabeledEdit;
    Qr: TFDQuery;
    SaveDialog1: TSaveDialog;
    TSDFM: TTabSheet;
    MDFM: TMemo;
    Panel6: TPanel;
    procedure SpeedButton6Click(Sender: TObject);
    procedure SBGerarModulosClick(Sender: TObject);
    procedure CBTabelasSelect(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    function GerarModel(tabela: string): boolean;
    function GerarView(tabela: string): boolean;
    function GerarController(tabela: string): boolean;
    function GerarDal(tabela: string): boolean;
    function GerarDFM(tabela: string): boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVIaGeraMVC: TFrmVIaGeraMVC;

implementation

{$R *.dfm}

function SEMCHAR(texto: string): string; stdcall;
  const
  NaoChar = '~`!@#$%^&*()_-+=|\<>,.?/æ';
  var
  x: Integer;
begin
  result:='';
  for x := 1 to Length(texto) do
  if Pos(texto[x], NaoChar) <> 0 then
  else
  result := result + texto[x];
end;

function TIPO(texto: string):string; stdcall;
begin
  result := 'indefinido' ;
  case AnsiIndexStr(UpperCase(texto), ['NUMERIC', 'CHARACTER VARYING','INTEGER', 'TEXTO', 'BOOLEAN','TIMESTAMP', 'DATE']) of
    0 : result := 'Double';
    1 : result := 'WideString';
    2 : result := 'Integer';
    3 : result := 'WideString';
    4 : result := 'Boolean';
    5 : result := 'TDateTime';
    6 : result := 'TDateTime';
  end;
  //result := texto ;
end;



procedure TFrmVIaGeraMVC.CBTabelasSelect(Sender: TObject);
begin
    EditModel.Text      := 'Model.ERP.'+CBTabelas.Text;
    EditView.Text       := 'View.ERP.'+CBTabelas.Text;
    EditController.Text := 'Controller.ERP.'+CBTabelas.Text;
    EditDal.Text        := 'Dal.ERP.'+CBTabelas.Text;
end;

function TFrmVIaGeraMVC.GerarModel(tabela:string):boolean;
begin
 try
      MModel.Clear;
      MModel.Lines.Add('unit '+EditModel.text+';');
      MModel.Lines.Add('');
      MModel.Lines.Add('interface');
      MModel.Lines.Add('');
      MModel.Lines.Add('uses');
      MModel.Lines.Add('System.SysUtils, System.Classes, ModelBase;');
      MModel.Lines.Add('');
      MModel.Lines.Add('type');
      MModel.Lines.Add('T'+SEMCHAR(EditModel.text)+' = class(TModelBase)');
      MModel.Lines.Add('');
      MModel.Lines.Add('private');
        Qr.Close;
        qr.SQL.Clear;
        qr.SQL.Add('SELECT 	COLUMN_NAME as coluna, data_type as tipo FROM information_schema.COLUMNS WHERE TABLE_NAME = '+quotedstr(CbTabelas.Text)+';');
        qr.Open;
        qr.First;
        if not qr.Eof then repeat
        begin
          MModel.Lines.Add('    F'+qr.FieldByName('coluna').AsString+' : '+ TIPO(qr.FieldByName('tipo').AsString)+';');
          qr.Next;
        end;
        until qr.Eof;
      MModel.Lines.Add('');

        qr.First;
        if not qr.Eof then repeat
        begin
          MModel.Lines.Add('    procedure Set'+qr.FieldByName('coluna').AsString+'(const Value: '+TIPO(qr.FieldByName('tipo').AsString)+');');
          qr.Next;
        end;
        until qr.Eof;
      MModel.Lines.Add('');

      MModel.Lines.Add('public');
        qr.First;
        if not qr.Eof then repeat
        begin
          MModel.Lines.Add('    property '+qr.FieldByName('coluna').AsString+'     : '+TIPO(qr.FieldByName('tipo').AsString)+' read F'+qr.FieldByName('coluna').AsString+' write Set'+qr.FieldByName('coluna').AsString+';');
          qr.Next;
        end;
        until qr.Eof;
      MModel.Lines.Add('');
      MModel.Lines.Add('procedure Clear; override;                               ');
      MModel.Lines.Add('');
      MModel.Lines.Add('function Assign(Model : TModelBase): Boolean; override;  ');
      MModel.Lines.Add('function IsEmpty      : Boolean; override;               ');
      MModel.Lines.Add('function Validate     : Boolean; override;               ');
      MModel.Lines.Add('function ToString     : String; override;                ');
      MModel.Lines.Add('');
      MModel.Lines.Add('end;                                                     ');
      MModel.Lines.Add('');
      MModel.Lines.Add('implementation                                                               ');
      MModel.Lines.Add(' function T'+SEMCHAR(EditModel.text)+'.Assign(Model: TModelBase): Boolean;    ');
      MModel.Lines.Add('begin                                                                         ');
      MModel.Lines.Add('  if not (Model is T'+SEMCHAR(EditModel.text)+') then                         ');
      MModel.Lines.Add('  begin                                                                       ');
      MModel.Lines.Add('    ListError.Insert('+quotedstr('Copia do Modelo')+', '+quotedstr('Modelo passado incorreto!')+');');
      MModel.Lines.Add('    Result := (ListError.Count = 0);                                          ');
      MModel.Lines.Add('    Exit; ');
      MModel.Lines.Add('  end; ');
         qr.First;
        if not qr.Eof then repeat
        begin
          MModel.Lines.Add('Self.F'+qr.FieldByName('coluna').AsString+'         := T'+SEMCHAR(EditModel.text)+'(Model).'+qr.FieldByName('coluna').AsString+';');
          qr.Next;
        end;
        until qr.Eof;

      MModel.Lines.Add('   Result := (ListError.Count = 0);  ');
      MModel.Lines.Add('end;                                 ');
      MModel.Lines.Add('');

      MModel.Lines.Add('procedure T'+SEMCHAR(EditModel.text)+'.Clear;             ');
      MModel.Lines.Add('begin                                                      ');
      MModel.Lines.Add('  inherited;                                               ');
      MModel.Lines.Add('');
      MModel.Lines.Add('end;                                                       ');
      MModel.Lines.Add('');
      MModel.Lines.Add('function T'+SEMCHAR(EditModel.text)+'.IsEmpty: Boolean;   ');
      MModel.Lines.Add('begin                                                      ');
      MModel.Lines.Add('');
      MModel.Lines.Add('end;                                                       ');
      MModel.Lines.Add('');

         qr.First;
        if not qr.Eof then repeat
        begin
          MModel.Lines.Add('procedure T'+SEMCHAR(EditModel.text)+'.Set'+qr.FieldByName('coluna').AsString+'(const Value: Boolean);   ');
          MModel.Lines.Add('begin                ');
          MModel.Lines.Add('  F'+qr.FieldByName('coluna').AsString+' := Value;   ');
          MModel.Lines.Add('end;                 ');
          MModel.Lines.Add('');
          qr.Next;
        end;
        until qr.Eof;
        MModel.Lines.Add('');

      MModel.Lines.Add('end.');
      result := true;
  except
     result := false;
  end;

end;

function TFrmVIaGeraMVC.GerarView(tabela:string):boolean;
begin
 try
      MView.Clear;
      MView.Lines.Add('');
      MView.Lines.Add('unit '+EditView.text+';');
      MView.Lines.Add('');
      MView.Lines.Add('interface');
      MView.Lines.Add('');
      MView.Lines.Add('uses ');
      MView.Lines.Add('  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, ');
      MView.Lines.Add('  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,                   ');
      MView.Lines.Add('  Vcl.Grids, ViaERP.Funcoes, '+EditController.text+', Controller.Types,              ');
      MView.Lines.Add('  ViaERP.Utils, MsgTypes, ACBrBase, ACBrEnterTab;                                                  ');
      MView.Lines.Add('');
      MView.Lines.Add('type ');
      MView.Lines.Add('  TFrm_'+SEMCHAR(EditView.text)+' = class(TForm) ');
      MView.Lines.Add('    Panel1: TPanel; ');
      MView.Lines.Add('    bbIncluir: TSpeedButton; ');
      MView.Lines.Add('    bbAlterar: TSpeedButton; ');
      MView.Lines.Add('    bbExcluir: TSpeedButton; ');
      MView.Lines.Add('    BBCancelar: TSpeedButton;');
      MView.Lines.Add('    BBConfirmar: TSpeedButton;');

      MView.Lines.Add('');

      Qr.Close;
      qr.SQL.Clear;
      qr.SQL.Add('SELECT row_number() OVER () AS ordem,	COLUMN_NAME as coluna, data_type as tipo FROM information_schema.COLUMNS WHERE TABLE_NAME = '+quotedstr(CbTabelas.Text)+';');
      qr.Open;
      qr.First;

      MView.Lines.Add('        procedure bbIncluirClick(Sender: TObject);    ');
      MView.Lines.Add('        procedure bbAlterarClick(Sender: TObject);    ');
      MView.Lines.Add('        procedure bbExcluirClick(Sender: TObject);    ');
      MView.Lines.Add('        procedure BBCancelarClick(Sender: TObject);   ');
      MView.Lines.Add('        procedure BBConfirmarClick(Sender: TObject);  ');
    MView.Lines.Add('');
      MView.Lines.Add('    procedure FormCreate(Sender: TObject);    ');
      MView.Lines.Add('    procedure FormDestroy(Sender: TObject);    ');
      MView.Lines.Add('    procedure FormShow(Sender: TObject);       ');
    MView.Lines.Add('');

    MView.Lines.Add('  private ');
    MView.Lines.Add('    FController : T'+SEMCHAR(EditController.text)+'; ');
      qr.First;
      if not qr.Eof then repeat
      begin
        MView.Lines.Add('    F'+qr.FieldByName('coluna').AsString+' : '+ TIPO(qr.FieldByName('tipo').AsString)+';');
        qr.Next;
      end;
      until qr.Eof;
     MView.Lines.Add('');

    MView.Lines.Add('    procedure LimparTela;   ');
    MView.Lines.Add('    procedure ModelToScreen;');
    MView.Lines.Add('    procedure ScreenToModel;');
    MView.Lines.Add('');
      qr.First;
      if not qr.Eof then repeat
      begin
        MView.Lines.Add('    procedure Set'+qr.FieldByName('coluna').AsString+'(const Value : '+ TIPO(qr.FieldByName('tipo').AsString)+');');
        qr.Next;
      end;
      until qr.Eof;
    MView.Lines.Add('');
    MView.Lines.Add('  public');
    MView.Lines.Add('');
      qr.First;
      if not qr.Eof then repeat
      begin
        MView.Lines.Add('    property '+qr.FieldByName('coluna').AsString+' : '+ TIPO(qr.FieldByName('tipo').AsString)+'         read F'+qr.FieldByName('coluna').AsString+'    write F'+qr.FieldByName('coluna').AsString+';');
        qr.Next;
      end;
      until qr.Eof;
      MView.Lines.Add('');
      MView.Lines.Add('  end;');
      MView.Lines.Add('');
      MView.Lines.Add('var');
      MView.Lines.Add('  Frm_'+SEMCHAR(EditView.text)+' : TFrm_'+SEMCHAR(EditView.text)+'; ');
      MView.Lines.Add('');
      MView.Lines.Add('implementation ');
      MView.Lines.Add('');
      MView.Lines.Add('{$R *.dfm}');
      MView.Lines.Add('');
      MView.Lines.Add('procedure TFrm_ncm_regra_substituicao.ModelToScreen;');
      MView.Lines.Add('var ');
      MView.Lines.Add('  I : integer; ');
      MView.Lines.Add('begin ');
      MView.Lines.Add(' //  Grid.RowCount := 1; ');
      MView.Lines.Add('   Grid.ColCount := '+inttostr(qr.RecordCount)+'; ');
      MView.Lines.Add('   Self.FController.Get;  ');                              //criar colunas do dbgrid
      MView.Lines.Add('  for I := 0 to Self.FController.ModelList.Count-1 do   ');
      MView.Lines.Add('    begin                                               ');
      MView.Lines.Add('     //  Grid.RowCount := Grid.RowCount+1;              ');
         qr.First;
        if not qr.Eof then repeat
        begin
          MView.Lines.Add('         Grid.Cells[0,I+1] := inttostr(Self.FController.ModelList[I].'+qr.FieldByName('coluna').AsString +'); ');
          qr.Next;
        end;
        until qr.Eof;
      MView.Lines.Add('    end; ');
      MView.Lines.Add('end; ');
      MView.Lines.Add('');

      MView.Lines.Add('procedure TFrm_'+SEMCHAR(EditView.text)+'.ScreenToModel;  ');
      MView.Lines.Add('begin   ');
      MView.Lines.Add('  try   ');
      MView.Lines.Add('      FController.Model.Clear;   ');
        qr.First;
        if not qr.Eof then repeat
        begin
          MView.Lines.Add('      FController.Model.'+qr.FieldByName('coluna').AsString+' := Edit_'+qr.FieldByName('coluna').AsString +'.text;');
          qr.Next;
        end;
        until qr.Eof;

      MView.Lines.Add('');
      MView.Lines.Add('  except ');
      MView.Lines.Add('    ShowMessage(''Não foi possivel ler o model para  o model''); ');
      MView.Lines.Add('  end; ');
      MView.Lines.Add('end; ');
      MView.Lines.Add('');

      MView.Lines.Add('procedure TFrm_'+SEMCHAR(EditView.text)+'.bbAlterarClick(Sender: TObject); ');
      MView.Lines.Add('begin ');
      MView.Lines.Add('  if Self.FController.Model.id <> 0 then ');
      MView.Lines.Add('  begin                                  ');
      MView.Lines.Add('    Self.FController.Status := vsEdit;   ');
      MView.Lines.Add('  end;                                   ');
      MView.Lines.Add('end; ');

      MView.Lines.Add('procedure TFrm_'+SEMCHAR(EditView.text)+'.BBCancelarClick(Sender: TObject); ');
      MView.Lines.Add('begin                         ');
      MView.Lines.Add('  LimparTela;                 ');
      MView.Lines.Add('end;                          ');
      MView.Lines.Add('');
      MView.Lines.Add('Function  SoNumeros(Texto: String):Boolean;   ');
      MView.Lines.Add('var Resultado:Boolean;                        ');
      MView.Lines.Add('    nContador:Integer;                        ');
      MView.Lines.Add('begin                                         ');
      MView.Lines.Add('  Resultado := false;                         ');
      MView.Lines.Add('  For nContador:=1 to Length(Texto) do        ');
      MView.Lines.Add('    begin                                     ');
      MView.Lines.Add('      {Verifica sé é uma letra}               ');
      MView.Lines.Add('       if Texto[nContador] in [''a''..''z'',''A''..''Z''] then  ');
      MView.Lines.Add('      else                                    ');
      MView.Lines.Add('         Resultado := true;                   ');
      MView.Lines.Add('    end;                                      ');
      MView.Lines.Add('    Result:=Resultado;                        ');
      MView.Lines.Add('end;                                          ');
      MView.Lines.Add('');
      MView.Lines.Add('procedure TFrm_'+SEMCHAR(EditView.text)+'.BBConfirmarClick(Sender: TObject);  ');
      MView.Lines.Add('begin                                                                     ');
      MView.Lines.Add('  if MessageInfo(''Confirma a gravação dos dados digitados?'', tmPergunta,tbNaoSim) = rbSim then ');
      MView.Lines.Add('  begin                                              ');
      MView.Lines.Add('    ScreenToModel;                                   ');
      MView.Lines.Add('    if Self.FController.Status = vsInsert then       ');
      MView.Lines.Add('    begin                                            ');
      MView.Lines.Add('      Self.FController.Post;                         ');
      MView.Lines.Add('    end                                              ');
      MView.Lines.Add('    else                                             ');
      MView.Lines.Add('      begin                                          ');
      MView.Lines.Add('        Self.FController.Update;                     ');
      MView.Lines.Add('      end;                                           ');
      MView.Lines.Add('    MessageInfo(''Dados gravados com sucesso.'');    ');
      MView.Lines.Add('    Self.FController.Model.id := 0;                  ');
      MView.Lines.Add('    Self.FController.Get;                            ');
      MView.Lines.Add('    ModelToScreen;                                   ');
      MView.Lines.Add('  end;                                               ');
      MView.Lines.Add('end;                                                 ');
      MView.Lines.Add('');

      MView.Lines.Add('procedure TFrm_'+SEMCHAR(EditView.text)+'.bbExcluirClick(Sender: TObject);');
      MView.Lines.Add('begin ');
      MView.Lines.Add(' Self.FController.Delete;     ');
      MView.Lines.Add('end; ');
      MView.Lines.Add('');

      MView.Lines.Add('procedure TFrm_'+SEMCHAR(EditView.text)+'.bbIncluirClick(Sender: TObject);  ');
      MView.Lines.Add('begin                       ');
      MView.Lines.Add('  Self.FController.Status := vsInsert;   ');
      MView.Lines.Add('end;    ');
      MView.Lines.Add('');

      MView.Lines.Add('procedure TFrm_'+SEMCHAR(EditView.text)+'.FormCreate(Sender: TObject);  ');
      MView.Lines.Add('Var i:integer;                                                      ');
      MView.Lines.Add('begin                                                               ');
      MView.Lines.Add('    Self.FController := T'+SEMCHAR(EditController.text)+'.Create( SysFirst.SQLParam ); ');
      MView.Lines.Add('    Grid.RowCount := 1;         ');
      MView.Lines.Add('    Grid.ColCount := '+inttostr(qr.RecordCount)+';         ');
      MView.Lines.Add('//  Grid.ColWidths[0] := 150;   ');
        qr.First;
        if not qr.Eof then repeat
        begin
          MView.Lines.Add('     Grid.Cells[inttostr(i),0] := '+qr.FieldByName('coluna').AsString+';  ');
          qr.Next;
        end;
        until qr.Eof;

      MView.Lines.Add('end;');
      MView.Lines.Add('');

      MView.Lines.Add('procedure TFrm_'+SEMCHAR(EditView.text)+'.FormDestroy(Sender: TObject);');
      MView.Lines.Add('begin' );
      MView.Lines.Add('  FreeAndNil( FController ');
      MView.Lines.Add('end;' );
      MView.Lines.Add('');
      MView.Lines.Add('procedure TFrm_'+SEMCHAR(EditView.text)+'.FormShow(Sender: TObject);  ' );
      MView.Lines.Add('begin   ' );
      MView.Lines.Add('    LimparTela;   ' );
      MView.Lines.Add('    Self.FController.Get;   ' );
      MView.Lines.Add('    ModelToScreen;     ' );
      MView.Lines.Add('end; ' );

      MView.Lines.Add('procedure TFrm_'+SEMCHAR(EditView.text)+'.GridClick(Sender: TObject);   ' );
      MView.Lines.Add('begin   ' );
      MView.Lines.Add('  try   ' );
      MView.Lines.Add('    FController.Model.Clear; ' );

        qr.First;
        if not qr.Eof then repeat
        begin
          MView.Lines.Add('    FController.Model.'+qr.FieldByName('coluna').AsString+' := Grid.Cells['+inttostr(qr.FieldByName('ordem').AsInteger-1)+',Grid.row];' );
          qr.Next;
        end;
        until qr.Eof;

      MView.Lines.Add('  Except' );
      MView.Lines.Add('');
      MView.Lines.Add('  end; ');
      MView.Lines.Add('end;');
      MView.Lines.Add('');

      MView.Lines.Add('procedure TFrm_'+SEMCHAR(EditView.text)+'.LimparTela;  ');
      MView.Lines.Add('var   ');
      MView.Lines.Add('  I: Integer;  ');
      MView.Lines.Add('begin       ');
      MView.Lines.Add('  for i := 0 to ComponentCount -1 do   ');
      MView.Lines.Add('    BEGIN                              ');
      MView.Lines.Add('      if Components[i] is TEdit then   ');
      MView.Lines.Add('      begin                            ');
      MView.Lines.Add('        TEdit(Components[i]).Text := ''''; ');
      MView.Lines.Add('      end; ');
      MView.Lines.Add('    END;   ');
      MView.Lines.Add('end;       ');
      MView.Lines.Add('');

        qr.First;
        if not qr.Eof then repeat
        begin
          MView.Lines.Add('procedure TFrm_'+SEMCHAR(EditView.text)+'.Set'+qr.FieldByName('coluna').AsString+'(const Value: '+TIPO(qr.FieldByName('tipo').AsString)+');  ');
          MView.Lines.Add('begin    ') ;
          MView.Lines.Add('  ativo:=value;  ')  ;
          MView.Lines.Add('end;  ');
          qr.Next;
        end;
        until qr.Eof;
      MView.Lines.Add('end.');
      if not GerarDFM(CBTabelas.Text) then  result := false
         else
      result := true;
   except
    result := false;
   end;

end;

function TFrmVIaGeraMVC.GerarDFM(tabela:string):boolean;
 var x, y : integer;
begin
 try

   MDFM.Clear;
   MDFM.Lines.Add('');

   MDFM.Lines.Add('object  Frm_'+SEMCHAR(EditView.text)+' : TFrm_'+SEMCHAR(EditView.text));
   MDFM.Lines.Add('  Left = 0                                    ');
   MDFM.Lines.Add('  Top = 0                                     ');
   MDFM.Lines.Add('  Caption = '+quotedstr(SEMCHAR(EditView.text)));
   MDFM.Lines.Add('  ClientHeight = 507                          ');
   MDFM.Lines.Add('  ClientWidth = 1034                          ');
   MDFM.Lines.Add('  Color = clBtnFace                           ');
   MDFM.Lines.Add('  Font.Charset = DEFAULT_CHARSET              ');
   MDFM.Lines.Add('  Font.Color = clWindowText                   ');
   MDFM.Lines.Add('  Font.Height = -11                           ');
   MDFM.Lines.Add('  Font.Name = ''Tahoma''                      ');
   MDFM.Lines.Add('  Font.Style = []                             ');
   MDFM.Lines.Add('  OldCreateOrder = False                      ');
   MDFM.Lines.Add('  PixelsPerInch = 96                          ');
   MDFM.Lines.Add('  TextHeight = 13                             ');
   MDFM.Lines.Add('  object Panel1: TPanel                       ');
   MDFM.Lines.Add('    Left = 0                                  ');
   MDFM.Lines.Add('    Top = 0                                   ');
   MDFM.Lines.Add('    Width = 1034                              ');
   MDFM.Lines.Add('    Height = 41                               ');
   MDFM.Lines.Add('    Align = alTop                             ');
   MDFM.Lines.Add('    TabOrder = 0                              ');
   MDFM.Lines.Add('    object bbIncluir: TSpeedButton            ');
   MDFM.Lines.Add('      Left = 1                                ');
   MDFM.Lines.Add('      Top = 1                                 ');
   MDFM.Lines.Add('      Width = 121                             ');
   MDFM.Lines.Add('      Height = 39                             ');
   MDFM.Lines.Add('      Align = alLeft                          ');
   MDFM.Lines.Add('      Caption = ''Incluir''                   ');
   MDFM.Lines.Add('      ExplicitLeft = 282                      ');
   MDFM.Lines.Add('      ExplicitTop = 0                         ');
   MDFM.Lines.Add('    end                                       ');
   MDFM.Lines.Add('    object bbAlterar: TSpeedButton            ');
   MDFM.Lines.Add('      Left = 122                              ');
   MDFM.Lines.Add('      Top = 1                                 ');
   MDFM.Lines.Add('      Width = 121                             ');
   MDFM.Lines.Add('      Height = 39                             ');
   MDFM.Lines.Add('      Align = alLeft                          ');
   MDFM.Lines.Add('      Caption = ''Altear''                    ');
   MDFM.Lines.Add('      ExplicitLeft = 241                      ');
   MDFM.Lines.Add('      ExplicitTop = 2                         ');
   MDFM.Lines.Add('    end                                       ');
   MDFM.Lines.Add('    object bbExcluir: TSpeedButton            ');
   MDFM.Lines.Add('      Left = 243                              ');
   MDFM.Lines.Add('      Top = 1                                 ');
   MDFM.Lines.Add('      Width = 121                             ');
   MDFM.Lines.Add('      Height = 39                             ');
   MDFM.Lines.Add('      Align = alLeft                          ');
   MDFM.Lines.Add('      Caption = ''Excluir''                   ');
   MDFM.Lines.Add('      ExplicitLeft = 417                      ');
   MDFM.Lines.Add('      ExplicitTop = 0                         ');
   MDFM.Lines.Add('    end                                       ');
   MDFM.Lines.Add('    object BBCancelar: TSpeedButton           ');
   MDFM.Lines.Add('      Left = 364                              ');
   MDFM.Lines.Add('      Top = 1                                 ');
   MDFM.Lines.Add('      Width = 121                             ');
   MDFM.Lines.Add('      Height = 39                             ');
   MDFM.Lines.Add('      Align = alLeft                          ');
   MDFM.Lines.Add('      Caption = ''Cancelar''                  ');
   MDFM.Lines.Add('      ExplicitLeft = 491                      ');
   MDFM.Lines.Add('      ExplicitTop = 2                         ');
   MDFM.Lines.Add('    end                                       ');
   MDFM.Lines.Add('    object BBConfirmar: TSpeedButton          ');
   MDFM.Lines.Add('      Left = 485                              ');
   MDFM.Lines.Add('      Top = 1                                 ');
   MDFM.Lines.Add('      Width = 121                             ');
   MDFM.Lines.Add('      Height = 39                             ');
   MDFM.Lines.Add('      Align = alLeft                          ');
   MDFM.Lines.Add('      Caption = ''Confirmar''                 ');
   MDFM.Lines.Add('      ExplicitLeft = 628                      ');
   MDFM.Lines.Add('      ExplicitTop = 2                         ');
   MDFM.Lines.Add('    end                                       ');
   MDFM.Lines.Add('  end                                         ');
   MDFM.Lines.Add('  object PCMain: TPageControl                 ');
   MDFM.Lines.Add('    Left = 0                                  ');
   MDFM.Lines.Add('    Top = 41                                  ');
   MDFM.Lines.Add('    Width = 1034                              ');
   MDFM.Lines.Add('    Height = 466                              ');
   MDFM.Lines.Add('    ActivePage = TSLista                      ');
   MDFM.Lines.Add('    Align = alClient                          ');
   MDFM.Lines.Add('    TabOrder = 1                              ');
   MDFM.Lines.Add('    ExplicitLeft = 136                        ');
   MDFM.Lines.Add('    ExplicitTop = 88                          ');
   MDFM.Lines.Add('    ExplicitWidth = 289                       ');
   MDFM.Lines.Add('    ExplicitHeight = 193                      ');
   MDFM.Lines.Add('    object TSLista: TTabSheet                 ');
   MDFM.Lines.Add('      Caption = ''Lista''                     ');
   MDFM.Lines.Add('      ExplicitWidth = 281                     ');
   MDFM.Lines.Add('      ExplicitHeight = 165                    ');
   MDFM.Lines.Add('      object StringGrid1: TStringGrid         ');
   MDFM.Lines.Add('        Left = 0                              ');
   MDFM.Lines.Add('        Top = 0                               ');
   MDFM.Lines.Add('        Width = 1026                          ');
   MDFM.Lines.Add('        Height = 438                          ');
   MDFM.Lines.Add('        Align = alClient                      ');
   MDFM.Lines.Add('        TabOrder = 0                          ');
   MDFM.Lines.Add('        ExplicitLeft = 40                     ');
   MDFM.Lines.Add('        ExplicitTop = 48                      ');
   MDFM.Lines.Add('        ExplicitWidth = 320                   ');
   MDFM.Lines.Add('        ExplicitHeight = 120                  ');
   MDFM.Lines.Add('      end                                     ');
   MDFM.Lines.Add('    end                                       ');
   MDFM.Lines.Add('    object TSDados: TTabSheet                 ');
   MDFM.Lines.Add('      Caption = ''Dados''                     ');
   MDFM.Lines.Add('      ImageIndex = 1                          ');
   MDFM.Lines.Add('      ExplicitLeft = 1                        ');
   MDFM.Lines.Add('      object Panel2: TPanel                   ');
   MDFM.Lines.Add('        Left = 0                              ');
   MDFM.Lines.Add('        Top = 0                               ');
   MDFM.Lines.Add('        Width = 1026                          ');
   MDFM.Lines.Add('        Height = 438                          ');
   MDFM.Lines.Add('        Align = alClient                      ');
   MDFM.Lines.Add('        TabOrder = 0                          ');
   MDFM.Lines.Add('        ExplicitLeft = 120                    ');
   MDFM.Lines.Add('        ExplicitTop = 120                     ');
   MDFM.Lines.Add('        ExplicitWidth = 185                   ');
   MDFM.Lines.Add('        ExplicitHeight = 41                   ');


   MDFM.Lines.Add('  object ScrollBox1: TScrollBox      ');
   MDFM.Lines.Add('    Left = 0                         ');
   MDFM.Lines.Add('    Top = 41                         ');
   MDFM.Lines.Add('    Width = 1034                     ');
   MDFM.Lines.Add('    Height = 466                     ');
   MDFM.Lines.Add('    Align = alClient                 ');
   MDFM.Lines.Add('    TabOrder = 1                     ');
    x:= 24;
    y:= 40;
    qr.First;
    if not qr.Eof then repeat
    begin
       MDFM.Lines.Add('        object Edit_'+qr.FieldByName('coluna').AsString+': TLabeledEdit       ');
       MDFM.Lines.Add('          Left = '+inttostr(x)+'              ');
       MDFM.Lines.Add('          Top =  '+inttostr(y)+'              ');
       MDFM.Lines.Add('          Width = 121                         ');
       MDFM.Lines.Add('          Height = 21                         ');
       MDFM.Lines.Add('          EditLabel.Width = 49                ');
       MDFM.Lines.Add('          EditLabel.Height = 13               ');
       MDFM.Lines.Add('          EditLabel.Caption = '+quotedstr(qr.FieldByName('coluna').AsString));
       MDFM.Lines.Add('          TabOrder = 0                        ');
       MDFM.Lines.Add('        end                                   ');
       x:=x+10;
       y:=y+10;
      qr.Next;
    end;
    until qr.Eof;
   MDFM.Lines.Add('  end                                         ');





   MDFM.Lines.Add('      end                                     ');
   MDFM.Lines.Add('    end                                       ');
   MDFM.Lines.Add('  end                                         ');
   MDFM.Lines.Add('end                                           ');

   result:=true;
 except
    Result:=false;
 end;
end;

function TFrmVIaGeraMVC.GerarController(tabela:string):boolean;
begin
 try
      MController.Clear;
      MController.Lines.Add('');
      MController.Lines.Add('unit '+EditController.text+';');
      MController.Lines.Add('');
      MController.Lines.Add('interface ');
      MController.Lines.Add('uses      ');
      MController.Lines.Add('  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  ');
      MController.Lines.Add('  Controller.Base, ModelBase, ModelBaseList,                     ');
      MController.Lines.Add('  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; ');
      MController.Lines.Add('');
      MController.Lines.Add('type ');
      MController.Lines.Add('  T'+SEMCHAR(EditController.text)+' = class(TControllerBase, IController) ');
      MController.Lines.Add('  private ');
      MController.Lines.Add('    FDal : T'+SEMCHAR(EditView.text)+';');
      MController.Lines.Add('    FModelList: TModelBaseList<T'+SEMCHAR(EditModel.text)+'>; ');
      MController.Lines.Add('    FModel: T'+SEMCHAR(EditModel.text)+';');
      MController.Lines.Add('    procedure SetModel(const Value: T'+SEMCHAR(EditModel.text)+'); ');
      MController.Lines.Add('    procedure SetModelList(const Value: TModelBaseList<T'+SEMCHAR(EditModel.text)+'>);');
      MController.Lines.Add('');
      MController.Lines.Add('  public ');
      MController.Lines.Add('    property Model : T'+SEMCHAR(EditModel.text)+' read FModel write SetModel;  ');
      MController.Lines.Add('    property ModelList : TModelBaseList<T'+SEMCHAR(EditModel.text)+'> read FModelList write SetModelList;  ');
      MController.Lines.Add('');
      MController.Lines.Add('    procedure Get; override;    ');
      MController.Lines.Add('    procedure Post; override;   ');
      MController.Lines.Add('    procedure Update; override; ');
      MController.Lines.Add('    procedure Delete; override; ');
      MController.Lines.Add('');
      MController.Lines.Add('    procedure ToModel( Index : Integer = 0 ); ');
      MController.Lines.Add('');
      MController.Lines.Add('    constructor Create( Param : TParameters ); ');
      MController.Lines.Add('    destructor Destroy; override; ');
      MController.Lines.Add('  end; ');
      MController.Lines.Add('implementation  ');
      MController.Lines.Add('');
      MController.Lines.Add('constructor T'+SEMCHAR(EditController.text)+'.Create(Param: TParameters); ');
      MController.Lines.Add('begin  ');
      MController.Lines.Add('  Self.FModelList       := TModelBaseList<T'+SEMCHAR(EditModel.text)+'>.Create;  ');
      MController.Lines.Add('  Self.FModelList.Add(T'+SEMCHAR(EditModel.text)+'.Create); ');
      MController.Lines.Add('  Self.FModel           := T'+SEMCHAR(EditModel.text)+'.Create; ');
      MController.Lines.Add('  Self.FDal             := T'+SEMCHAR(EditDal.text)+'.Create( Param, True ); ');
      MController.Lines.Add('end; ');
      MController.Lines.Add('');
      MController.Lines.Add('procedure T'+SEMCHAR(EditController.text)+'.Delete;  ');
      MController.Lines.Add('begin ');
      MController.Lines.Add('  inherited; ');
      MController.Lines.Add('end; ');
      MController.Lines.Add('');
      MController.Lines.Add('destructor T'+SEMCHAR(EditController.text)+'.Destroy;    ');
      MController.Lines.Add('begin ');
      MController.Lines.Add('  FreeAndNil( Self.FModel ); ');
      MController.Lines.Add('  FreeAndNil( Self.FModelList );');
      MController.Lines.Add('  FreeAndNil( Self.FDal );');
      MController.Lines.Add('end; ');
      MController.Lines.Add('');
      MController.Lines.Add('procedure T'+SEMCHAR(EditController.text)+'.Get;  ');
      MController.Lines.Add('begin ');
      MController.Lines.Add('   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   ');
      MController.Lines.Add('    raise EListMsgError.CreateError( Self.FDal.ListError ); ');
      MController.Lines.Add('end;');
      MController.Lines.Add('');
      MController.Lines.Add('procedure T'+SEMCHAR(EditController.text)+'.Post; ');
      MController.Lines.Add('begin  ');
      MController.Lines.Add('  if not Self.FDal.Insert( Self.FModel ) then   ');
      MController.Lines.Add('    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     ');
      MController.Lines.Add('end;  ');
      MController.Lines.Add('');
      MController.Lines.Add('procedure T'+SEMCHAR(EditController.text)+'.SetModel(  ');
      MController.Lines.Add('  const Value: T'+SEMCHAR(EditModel.text)+'); ');
      MController.Lines.Add('begin  ');
      MController.Lines.Add('  FModel := Value;    ');
      MController.Lines.Add('end; ');
      MController.Lines.Add('');
      MController.Lines.Add('procedure T'+SEMCHAR(EditController.text)+'.SetModelList(  ');
      MController.Lines.Add('  const Value: TModelBaseList<T'+SEMCHAR(EditModel.text)+'>);');
      MController.Lines.Add('begin    ');
      MController.Lines.Add('  FModelList := Value; ');
      MController.Lines.Add('end; ');
      MController.Lines.Add('');
      MController.Lines.Add('procedure T'+SEMCHAR(EditController.text)+'.ToModel(Index: Integer);  ');
      MController.Lines.Add('begin ');
      MController.Lines.Add('end;');
      MController.Lines.Add('');
      MController.Lines.Add('procedure T'+SEMCHAR(EditController.text)+'.Update;  ');
      MController.Lines.Add('begin  ');
      MController.Lines.Add('  if not Self.FDal.Update( Self.FModel ) then   ');
      MController.Lines.Add('    raise EListMsgError.CreateError( Self.FDal.ListError )     ');
      MController.Lines.Add('end; ');
      MController.Lines.Add('');
      MController.Lines.Add('end.');
      MController.Lines.Add('');

      result := true;
   except
    result := false;
   end;
end;

function TFrmVIaGeraMVC.GerarDal(tabela:string):boolean;
begin
 try
      //inicio da impressão
      MDal.Clear;
      MDal.Lines.Add('');
      MDal.Lines.Add('unit '+EditDal.text+';');
      MDal.Lines.Add('');
      MDal.Lines.Add('interface');
      MDal.Lines.Add('uses');
      MDal.Lines.Add('  System.SysUtils, System.Classes, Data.DB, ListError, Parameters,');
      MDal.Lines.Add('  System.Generics.Defaults, System.Generics.Collections, Utilitarios,');
      MDal.Lines.Add('  ModelBase, ModelBaseList, '+EditModel.Text+', DalBaseCRUD,');
      MDal.Lines.Add('  SQLQuery;');
      MDal.Lines.Add('');
      MDal.Lines.Add('type');
      MDal.Lines.Add('  T'+SEMCHAR(EditDal.text)+' = class(TDalBaseCRUD)');
      MDal.Lines.Add('  private ');
      MDal.Lines.Add('    FModel : T'+SEMCHAR(EditModel.text)+';  ');
      MDal.Lines.Add('    FModelList : TModelBaseList<T'+SEMCHAR(EditModel.text)+'>; ');
      MDal.Lines.Add('  public ');
      MDal.Lines.Add('');
      MDal.Lines.Add('    function Delete(Model: TModelBase): Boolean; override; ');
      MDal.Lines.Add('    function Insert(Model: TModelBase): Boolean; override; ');
      MDal.Lines.Add('    function Select(Model : TModelBase; out ModelList : TModelBaseList<TModelBase> ) : Boolean; override;  ');
      MDal.Lines.Add('    function Update(Model: TModelBase): Boolean; override; ');
      MDal.Lines.Add('  end; ');
      MDal.Lines.Add('');
      MDal.Lines.Add('implementation');
      MDal.Lines.Add('');
      MDal.Lines.Add('function T'+SEMCHAR(EditDal.text)+'.Delete(Model: TModelBase): Boolean; ');
      MDal.Lines.Add('begin                                                                   ');
      MDal.Lines.Add('  if not (Model is T'+SEMCHAR(EditModel.text)+') then                   ');
      MDal.Lines.Add('  begin                                                                 ');
      MDal.Lines.Add('    ListError.Insert(''Data Acess Layer'',''Tipo de dado incorreto ou Modelo (%s) Não Inicializado!'', Self.ClassName);  ');
      MDal.Lines.Add('    Result := (ListError.Count = 0);                                     ');
      MDal.Lines.Add('    Exit;                                                                ');
      MDal.Lines.Add('  end;                                                                   ');
      MDal.Lines.Add('');
      MDal.Lines.Add('  Self.FModel := ( Model as T'+SEMCHAR(EditModel.text)+' );              ');
      MDal.Lines.Add('');
      MDal.Lines.Add('  if not Assigned( Self.FModel ) then  ');
      MDal.Lines.Add('  begin                                ');
      MDal.Lines.Add('    ListError.Insert(''Data Acess Layer'',''Modelo (%s) Não Inicializado!'', Self.ClassName); ');
      MDal.Lines.Add('    Result := (ListError.Count = 0);   ');
      MDal.Lines.Add('    Exit;                              ');
      MDal.Lines.Add('  end;                                 ');
      MDal.Lines.Add('');
      MDal.Lines.Add('  if Self.FModel.id = 0 then  ');
      MDal.Lines.Add('  begin                       ');
      MDal.Lines.Add('    ListError.Insert(''Exclusão de registros'',''Nenhum valor foi passado para o NCM!'');  ');
      MDal.Lines.Add('    Result := (ListError.Count = 0);  ');
      MDal.Lines.Add('    Exit;                     ');
      MDal.Lines.Add('  end;                        ');
      MDal.Lines.Add('  SQL.DeleteFrom(''ncm_regra_substituicao'').Where(''id'').Equal( Self.FModel.id );  ');
      MDal.Lines.Add('  dbDelete;                                ');
      MDal.Lines.Add('  Result := (ListError.Count = 0);         ');
      MDal.Lines.Add('end;                                       ');
      MDal.Lines.Add('');
      MDal.Lines.Add('function T'+SEMCHAR(EditDal.text)+'.Insert(Model: TModelBase): Boolean; ');
      MDal.Lines.Add(' var teste:widestring;                                                   ');
      MDal.Lines.Add('begin                                                                    ');
      MDal.Lines.Add('  if not (Model is T'+SEMCHAR(EditModel.text)+') then                   ');
      MDal.Lines.Add('  begin                                                                  ');
      MDal.Lines.Add('    ListError.Insert(''Data Acess Layer'',''Tipo de dado incorreto ou Modelo (%s) Não Inicializado!'', Self.ClassName); ');
      MDal.Lines.Add('    Result := (ListError.Count = 0);                                     ');
      MDal.Lines.Add('    Exit;                                                                ');
      MDal.Lines.Add('  end;                                                                   ');
      MDal.Lines.Add('');
      MDal.Lines.Add('  Self.FModel := ( Model as T'+SEMCHAR(EditModel.text)+' ); ');
      MDal.Lines.Add('');
      MDal.Lines.Add('  if not Assigned( Self.FModel ) then  ');
      MDal.Lines.Add('  begin                                ');
      MDal.Lines.Add('    ListError.Insert(''Data Acess Layer'',''Modelo (%s) Não Inicializado!'', Self.ClassName); ');
      MDal.Lines.Add('    Result := (ListError.Count = 0);   ');
      MDal.Lines.Add('    Exit;                              ');
      MDal.Lines.Add('  end;                                 ');
      MDal.Lines.Add('');
      MDal.Lines.Add('  if not Self.FModel.Validate then ');
      MDal.Lines.Add('  begin                            ');
      MDal.Lines.Add('    ListError.Assign( Self.FModel.ListError );  ');
      MDal.Lines.Add('    Result := (ListError.Count = 0);  ');
      MDal.Lines.Add('    Exit;                             ');
      MDal.Lines.Add('  end;                                ');
      MDal.Lines.Add('  SQL.Insert('+CBTabelas.text+').Fields( Self.FModel.ToString ).Values; ');
        qr.First;
        if not qr.Eof then repeat
        begin
          MDal.Lines.Add('     SQL.Field(Self.FModel.'+qr.fieldbyname('coluna').AsString+').Next;') ;
          qr.Next;
        end;
        until qr.Eof;
     MDal.Lines.Add('  dbInsert;') ;
     MDal.Lines.Add('  Result := (ListError.Count = 0); ') ;
     MDal.Lines.Add('end; ') ;
     MDal.Lines.Add('') ;
     MDal.Lines.Add('function T'+SEMCHAR(EditDal.text)+'.Select(Model: TModelBase; ') ;
     MDal.Lines.Add('  out ModelList: TModelBaseList<TModelBase>): Boolean;         ') ;
     MDal.Lines.Add('var                                                            ') ;
     MDal.Lines.Add('  I : Integer;                                                 ') ;
     MDal.Lines.Add('begin                                                          ') ;
     MDal.Lines.Add('  if not (Model is T'+SEMCHAR(EditModel.text)+') then         ') ;
     MDal.Lines.Add('  begin                                                        ') ;
     MDal.Lines.Add('    ListError.Insert(''Data Acess Layer'',''Tipo de dado incorreto ou Modelo (%s) Não Inicializado!'', Self.ClassName); ') ;
     MDal.Lines.Add('    Result := (ListError.Count = 0);                           ') ;
     MDal.Lines.Add('    Exit;                                                      ') ;
     MDal.Lines.Add('  end;                                                         ') ;
     MDal.Lines.Add('') ;
     MDal.Lines.Add('  Self.FModel := ( Model as T'+SEMCHAR(EditModel.text)+' );   ') ;
     MDal.Lines.Add('  if Length( Trim( Ordem ) ) = 0 then  ') ;
     MDal.Lines.Add('    Ordem := ''id'';                   ') ;
     MDal.Lines.Add('  if not Assigned( Self.FModel ) then  ') ;
     MDal.Lines.Add('  begin                                ') ;
     MDal.Lines.Add('    ListError.Insert(''Data Acess Layer'',''Modelo (%s) Não Inicializado!'', Self.ClassName);  ') ;
     MDal.Lines.Add('    Result := (ListError.Count = 0);   ') ;
     MDal.Lines.Add('    Exit;                              ') ;
     MDal.Lines.Add('  end;                                 ') ;
     MDal.Lines.Add('') ;
     MDal.Lines.Add('  SQL.SelectFrom('+CBTabelas.Text+');') ;
     MDal.Lines.Add('') ;
     MDal.Lines.Add('  if Self.FModel.id > 0 then                   ') ;
     MDal.Lines.Add('    SQL.Where(''id'').Equal( Self.FModel.id ); ') ;
     MDal.Lines.Add('  SQL.Order_By(Ordem);                         ') ;
     MDal.Lines.Add('  dbSelect;                                    ') ;
     MDal.Lines.Add('') ;
     MDal.Lines.Add('  if ListError.Count = 0 then                  ') ;
     MDal.Lines.Add('  begin                                        ') ;
     MDal.Lines.Add('    if Assigned( ModelList ) then              ') ;
     MDal.Lines.Add('      FreeAndNil( ModelList );                 ') ;
     MDal.Lines.Add('') ;
     MDal.Lines.Add('    Self.FModelList := TModelBaseList<T'+SEMCHAR(EditModel.text)+'>.Create;  ') ;
     MDal.Lines.Add('    Self.FModelList.FieldCount := SQL.DataSet.FieldList.Count;               ') ;
     MDal.Lines.Add('') ;
     MDal.Lines.Add('    while ( not SQL.DataSet.Eof ) do ') ;
     MDal.Lines.Add('    begin                            ') ;
     MDal.Lines.Add('      I := Self.FModelList.Add( T'+SEMCHAR(EditModel.text)+'.Create ); ') ;
        qr.First;
        if not qr.Eof then repeat
        begin
          MDal.Lines.Add('      Self.FModelList[I].'+qr.fieldbyname('coluna').AsString+'      := SQL.getInteger('+qr.fieldbyname('coluna').AsString+');') ;
          qr.Next;
        end;
        until qr.Eof;
     MDal.Lines.Add('      SQL.DataSet.Next;');
     MDal.Lines.Add('    end;               ');
     MDal.Lines.Add('    Self.FModelList.TrimExcess; ');
     MDal.Lines.Add('    ModelList := TModelBaseList<TModelBase>( Self.FModelList );');
     MDal.Lines.Add('  end;                ');
     MDal.Lines.Add('  Result := ( ListError.Count = 0 ); ');
     MDal.Lines.Add('end;   ');
     MDal.Lines.Add('function TDalERPNcmRegraSubstituicao.Update(Model: TModelBase): Boolean; ');
     MDal.Lines.Add('begin                                                                    ');
     MDal.Lines.Add('  if not (Model is TModelERPNcmRegraSubstituicao) then                   ');
     MDal.Lines.Add('  begin                                                                  ');
     MDal.Lines.Add('    ListError.Insert(''Data Acess Layer'',''Tipo de dado incorreto ou Modelo (%s) Não Inicializado!'', Self.ClassName); ');
     MDal.Lines.Add('    Result := (ListError.Count = 0);                                     ');
     MDal.Lines.Add('    Exit;                                                                ');
     MDal.Lines.Add('  end;                                                                   ');
     MDal.Lines.Add('');
     MDal.Lines.Add('  Self.FModel := ( Model as T'+SEMCHAR(EditModel.text)+' );             ');
     MDal.Lines.Add('');
     MDal.Lines.Add('  if not Assigned( Self.FModel ) then  ');
     MDal.Lines.Add('  begin                                ');
     MDal.Lines.Add('    ListError.Insert(''Data Acess Layer'',''Modelo (%s) Não Inicializado!'', Self.ClassName); ');
     MDal.Lines.Add('    Result := (ListError.Count = 0);   ');
     MDal.Lines.Add('    Exit;                              ');
     MDal.Lines.Add('  end;                                 ');
     MDal.Lines.Add('');
     MDal.Lines.Add('  if Self.FModel.id = 0 then           ');
     MDal.Lines.Add('  begin                                ');
     MDal.Lines.Add('    ListError.Insert(''Atualização de registros'',''Parece que o modelo esta em Branco!'');  ');
     MDal.Lines.Add('    Result := (ListError.Count = 0);   ');
     MDal.Lines.Add('    Exit;                              ');
     MDal.Lines.Add('  end;                                 ');

     MDal.Lines.Add('  if not Self.FModel.Validate then     ');
     MDal.Lines.Add('  begin                                ');
     MDal.Lines.Add('    ListError.Assign( Self.FModel.ListError ); ');
     MDal.Lines.Add('    Result := (ListError.Count = 0);   ');
     MDal.Lines.Add('    Exit;                              ');
     MDal.Lines.Add('  end;                                 ');

     MDal.Lines.Add('  SQL.Update('+CBTabelas.text+');');

        if not qr.Eof then repeat
        begin
          MDal.Lines.Add('SQL.UpField('+qr.fieldbyname('coluna').AsString+',Self.FModel.'+qr.fieldbyname('coluna').AsString+').Next;') ;
          qr.Next;
        end;
        until qr.Eof;
     MDal.Lines.Add('');
     MDal.Lines.Add('  dbUpdate; ');
     MDal.Lines.Add('');
     MDal.Lines.Add('  Result := (ListError.Count = 0); ');
     MDal.Lines.Add('');
     MDal.Lines.Add('end;');
     MDal.Lines.Add('');
     MDal.Lines.Add('end. ');
     //fim da impressão

     result := true;
   except
    result := false;
   end;

end;

procedure TFrmVIaGeraMVC.SBGerarModulosClick(Sender: TObject);
begin
  if not DirectoryExists(extractfilepath(application.ExeName)+'modulos') then
  ForceDirectories(extractfilepath(application.ExeName)+'modulos');
  if CBTabelas.Text<>'' then
     begin
       if not GerarModel(CBTabelas.Text) then
        showmessage('Não foi possivel criar o model');
       if not GerarView(CBTabelas.Text) then
        showmessage('Não foi possivel criar a view');
       if not GerarController(CBTabelas.Text) then
            showmessage('Não foi possivel criar a view');
       if not GerarDal(CBTabelas.Text) then
        showmessage('Não foi possivel criar a view');
     end
     else
     showmessage('Selecione uma tabela');
end;

procedure TFrmVIaGeraMVC.SpeedButton1Click(Sender: TObject);
begin
  savedialog1.FileName:=EditModel.text;
  if SaveDialog1.Execute then
     begin
       MModel.Lines.SaveToFile(saveDialog1.FileName);
     end;
end;

procedure TFrmVIaGeraMVC.SpeedButton2Click(Sender: TObject);
begin
  savedialog1.FileName:=EditView.text;
  if SaveDialog1.Execute then
     begin
       MView.Lines.SaveToFile(saveDialog1.FileName);
       MDFM.Lines.SaveToFile(extractfilepath(saveDialog1.FileName)+'\'+EditView.text+'.dfm');
     end;
end;

procedure TFrmVIaGeraMVC.SpeedButton3Click(Sender: TObject);
begin
  savedialog1.FileName:=EditController.text;
  if SaveDialog1.Execute then
     begin
       MController.Lines.SaveToFile(saveDialog1.FileName);
     end;
end;

procedure TFrmVIaGeraMVC.SpeedButton4Click(Sender: TObject);
begin
  savedialog1.FileName:=EditDal.text;
  if SaveDialog1.Execute then
     begin
       MDal.Lines.SaveToFile(saveDialog1.FileName);
     end;
end;

procedure TFrmVIaGeraMVC.SpeedButton6Click(Sender: TObject);
begin
  Conexao.Connected := false;
  Conexao.Params.Values['Server'] := EdtHost.text;
  Conexao.Params.Values['Port'] := (EdtPorta.text);
  Conexao.Params.Values['Database'] := EdtDatabase.Text;
  Conexao.Params.Values['User_Name'] := EdtUsuario.text;
  Conexao.Params.Values['Password'] := EdtSenha.text;
  Conexao.Connected := true;
  Conexao.GetTableNames('','','',CbTabelas.Items,[osMy],[tkTable],true);
end;

end.
