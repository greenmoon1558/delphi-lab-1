unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Unit3, Unit4, Unit5, StdCtrls, Buttons, ExtCtrls;

type
  TForm1 = class(TForm)
    imgCanvas: TImage;
    pnl1: TPanel;
    btnRedRoundRect: TBitBtn;
    btnBlueRounRect: TBitBtn;
    btnBlackSquare: TBitBtn;
    btnWhiteSquare: TBitBtn;
    btnRedElipce: TBitBtn;
    btnWhiteElipce: TBitBtn;
    procedure btnRedRoundRectClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnBlueRounRectClick(Sender: TObject);
    procedure btnBlackSquareClick(Sender: TObject);
    procedure btnWhiteSquareClick(Sender: TObject);
    procedure btnRedElipceClick(Sender: TObject);
    procedure btnWhiteElipceClick(Sender: TObject);
  private
    { Private declarations }
     square: TSquare;
     elipce: TEllipse;
     roundRect: TRoundRect;
     procedure btnClick(Sender: TObject; typeBtn: string);
  public
    { Public declarations }
    
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnRedRoundRectClick(Sender: TObject);
begin
roundRect.redBrush;
roundRect.DrawIt(5,5, 200, 200);
end;
 procedure TForm1.btnClick(Sender: TObject; typeBtn:string);
begin
  //square
  square.DrawIt(5,5, 200, 200);

// case typeBtn of
//    'RedRound' :
//   Else TSquare.DrawIt(5,5, 200, 200);;
//  end;
end;
procedure TForm1.FormCreate(Sender: TObject);
begin
square := TSquare.Create(imgCanvas);
elipce := TEllipse.Create(imgCanvas);
roundRect := TRoundRect.Create(imgCanvas);
end;

procedure TForm1.btnBlueRounRectClick(Sender: TObject);
begin
roundRect.BlueBrush;
roundRect.DrawIt(5, 205, 200, 405);
end;

procedure TForm1.btnBlackSquareClick(Sender: TObject);
begin
square.BlackBrush;
square.DrawIt(205, 5, 405, 200);
end;

procedure TForm1.btnWhiteSquareClick(Sender: TObject);
begin
square.WhiteBrush;
square.DrawIt(205, 205, 405, 405);
end;

procedure TForm1.btnRedElipceClick(Sender: TObject);
begin
elipce.redBrush;
elipce.DrawIt(405,5, 600, 200);
end;

procedure TForm1.btnWhiteElipceClick(Sender: TObject);
begin
elipce.WhiteBrush;
elipce.DrawIt(405,205, 600, 405);
end;

end.
