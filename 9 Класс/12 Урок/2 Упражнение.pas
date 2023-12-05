uses GraphABC;
const
  Size = 20;
 
var
  Snake: List<Point>;
 
procedure Draw();
begin
  ClearWindow();
  Polyline(Snake.ToArray());
  
  var c := Snake.Count - 1;
  Circle(Snake[c].X, Snake[c].Y, 5);
  Redraw();
end;
 
function Exists(p: Point): boolean;
begin
  Result := false;
  var i := 0;
  while not Result and (i < Snake.Count) do
  begin
    if (Snake[i].X = p.X) and (Snake[i].Y = p.Y) then Result := true;
    Inc(i);
  end;
end;
 
procedure NewPoint(p: Point);
begin
  if not Exists(p) then
  begin
    Snake.RemoveAt(0);
    Snake.Add(p);
  end;
end;
 
procedure KeyDown(Key: integer);
begin
  var c := Snake.Count - 1;
  case Key of
    VK_Left:
      begin
        var p := new Point(Snake[c].X - Size, Snake[c].Y);
        NewPoint(p);
      end;
    VK_Right:
      begin
        var p := new Point(Snake[c].X + Size, Snake[c].Y);
        NewPoint(p);
      end;
    VK_Up:
      begin
        var p := new Point(Snake[c].X, Snake[c].Y  - Size);
        NewPoint(p);
      end;
    VK_Down:
      begin
        var p := new Point(Snake[c].X, Snake[c].Y  + Size);
        NewPoint(p);
      end;
  end;
  Draw();
end;
 
begin
  LockDrawing();
  SetSmoothingOff();
  
  Snake := new List<Point>();
  for var x := 1 to 30 do
    Snake.Add(new Point(x * Size, Size));
  
  Draw();
  OnKeyDown := KeyDown;
end.