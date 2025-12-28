mu = 7;              % átlag (perc)
lambda = 1/mu;       % exponenciális ráta

% ez lesz az érték, de a lambda minusz * t van az e-n
% pl: e^(-1/7)*10
lambda
t = 10;              % barát érkezése (perc)
P = exp(-lambda*t)   % P(T > t)
