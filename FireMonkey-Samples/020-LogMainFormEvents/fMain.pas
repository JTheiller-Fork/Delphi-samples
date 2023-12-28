unit fMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Memo.Types,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    btnClose: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure FormPaint(Sender: TObject; Canvas: TCanvas; const ARect: TRectF);
    procedure FormSaveState(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    procedure addlog(log: string);
    function getLogFileName: string;
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses
  System.ioutils;

procedure TForm1.addlog(log: string);
begin
  tfile.AppendAllText(getLogFileName, log + sLineBreak);
end;

procedure TForm1.btnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  addlog('FormActivate');
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  addlog('FormClose');
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  addlog('FormCloseQuery');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  addlog('FormCreate');
  Memo1.Lines.LoadFromFile(getLogFileName);
end;

procedure TForm1.FormDeactivate(Sender: TObject);
begin
  addlog('FormDeactivate');
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  addlog('FormDestroy');
end;

procedure TForm1.FormHide(Sender: TObject);
begin
  addlog('FormHide');
end;

procedure TForm1.FormPaint(Sender: TObject; Canvas: TCanvas;
  const ARect: TRectF);
begin
  addlog('FormPaint');
end;

procedure TForm1.FormSaveState(Sender: TObject);
begin
  addlog('FormSaveState');
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  addlog('FormShow');
end;

function TForm1.getLogFileName: string;
begin
  result := TPath.combine(TPath.GetTempPath, 'log-MainFormEvents.txt');
end;

end.
