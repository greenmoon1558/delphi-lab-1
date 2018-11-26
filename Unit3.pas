unit Unit3;

interface
uses Unit2, Graphics,  ExtCtrls, Windows, Forms ;

type TSquare = class(TDrawArea)
public
 procedure DrawIt(x1, y1, x2, y2: integer);
 constructor Create(img: TImage);
private
  imgCanvas: TImage
end;
implementation
constructor TSquare.Create(img: TImage);
begin
   inherited Create(img);
   imgCanvas := img;
end;
procedure TSquare.DrawIt(x1, y1, x2, y2: integer);
   begin
       imgCanvas.Canvas.rectangle(x1, y1, x2, y2);
   end;
end.
