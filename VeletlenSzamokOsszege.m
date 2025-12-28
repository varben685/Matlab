A = [7 2 5 10];
B = [-8 3 -7 -5];

S = A.' + B
good = sum(S(:)>=0);

P = good/numel(S)
rats(P)