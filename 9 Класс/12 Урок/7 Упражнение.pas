
var
  s: string;
  r, l: integer;
  i: integer;
  ch: char;

begin
  r := 0;
  l := 0;

  writeln('Введите строку, содержащую русские и латинские буквы:');
  readln(s);

  for i := 1 to length(s) do
  begin
    ch := s[i];

    if (ch >= 'а') and (ch <= 'я') or (ch >= 'А') and (ch <= 'Я') then
      r := r + 1
    else if (ch >= 'a') and (ch <= 'z') or (ch >= 'A') and (ch <= 'Z') then
      l := l + 1;
  end;

  if r > l then
    writeln('Русских букв больше')
  else if r < l then
    writeln('Латинских букв больше')
  else
    writeln('Русских и латинских букв одинаковое количество');

end.