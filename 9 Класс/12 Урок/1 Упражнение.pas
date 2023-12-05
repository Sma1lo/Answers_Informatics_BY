var s, t, z, result: string;
    position: integer;
begin
    writeln('Введите строку s:');
    readln(s);
    writeln('Введите слово t:');
    readln(t);
    writeln('Введите слово z:');
    readln(z);
    
    position := pos(t, s);
    if position > 0 then
    begin
        insert(z, s, position + length(t));
        result := s;
        writeln('Результат:', result);
    end
    else
    begin
        writeln('Ошибка: слово t не найдено в строке s');
    end;
end.