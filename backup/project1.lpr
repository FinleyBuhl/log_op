program project1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Classes, sysutils, strutils;
var
  i, var1, var2: int64;
begin
  var1:= 0;
  var2:= 0;
  for i:= low(paramstr(1)) to high(paramstr(1)) do
    if strtoint(paramstr(1)[i]) > 0 then
      var1:= var1 or (1 << (i - 1));
  for i:= low(paramstr(3)) to high(paramstr(3)) do
    if strtoint(paramstr(3)[i]) > 0 then
      var2:= var2 or (1 << (i - 1));
  if (paramstr(2) = 'xor') or (paramstr(2) = 'xor') then
  begin
      write(inttostr(var1 xor var2) + ' : ' + inttobin((var1 xor var2), 8));
  end
  else
  if (paramstr(2) = 'xor') or (paramstr(2) = 'xor') then
  begin
      write(inttostr(var1 xor var2) + ' : ' + inttobin((var1 xor var2), 8));
  end
  else
  if (paramstr(2) = 'xor') or (paramstr(2) = 'xor') then
  begin
      write(inttostr(var1 xor var2) + ' : ' + inttobin((var1 xor var2), 8));
  end
  else
end.

