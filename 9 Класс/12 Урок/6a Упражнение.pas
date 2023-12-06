var s: string; i, m: integer;
begin
write('Введите строку: ');
read(s);

for i:=1 to length(s) - 1 do
if ((s[i] = 'Ч') or (s[i] = 'ч')) and ((s[i + 1] = 'Я') or (s[i + 1] = 'я')) then begin
inc(m, 1);
s[i + 1] := 'а';
end;

writeln('Ошибок: ',m);
writeln(s);
end.