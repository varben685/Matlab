A = [15 -6 20 -16 -10 -5 -5];
B = [8 -13 -9 -7 -10 0 -16];

% Összes (a,b) pár legyártása egy 7x7-es táblába
[a,b] = ndgrid(A, B);          % a és b ugyanakkora mátrixok

% 1) P(a+b<0): megszámoljuk, hány helyen igaz a feltétel
Psum = sum( (a(:) + b(:)) < 0 ) / numel(a);

% 2) P(a*b<0): negatív szorzat (ellentétes előjel)
Pprod = sum( (a(:).*b(:)) < 0 ) / numel(a);

Psum, Pprod
rats(Psum), rats(Pprod)        % törtek: 33/49 és 15/49
