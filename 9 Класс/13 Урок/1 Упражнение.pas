var

s: string;

x, a, code: integer;

begin

writeln('Введите целое число');

readln(s); (число вводится в строковую переменную в)

a := 0 (обнуление переменной для вычисления суммы)

for var i :=1 to length(s) do

begin

val(s[i], x, code); (символ преобразуется в число х)

a:=a+x

(цифры суммируются)

end;

writeln ('Сумма цифр равна 1, а)

end.