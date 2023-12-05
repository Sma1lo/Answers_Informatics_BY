var s, t: string;
    count, position: integer;
begin
    writeln('Введите строку s:');
    readln(s);
    writeln('Введите слово t:');
    readln(t);
    
    count := 0;
    position := pos(t, s);
    while position > 0 do
    begin
        count := count + 1;
        delete(s, 1, position + length(t) - 1);
        position := pos(t, s);
    end;
    
    writeln('Слово t встречается ', count, ' раз(а) в строке s');
end.