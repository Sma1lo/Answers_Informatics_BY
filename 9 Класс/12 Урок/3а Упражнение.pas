var
  a: string;
  b, i: integer;
begin
  writeln('Введите строку:');
  readln(a);

  b:= 0;
  for i := 1 to length(a) do
  begin
    if (a[i] >= '0') and (a[i] <= '9') then
      b := b + 1;
  end;
  writeln('Количество цифр в строке: ', b);
end.