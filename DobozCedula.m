% Adatok (a cédulákon lévő számok)
a = [13 32 11 23 12 12 12 21 21 12 13];

% X = első számjegy (tízes), Y = második számjegy (egyes)
X = floor(a/10);
Y = mod(a,10);

% Várható értékek (minden cédula egyenlő eséllyel -> sima átlag)
EX  = mean(X);
EY  = mean(Y);
EXY = mean(X.*Y);

% Kovariancia definíció szerint
covXY = EXY - EX*EY;

% Függetlenség ellenőrzése egy ellenpéldával:
% ha függetlenek lennének: P(X=3,Y=2) = P(X=3)*P(Y=2)
pX3Y2 = mean((X==3) & (Y==2));
pX3   = mean(X==3);
pY2   = mean(Y==2);

covXY
pX3Y2
pX3*pY2