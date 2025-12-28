% sűrűség: f(x)=A*|x|, |x|<=3

A = 1/integral(@(x) abs(x), -3, 3);
EX = integral(@(x) x.* (A.*abs(x)), -3,3);
EX2 = integral(@(x) x.^2 .* (A.*abs(x)), -3, 3);

% D2
Var = EX2 - EX^2;

A, EX, Var

%A = 1/9, EX = 0, Var = 9/2

A = 1/integral(@(x) abs(x), -7/3, 7/3);
EX = integral(@(x) x.* (A.*abs(x)),-7/3, 7/3);
EX2 = integral(@(x) x.^2 .* (A.*abs(x)), -7/3, 7/3);
Var = EX2 - EX^2;

rats(A), EX, rats(Var)