% Tartomány határa
c = 19/10;

% Normalizálás: A = 1 / integral(|x|, -c, c)
A = 1 / integral(@(x) abs(x), -c, c);

% Várható érték
EX = integral(@(x) x .* A .* abs(x), -c, c);

% Variancia
EX2 = integral(@(x) x.^2 .* A .* abs(x), -c, c);
VarX = EX2 - EX^2;

A, EX, VarX
