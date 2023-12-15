clear; clc;

% 0.01 = 1E-2
% 0.0001 = 1E-4

puleniIntervalu(@log, 0.1, 1, 1E-15)

funkce = @(x) x.^2 + log10(x) - 7;
puleniIntervalu(funkce, 0.1, 10, 1E-5)

% format long - zaklínadlo

function x = puleniIntervalu(f, a, b, eps)
    if (f(a) * f(b) > 0 || eps <= 0)
        x = NaN;
        return
    end
    while (abs(b-a) > eps)
        s = (a + b) / 2;
        %if (s == a || s == b)
            %x = NaN
            %return
        %end
        %if (sign(f(s)) == sign(f(b))) % zacykli se, proto podminka pred
        if (f(s) * f(b) > 0) % pokud maji stejna znamenka
            % vyhod pravou pulku
            b = s;
        else
            % vyhod levou pulku
            a = s;
        end
    end
    x = (a + b) / 2;
end

%function y = funkce(x)
%    y = x.^2 + log10(x) - 7;
%end