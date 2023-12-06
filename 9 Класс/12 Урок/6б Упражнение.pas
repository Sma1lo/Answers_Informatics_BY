var s,sc: string;
    i,k: integer;
begin
write('Введите строку: ');
readln(s);
for i:=1 to length(s)-1 do
    begin
    sc:=copy(s,i,2);
    if (sc='жы') or (sc='шы') then
       begin
       s[i+1]:='и';
       inc(k);
       end;
    end;
if k=0 then writeln('Ошибок не обнаружено') else
begin
writeln('Обнаружены ошибки в количестве ',k,'. Ошибки исправлены');
writeln(s);
end;
end.
