var: Integer:
B: Boolean:
begin
	if A > 10 then
		DoSomething;
	else
		DoSomethingElse;
	B := A > 10;
	while B do
	begin
		DoSomething;
	end
end;
