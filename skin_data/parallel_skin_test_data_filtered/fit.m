import_datap;

k0 = p(4);
F = x2p5p.Force;
z = x2p5p.Displacement;

syms k1 k3

dJdK1 = -2*sum( ((F - k0) - (k1 .* z) - (k3.*(z.^3))) .* z) == 0;
dJdK3 = -2*sum( ((F - k0) - (k1 .* z) - (k3.*(z.^3))) .* (z.^3)) == 0;

[A, B] = equationsToMatrix([dJdK1, dJdK3], [k1, k3]);

fit_params = linsolve(A, B);

figure(99)
hold on
axis([0 2.5 0 15])

plot(z, (F - k0), 'o');

fitf = @(x) fit_params(1).*x + fit_params(2)*x.^3;
fplot(fitf);

plot(fitx, (fity - k0));