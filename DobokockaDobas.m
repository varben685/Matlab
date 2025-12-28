% ndgrid legenerálja az összes lehetséges dobást
% a(i,j,k): az első kocka értéke
% b(i,j,k): a második kocka értéke
% c(i,j,k): a harmadik kocka értéke
% Összesen 6*6*6 = 216 különböző eset
[a,b,c] = ndgrid(1:6, 1:6, 1:6);

% (:)-operátor: a 3D mátrixokat egy oszloppá lapítja
% a(:), b(:), c(:) együtt az összes dobást sorolja fel
% minden sor egy (a,b,c) dobás
sums = a(:) + b(:) + c(:);

% Logikai vektor: 1 (true), ahol az összeg 9
% 0 (false), ahol nem
good = (sums == 10);

% sum(true)=1, sum(false)=0 → megszámoljuk a jó eseteket
% összes eset: 216
P = sum(good) / 216
rats(P)