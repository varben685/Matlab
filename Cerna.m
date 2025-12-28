% L = max(X, 14-X), ahol X ~ U(0,14) és itt x-7/7, és a korlát a 7 és 14
% között van

% Eloszlásfüggvény F_L(x)
% 7 alatt biztosan 0, 14 felett biztosan 1
% 7 és 14 között lineárisan nő
FL = @(x) (x>=7 & x<=14).*(x-7)/7 + (x>14);

% Valószínűség számítása: P(29/8 < L < 12)
% = F_L(12) - F_L(29/8)
P = FL(12) - FL(29/8);

% Várható érték számítása
% sűrűség: f_L(x) = 1/7   (7 < x < 14)
EL = integral(@(x) x*(1/7), 7, 14);

% Eredmények kiírása
P, EL