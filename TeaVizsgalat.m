% Mintaelemszám
n = 8;

% Összegadatok
SX  = 1353.7557;      % sum(X_k)
SX2 = 229175.3012;    % sum(X_k^2)

% Nullhipotézis szerinti átlag
mu0 = 170;

% Mintaátlag
xbar = SX / n;

% Mintavariancia (összegképlettel)
s2 = (SX2 - n*xbar^2) / (n-1);
s  = sqrt(s2);

% t-statisztika
t = (xbar - mu0) / (s / sqrt(n));

% Kritikus érték (kétoldali próba, alfa = 0.01)
tcrit = tinv(0.995, n-1);

% Kiírás
abs(t), tcrit