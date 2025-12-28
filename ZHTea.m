% Adatok
n   = 10;
SX  = 2014.529;        % sum(Xk)
SX2 = 406421.7214;     % sum(Xk^2)
mu0 = 200;
alpha = 0.05;

% 1) Mintaátlag
xbar = SX/n;

% 2) Mintavariancia összegképlettel: s^2 = (sum(x^2) - n*xbar^2)/(n-1)
s2 = (SX2 - n*xbar^2) / (n-1);
s  = sqrt(s2);

% 3) t-próba statisztika
t = (xbar - mu0) / (s/sqrt(n));

% 4) Kétoldali kritikus érték: t_{df}(1-alpha/2)
df = n-1;
tcrit = tinv(1 - alpha/2, df);     % ez a döntési intervallum jobb végpontja

% 5) Kétoldali p-érték
p = 2*(1 - tcdf(abs(t), df));

% Döntés: ha |t| > tcrit -> elutasítjuk, különben nincs ok elvetni
reject = abs(t) > tcrit;

t, tcrit, p, reject
