import0p25p
import0p5p
import0p75p
import1p0p
import1p25p
import1p5p
import1p75p
import2p0p
import2p25p
import2p5p

figure(1)
hold on
xlabel('Displacement (in)')
ylabel('Force (lb)')
title('Print Direction Parallel to Ribs')
grid on
axis([0 2.5 0 15])

Displacement = x2p5p.Displacement;
Force = x2p5p.Force;
plot(Displacement, Force, 'DisplayName', '2.5', 'Color', [1 0.2 0.2])

fitx = Displacement;
fity = Force;

Displacement = x2p25p.Displacement;
Force = x2p25p.Force;
plot(Displacement, Force, 'DisplayName', '2.25', 'Color', [1 0.4 0])

Displacement = x2p0p.Displacement;
Force = x2p0p.Force;
plot(Displacement, Force, 'DisplayName', '2.0', 'Color', [1 0.6 0])

Displacement = x1p75p.Displacement;
Force = x1p75p.Force;
plot(Displacement, Force, 'DisplayName', '1.75', 'Color', [1 0.8 0])

Displacement = x1p5p.Displacement;
Force = x1p5p.Force;
plot(Displacement, Force, 'DisplayName', '1.5', 'Color', [1 1 0])

Displacement = x1p25p.Displacement;
Force = x1p25p.Force;
plot(Displacement, Force, 'DisplayName', '1.25', 'Color', [0.8 1 0])

Displacement = x1p0p.Displacement;
Force = x1p0p.Force;
plot(Displacement, Force, 'DisplayName', '1.0', 'Color', [0.6 1 0])

Displacement = x0p75p.Displacement;
Force = x0p75p.Force;
plot(Displacement, Force, 'DisplayName', '0.75', 'Color', [0.4 1 0])

Displacement = x0p5p.Displacement;
Force = x0p5p.Force;
plot(Displacement, Force, 'DisplayName', '0.5', 'Color', [0.2 0.9 0])

Displacement = x0p25p.Displacement;
Force = x0p25p.Force;
plot(Displacement, Force, 'DisplayName', '0.25', 'Color', [0 0.8 0])

parallel_fit = polyfit(fitx, fity, 3)
fity = polyval(parallel_fit, fitx);
plot(fitx, fity, 'k', 'LineWidth', 2.5, 'DisplayName', 'Fit for 2.5');

in_to_m = 1/39.37;
lb_to_N = 4.45/1;

K_1 = parallel_fit(3) * lb_to_N / in_to_m;
L = 0.5 * in_to_m;
T = 0.05 * in_to_m;
W = 6.15 * in_to_m;

A = T * W;

E = (K_1 * L) / A;

E = E*8

legend('Location', 'northwest')

%testing error calculation for Young's Modulus%
testfit = NonLinearModel.fit(fitx, fity, 'y ~ b0 + b1*x1 + b2*x1^2 + b3*x1^3', [1, 1, 1, 1]);
K1 = testfit.Coefficients{2, 1} * lb_to_N / in_to_m;
sig_K1 = testfit.Coefficients{2, 2} * lb_to_N / in_to_m;

dEdK = L/(T*W);
dEdL = K1/(T*W);
dEdT = -(K1 * L)/W * (1/(T^2));
dEdW = -(K1 * L)/T * (1/(W^2));

sig_L = 0.005 * in_to_m;
sig_T = 0.005 * in_to_m;
sig_W = 0.005 * in_to_m;

E = 8*(K1 * L) / (T * W)
sig_E = sqrt( (dEdK * sig_K1)^2 + (dEdL * sig_L)^2 + (dEdT * sig_T)^2 + (dEdW * sig_W)^2 )

upperE = E + sig_E
lowerE = E - sig_E

% printing equation on plot
% eq_string = sprintf('y = %fx^3 + %fx^2 + %fx + %f', parallel_fit(1), parallel_fit(2), parallel_fit(3), parallel_fit(4));
% text(0, 0, eq_string);
