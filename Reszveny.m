% pl -10 = 0.9, -30 = 0.7, +10 = 1.1, mindhárom 1/3 valséggel, ezért
% összeadjuk öket, majd osztjuk.
S0 = 100;
m = [0.9 0.7 1,1];

% Sima átlag számítás
E1 = mean(m);

%Ahány év annyival kell hatványozni.
E2 = S0*E1^2