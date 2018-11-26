unit Unit5;

interface
uses Unit2, Graphics,  ExtCtrls, Windows, Forms ;
type TRoundRect = class(TDrawArea)
public
 procedure DrawIt(x1, y1, x2, y2: integer);
 constructor Create(img: TImage);
private
  imgCanvas: TImage
end;
implementation
constructor TRoundRect.Create(img: TImage);
begin
   inherited Create(img);
   imgCanvas := img;
end;
  procedure TRoundRect.DrawIt(x1, y1, x2, y2: integer);
   begin
  imgCanvas.Canvas.RoundRect(x1, y1, x2, y2, x2-100, y2-100);
   end;
end.
 