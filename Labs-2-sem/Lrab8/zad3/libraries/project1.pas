library project1;

{$mode objfpc}{$H+}

uses
  Classes
  { you can add units after this };

function plus(a, b : integer) : integer;
begin
   if b = 0 then plus := a
   else plus := plus(a, b - 1) + 1;
end; { plus }

function minus(a, b : integer) : integer;
begin
   if b = 0 then minus := a
   else minus := minus(a, b - 1) - 1;
end; { minus }

function multiple (a, b : integer) : integer;
begin
   if (b = 0) or (a = 0) then multiple := 0
   else multiple := multiple(a, b - 1) + a;
end;

function divide(a, b : integer ) : integer;
begin
   if a <= b then divide := 1
   else divide := divide(a - b, b) + 1;
end; { divide }

function module(a, b :integer ) : integer;
begin
   if (a < b ) then module := a
   else if (a = b) then module := 0
   else module := module(a - b, b);
end; { module }
{$R *.res}

exports plus, minus, multiple, divide, module;

begin
end.
