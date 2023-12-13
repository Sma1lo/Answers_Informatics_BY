var
s: string;

x, a, code: integer;

begin

writeln('Введите целое число');

readln(s);

a:=0;

for var i:=1 to length(s) do
begin

val(s[i], x, code); 

a := a + x 

end;

writeln ('Сумма цифр равна ', а)

end.