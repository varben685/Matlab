% nyers sűrűség
f0 = @(x) 1./(5*x.^2);

% normalizálás
A  = 1 / integral(f0, 6, Inf);

% teljes sűrűség
f  = @(x) A * f0(x);

% keresett valószínűség
P = integral(f, 41/2, 105/4);

A, P
rats(P)
