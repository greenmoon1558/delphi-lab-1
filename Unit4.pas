unit Unit4;

interface
uses Unit2, Graphics,  ExtCtrls, Windows, Forms ;

type TEllipse = class(TDrawArea)
public
 procedure DrawIt(x1, y1, x2, y2: integer);
 constructor Create(img: TImage);
private
  imgCanvas: TImage
end;
implementation
constructor TEllipse.Create(img: TImage);
begin
   inherited Create(img);
   imgCanvas := img;
end;
procedure TEllipse.DrawIt(x1, y1, x2, y2: integer);
   begin
      imgCanvas.Canvas.Ellipse(x1, y1, x2, y2);
       //Application.MainForm.Canvas.brush.Color := clWhite;
   end;
end.
