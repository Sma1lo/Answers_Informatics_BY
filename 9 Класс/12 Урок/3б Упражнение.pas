var
  a: string;
  b, i: integer;
begin
  writeln('Введите строку:');
  readln(a);
  
  b:= 0;
  for i := 1 to length(a) do
  begin
    if ( (a[i] >= 'а') and (a[i] <= 'я') ) 
       or ( (a[i] >= 'А') and (a[i] <= 'Я') ) then
      b :=b + 1;
  end;
  writeln('Количество букв в строке: ', b);
end.