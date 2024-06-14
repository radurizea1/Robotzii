function coef = vandermonde(x, y)
    % x = [x0, x1, ..., xn]'
    % y = [y0, y1, ..., yn]'
    % coef = [a0, a1, a2, ..., an]'
    n = length(x);
    %Calculate the Vandermonde coefficients
    matricea_vandermonde = zeros(n,n);
    for i = 1 : n
        matricea_vandermonde(:, i) = x.^(i - 1);
    endfor
    coef = matricea_vandermonde \ y;
endfunction
