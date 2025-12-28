% Gépek részesedése a teljes termelésből (arányok)
p = [24 43 10 23]/100;

% Selejtarányok gépenként
s = [12 13 12 7]/100;

% 1) P(selejt) = sum( P(Gi)*P(selejt|Gi) )
Pbad = sum(p .* s);

% 2) Bayes: P(G3 | jó) = P(jó|G3)*P(G3) / P(jó)
pgood = 1 - s;                % jó arányok gépenként
Pgood = sum(p .* pgood);      % = 1 - Pbad
P_G3_given_good = (p(3)*pgood(3)) / Pgood;

% Eredmények (decimálisan)
Pbad
P_G3_given_good