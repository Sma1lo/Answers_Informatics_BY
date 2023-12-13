var
  a, b, c, d, e: string;
  p: integer;
begin
 
  Write('Введите дату в американском формате (м/д/гггг): ');
  ReadLn(a);

  
  p := Pos('/', a);
  c := Copy(a, 1, p - 1);
  Delete(a, 1, p);
  p := Pos('/', a);
  d := Copy(a, 1, p - 1);
  Delete(a, 1, p);
  e := a;

    b := d + '.' + c + '.' + e;

  
  WriteLn('Дата в формате, принятом в Беларуси: ', b);
end.