var
  s: string;
  c, i: integer;
  a: set of char;

begin
  a := ['а', 'е', 'ё', 'и', 'о', 'у', 'ы', 'э', 'ю', 'я'];
  c := 0;
  
  writeln('Введите предложение: ');
  readln(s);
  
  for i := 1 to length(s) do
  begin
    if s[i] in a then
    begin
      Inc(c);
    end;
  end;

  writeln('Количество гласных букв в предложении: ', c);
end.
