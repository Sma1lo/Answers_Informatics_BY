program CountWords;

var
  s: string;
  w, i: integer;

begin
  w := 1; 
  writeln('Введите предложение:');
  readln(s);

  
  for i := 1 to length(s) do
  begin
    if s[i] = ' ' then
      w := w + 1;
  end;

  
  writeln('Количество слов в предложении: ', w);

end.