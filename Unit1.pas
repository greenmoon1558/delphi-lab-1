unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Unit2;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    btnSet: TButton;
    btnPlus: TButton;
    btnMinus: TButton;
    edtAngle: TEdit;
    lbl1: TLabel;
    edtAngleIncr: TEdit;
    lbl2: TLabel;
    btnShow: TButton;
    btnClean: TButton;
    imgCanvas: TImage;
    pnlXY: TPanel;
    edtX: TEdit;
    lblX: TLabel;
    edtY: TEdit;
    lblY: TLabel;
    btnXYSet: TButton;
    dlgColor1: TColorDialog;
    btnSetColor: TButton;
    procedure edtAngleKeyPress(Sender: TObject; var Key: Char);
    procedure edtAngleIncrKeyPress(Sender: TObject; var Key: Char);
    procedure btnPlusClick(Sender: TObject);
    procedure btnMinusClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCleanClick(Sender: TObject);
    procedure btnShowClick(Sender: TObject);
    procedure btnSetClick(Sender: TObject);
    procedure edtXKeyPress(Sender: TObject; var Key: Char);
    procedure edtYKeyPress(Sender: TObject; var Key: Char);
    procedure btnXYSetClick(Sender: TObject);
    procedure btnSetColorClick(Sender: TObject);
  private
    angl: TAngle;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.edtAngleKeyPress(Sender: TObject; var Key: Char);
begin
 if not (Key in [#8, '0'..'9']) then Key := #0;
 if (length(edtAngle.Text) = 0) then edtAngle.Text := '0';
end;

procedure TForm1.edtAngleIncrKeyPress(Sender: TObject; var Key: Char);
begin
 if not (Key in [#8, '0'..'9']) then Key := #0;
 if (length(edtAngleIncr.Text) = 0) then edtAngleIncr.Text := '0';
end;

procedure TForm1.btnPlusClick(Sender: TObject);
begin
  edtAngleIncr.Text := IntToStr(StrToInt(edtAngleIncr.Text)+1);
  angl.SetValue(StrToInt(edtAngle.Text)+StrToInt(edtAngleIncr.Text));
end;

procedure TForm1.btnMinusClick(Sender: TObject);
begin
edtAngleIncr.Text := IntToStr(StrToInt(edtAngleIncr.Text)-1);
angl.SetValue(StrToInt(edtAngle.Text)+StrToInt(edtAngleIncr.Text));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  angl := TAngle.Create(0, 0, imgCanvas);
  angl.Draw();
end;

procedure TForm1.btnCleanClick(Sender: TObject);
begin
    angl.Clear;
    angl.SetValue(0);
    edtAngleIncr.Text := '0';
    edtAngle.Text := '0';
end;

procedure TForm1.btnShowClick(Sender: TObject);
begin
  angl.SetValue(StrToInt(edtAngle.Text)+StrToInt(edtAngleIncr.Text));
  angl.Draw();
end;

procedure TForm1.btnSetClick(Sender: TObject);
begin
  angl.SetValue(StrToInt(edtAngle.Text));
  angl.Draw();
end;

procedure TForm1.edtXKeyPress(Sender: TObject; var Key: Char);
begin
      if not (Key in [#8, '0'..'9', '-']) then Key := #0;
end;

procedure TForm1.edtYKeyPress(Sender: TObject; var Key: Char);
begin
 if not (Key in [#8, '0'..'9', '-']) then Key := #0;
end;

procedure TForm1.btnXYSetClick(Sender: TObject);
begin
  angl := TAngle.Create(StrToInt(edtX.Text), StrToInt(edtY.Text), imgCanvas);
  angl.Draw();
end;

procedure TForm1.btnSetColorClick(Sender: TObject);
begin
    if dlgColor1.Execute then
       angl.Color := dlgColor1.Color;
       angl.Draw;
end;

end.
