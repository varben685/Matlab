S0 = 100;
m = [1.3 0.7 0.8];        % éves szorzók

E1 = mean(m);            % egyéves várható szorzó
E2 = S0 * E1^2;          % két év múlva várható ár

E2
