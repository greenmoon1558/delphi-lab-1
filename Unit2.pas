unit Unit2;

interface

uses ExtCtrls, Windows, Graphics, Forms;
type
TDrawArea = class(TObject)
public
 procedure WhiteBrush;
 procedure BlueBrush;
 procedure BlackBrush;
 procedure redBrush;
 constructor Create(img: TImage);
private
  imgCanvas: TImage
end;
implementation
constructor TDrawArea.Create(img: TImage);
begin
   inherited Create;
   imgCanvas := img;
end;
procedure TDrawArea.WhiteBrush;
begin
    imgCanvas.Canvas.Brush.Style := bsSolid;
    imgCanvas.Canvas.pen.color:= clBlack;
    imgCanvas.Canvas.brush.color:= clWhite;
end;
 procedure TDrawArea.BlueBrush;
begin
     imgCanvas.Canvas.Brush.Style := bsSolid;
    imgCanvas.Canvas.pen.color:= clRed;
    imgCanvas.Canvas.brush.color:= clBlue;
end;
 procedure TDrawArea.BlackBrush;
begin
    imgCanvas.Canvas.Brush.Style := bsSolid;
    imgCanvas.Canvas.pen.color:= clWhite;
    imgCanvas.Canvas.brush.color:= clBlack;
end;
 procedure TDrawArea.redBrush;
begin
  imgCanvas.Canvas.Brush.Style := bsSolid;
    imgCanvas.Canvas.pen.color:= clBlue;
    imgCanvas.Canvas.brush.color:= clRed;
end;
end.
