function y_interp = P_vandermonde (coef, x_interp)
	% P_vandermonde(x) = a0 + a1 * x + a2 * x^2 + ... + an * x^n
	% coef = [a0, a1, a2, ..., an]'
	% y_interp(i) = P_vandermonde(x_interp(i)), i = 0 : length(x_interp) - 1

  y_interp = zeros(length(x_interp), 1);
  ordinul_pol = length(coef) - 1;
  for i = 1:length(x_interp)
        y_interp(i) = sum(coef .* x_interp(i).^(0:ordinul_pol)');
  endfor
end
