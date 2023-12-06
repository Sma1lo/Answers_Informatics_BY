var
  s: string;
  w, i: integer;
  c: boolean;

begin
  w := 0;
  c := false;

  writeln('Введите предложение:');
  readln(s);

  for i := 1 to length(s) do
  begin
    if s[i] <> ' ' then
    begin
      if not c then
      begin
        c := true;
        w := w + 1;
      end;
    end
    else
    begin
      c := false;
    end;
  end;

  writeln('Количество слов в предложении: ', w);

end.