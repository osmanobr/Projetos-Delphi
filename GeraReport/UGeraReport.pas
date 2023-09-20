unit UGeraReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.CheckLst;

type
  TForm2 = class(TForm)
    GroupBox1: TGroupBox;
    Label8: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    CLBPai: TCheckListBox;
    ComboBox2: TComboBox;
    Memo1: TMemo;
    ComboBox7: TComboBox;
    ComboBox8: TComboBox;
    Edit4: TEdit;
    ComboBox9: TComboBox;
    ComboBox10: TComboBox;
    Edit5: TEdit;
    ComboBox11: TComboBox;
    ComboBox12: TComboBox;
    Edit6: TEdit;
    SpeedButton1: TSpeedButton;
    GroupBox2: TGroupBox;
    Label9: TLabel;
    Label7: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    ComboBox3: TComboBox;
    CheckListBox2: TCheckListBox;
    ComboBox5: TComboBox;
    Memo2: TMemo;
    ComboBox13: TComboBox;
    ComboBox14: TComboBox;
    Edit7: TEdit;
    ComboBox15: TComboBox;
    ComboBox16: TComboBox;
    Edit8: TEdit;
    ComboBox17: TComboBox;
    ComboBox18: TComboBox;
    Edit9: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    ComboBox4: TComboBox;
    CheckListBox3: TCheckListBox;
    ComboBox6: TComboBox;
    Memo3: TMemo;
    ComboBox19: TComboBox;
    ComboBox20: TComboBox;
    Edit10: TEdit;
    ComboBox21: TComboBox;
    ComboBox22: TComboBox;
    Edit11: TEdit;
    ComboBox23: TComboBox;
    ComboBox24: TComboBox;
    Edit12: TEdit;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure CheckListBox2ClickCheck(Sender: TObject);
    procedure CLBPaiClickCheck(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
   campospai, camposfilho, camposneto :string;
implementation

{$R *.dfm}

function comparador(valor:string):string;
begin
  if valor =  'TODOS' then result := '';
  if valor =  'IGUAL' then result := '=';
  if valor =  'MAIOR' then result := '>';
  if valor =  'MENOR' then result := '<';
  if valor =  'MENOR OU IGUAL' then result := '<=';
  if valor =  'MAIOR OU IGUAL' then result := '<=';
  if valor =  'DIFERENTE' then result := '<>';
end;

procedure TForm2.CheckListBox2ClickCheck(Sender: TObject);
 var i:integer;

begin
  camposfilho := '';
  for I := 0 to CheckListBox2.Items.Count -1 do
  begin
    if CheckListBox2.Checked[i] then
       camposfilho := camposfilho + CheckListBox2.Items[i]+',' ;
  end;

  camposfilho := camposfilho.Remove(camposfilho.Length - 1);
  showmessage(camposfilho);

end;

procedure TForm2.CLBPaiClickCheck(Sender: TObject);
 var i:integer;

begin
  campospai := '';
  for I := 0 to CLBPai.Items.Count -1 do
  begin
    if CLBPai.Checked[i] then
       campospai := campospai + CLBPai.Items[i]+',' ;
  end;

  campospai := campospai.Remove(campospai.Length - 1);
  showmessage(campospai);

end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
Memo1.Clear;
if comparador(ComboBox8.Text)='' then
   memo1.Lines.Add('SELECT* FROM '+ComboBox2.Text+';')
else
  begin
      memo1.Lines.Add('SELECT');
      memo1.Lines.Add(CAMPOSPAI);
      memo1.Lines.Add('FROM');
      memo1.Lines.Add(ComboBox2.Text);
      memo1.Lines.Add('WHERE');
      memo1.Lines.Add(ComboBox7.Text);
      memo1.Lines.Add(comparador(ComboBox8.Text));
      memo1.Lines.Add(QUOTEDSTR(Edit4.Text)+';');
  end;



end;

end.
