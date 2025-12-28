% Adatok
B = 5; R = 7; Y = 4;      % blue, red, yellow
N = B+R+Y;                % összes

b = 2; r = 1; y = 2;      % kívánt darabszámok
n = b+r+y;                % összes húzás (5)

% 1) Visszatevés nélkül: hipergeometrikus (kombinatorika)
P_norep = nchoosek(B,b)*nchoosek(R,r)*nchoosek(Y,y) / nchoosek(N,n);

% 2) Visszatevéssel: multinomiális
pB = B/N; pR = R/N; pY = Y/N;
P_rep = factorial(n)/(factorial(b)*factorial(r)*factorial(y)) * pB^b * pR^r * pY^y;

P_norep
P_rep
rats(P_norep)
rats(P_rep)
