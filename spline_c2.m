function coef = spline_c2(x, y)
    n = length(x) - 1;  % number of splines needed
    % 4*n ecuatii cu 4*n necunoscute
    A = zeros(4 * n, 4 * n);
    B = zeros(4 * n, 1);

    % Crearea ecuatiilor pt fiecare spline
    eq = 1;
    for i = 1 : n
        h = x (i + 1) - x(i);

        % inceputul intervalului
        A(eq, (i - 1) * 4 + 1 : (i - 1) * 4 + 4) = [1, 0, 0, 0];
        B(eq) = y(i);
        eq = eq + 1;

        % finalul intervalului
        A(eq, (i - 1) * 4 + 1 : (i - 1) * 4 + 4) = [1, h, h^2, h^3];
        B(eq) = y(i + 1);
        eq = eq + 1;

        if i < n
            % ct primei derivate
            A(eq, (i - 1) * 4 + 1 : (i - 1) * 4 + 4) = [0, 1, 2*h, 3*h^2];
            A(eq, i * 4 + 1 : i * 4 + 4) = [0, -1, 0, 0];
            eq = eq + 1;

            % ct celei de-a doua derivate
            A(eq, (i - 1) * 4 + 1 : (i - 1) * 4 + 4) = [0, 0, 2, 6*h];
            A(eq, i * 4 + 1 : i * 4 + 4) = [0, 0, -2, 0];
            eq = eq + 1;
        end
    end

    % conditiile spline-ului natural
    A(eq, 1 : 4) = [0, 0, 2, 0];  % derivata a2-a in x(1)
    eq = eq + 1;
    A(eq, end - 3 : end) = [0, 0, 2, 6 * (x(end) - x(end - 1))];  % derivata a 2-a la final x(end)

    % Rezolvarea sistemului
    solution = A \ B;
    %resize pentru a indeplini cerinta
    coef = reshape(solution, 1, []);
end
