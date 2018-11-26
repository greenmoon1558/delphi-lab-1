unit Unit2;

interface

uses ExtCtrls, Windows, Graphics;
type
TAngle=class(TPaintBox)
       private
           Value:integer;
           XPos,YPos:integer;
           Can: TImage;
       public
        constructor Create(X,Y:integer; NewCanvas: TImage);
        procedure SetValue(NewValue:integer);
        function  GetValue:integer;
        function  Plus (Increment:integer):integer;
        function  Minus(Decrement:integer):integer;
        procedure Draw;
        procedure Clear;
        destructor Destroy; override;
        end;
implementation

constructor TAngle.Create(X,Y:integer; NewCanvas:TImage);
begin
   inherited Create(NewCanvas);
    XPos := X;
    YPos := Y;
    Value := 45;
    Can := NewCanvas;
    Self.Draw();
end;

procedure TAngle.SetValue(NewValue:integer);
begin
 Value:= NewValue mod 360;
end;
function TAngle.GetValue:integer;
begin
  result:=Value;
end;
function TAngle.Plus (Increment:integer):integer;
begin
  Value := (Value + Increment) mod 360;
  result:= Value;
end;
function TAngle.Minus(Decrement:integer):integer;
begin
  Value:= (Value - Decrement) mod 360;
  result:=Value;
end;
procedure TAngle.Draw;
begin
    Self.Clear;
    Can.Canvas.Pie(XPos, YPos, Can.Width, Can.Height,
    XPos+Trunc(Can.Width/2)+round(Trunc(Can.Width/2)*cos((Value)*pi/180)),
    YPos+Trunc(Can.Height/2)+round(Trunc(Can.Height/2)*sin((Value)*pi/180)),
    Can.Width, Trunc(Can.Height/2));
end;
procedure TAngle.Clear;
begin
    Can.Canvas.Brush.Style := bsSolid;
    Can.Canvas.pen.color:= clWhite;
    Can.Canvas.brush.color:= clWhite;
    Can.Canvas.rectangle(XPos,YPos,Can.Width-1, Can.Height-1);
    Can.Canvas.pen.color:= clBlack;
    Can.Canvas.brush.color:=clYellow;
    with Can.Canvas do
      begin
        MoveTo(Trunc((Can.Width)/2), 0);
        LineTo(Trunc((Can.Width)/2), Can.Height-1);
        MoveTo(0, Trunc((Can.Height)/2));
        LineTo(Can.Width-1, Trunc((Can.Height)/2));
        MoveTo(0, 0);
        LineTo(Can.Width-1, 0);
        LineTo(Can.Width-1, Can.Height-1);
        LineTo(0, Can.Height-1);
        LineTo(0, 0);
      end;
end;
destructor TAngle.Destroy;
begin
  inherited Destroy;
end;
end.
