var
  a, b, c: real;
  z: char;

begin
  writeln('Введите первое число: ');
  readln(a);
  
  writeln('Введите оператор (+ для сложения, - для вычитания): ');
  readln(z);
  
  writeln('Введите второе число: ');
  readln(b);
   
  case z of
    '+': c := a + b;
    '-': c := a - b;
  else
    begin
      writeln('Неверный оператор.');
      exit;
    end;
  end;

  writeln('Результат вычисления: ', c:0:2);
  
end.
