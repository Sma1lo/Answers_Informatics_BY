var
  inputString: string;
  digitCount, i: integer;
begin
  writeln('Введите строку:');
  readln(inputString);
  
  digitCount := 0;
  for i := 1 to length(inputString) do
  begin
    if (inputString[i] >= '0') and (inputString[i] <= '9') then
      digitCount := digitCount + 1;
  end;
  writeln('Количество цифр в строке: ', digitCount);
end. 