% Darabszámok (napi termelés)
n = [745 306 816 133];

% Selejtarányok (százalékban)
scrap = [10 12 10 12];

% Jó arány = 1 - selejtarány
pGood = 1 - scrap/100;          % [0.90 0.88 0.90 0.88]

% Bayes: P(Gép1 | jó) = (jó1 * arány1) / (összes jó * arány)
% Itt egyszerűbb: "várható jó darabszám" arányát vesszük:
goodCount = n .* pGood;         % gépenként a jó darabok száma

P = goodCount(1) / sum(goodCount)

% Ha törtként szeretnéd látni:
rats(P)
