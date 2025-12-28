n = 11;              % dobások száma
k = 5;               % fejek száma (mert T=H+1 -> H=5)

% Binomiális valószínűség: P(H=k) = C(n,k)/2^n
P = nchoosek(n,k) / 2^n;

P                      % decimális
rats(P)                % tört alak (itt: 231/1024)