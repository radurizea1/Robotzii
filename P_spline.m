function y_interp = P_spline(coef, x, x_interp)
    % si(x)   = ai + bi(x - xi) + ci(x - xi)^2 + di(x - xi)^3, i = 1 : n
    % coef = [a0, b0, c0, d0, a1, b1, c1, d1, ..., an-1, bn-1, cn-1, dn-1]
    % x = [x0, x1, ..., xn]
    % y_interp(i) = P_spline(x_interp(i)), i = 1 : length(x_interp)

    y_interp = zeros(length(x_interp), 1);

    % nr de segmente de spline
    n = length(x) - 1;

    % luam fiecare pct din interpolare in parte
    for j = 1 : length(x_interp)
        x_val = x_interp(j);

        % verificam intre ce x(i) si x(i+1) apartine x_val
        for i = 1 : n
            if x_val >= x(i) && x_val <= x(i+1)
                a = coef(4 * i - 3);
                b = coef(4 * i - 2);
                c = coef(4 * i - 1);
                d = coef(4 * i);

                y_interp(j) = a + b * (x_val - x(i)) + c * (x_val - x(i))^2 + d * (x_val - x(i))^3;
                break; % daca este corect intervalul, se termina
            end
        end
    end
end
