unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComObj, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    BtnPause: TButton;
    TrackBar1: TTrackBar;
    BtnStart: TButton;
    btnStop: TButton;
    Memo1: TMemo;
    Label1: TLabel;
    procedure btnStopClick(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure BtnPauseClick(Sender: TObject);
    procedure BtnStartClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  voz: variant;
  paused: boolean;

implementation

{$R *.dfm}

//==============================================
//   Form Create
//==============================================
procedure TForm1.FormCreate(Sender: TObject);
begin
  Voz:= CreateOleObject('sapi.spvoice');
  paused:= False;
end;

//==============================================
//   Btn Start
//==============================================
procedure TForm1.BtnStartClick(Sender: TObject);
begin
  if(Memo1.Text <> '' )then
  begin
    if(not paused)then
      voz.speak(Memo1.text, 1)
    else
    begin
      paused:= False;
      voz.resume;
    end;
  end;
end;
//==============================================
//   Btn Pause
//==============================================

procedure TForm1.BtnPauseClick(Sender: TObject);
begin
  if(not paused)then
  begin
    voz.pause;
    paused:= true;
  end;
end;
//==============================================
//   Btn Stop
//==============================================

procedure TForm1.BtnStopClick(Sender: TObject);
begin
  voz.skip('Sentence',1);
end;



//==============================================
//   TrackBar1 - OnChange
//==============================================
procedure TForm1.TrackBar1Change(Sender: TObject);
begin
 voz.Rate:= TrackBar1.Position;
end;





end.
