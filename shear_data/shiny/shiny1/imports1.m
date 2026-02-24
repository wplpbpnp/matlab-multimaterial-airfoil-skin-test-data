import0p15s1
import0p3s1
import0p45s1
import0p6s1
import0p75s1
import0p9s1
import1p05s1
import1p2s1

figure(2)
hold on

title('Shiny Specimen 1')
xlabel('Displacement (in)')
ylabel('Force (lb)')
legend('Location', 'southeast')
grid on
axis([0 1.2 0 120])

[m, index] = max(x1p2s1.Force);
plot(x1p2s1.Displacement(1:index), x1p2s1.Force(1:index), 'DisplayName', '1.2s1', 'Color', [0.1 0.9 0.1])

[m, index] = max(x1p05s1.Force);
plot(x1p05s1.Displacement(1:index), x1p05s1.Force(1:index), 'DisplayName', '1.05s1', 'Color', [0.2 1 0.2])

[m, index] = max(x0p9s1.Force);
plot(x0p9s1.Displacement(1:index), x0p9s1.Force(1:index), 'DisplayName', '0.9s1', 'Color', [0.3 1 0.3])

[m, index] = max(x0p75s1.Force);
plot(x0p75s1.Displacement(1:index), x0p75s1.Force(1:index), 'DisplayName', '0.75s1', 'Color', [0.4 1 0.4])

[m, index] = max(x0p6s1.Force);
plot(x0p6s1.Displacement(1:index), x0p6s1.Force(1:index), 'DisplayName', '0.6s1', 'Color', [0.5 1 0.5])

[m, index] = max(x0p45s1.Force);
plot(x0p45s1.Displacement(1:index), x0p45s1.Force(1:index), 'DisplayName', '0.45s1', 'Color', [0.6 1 0.6])

[m, index] = max(x0p3s1.Force);
plot(x0p3s1.Displacement(1:index), x0p3s1.Force(1:index), 'DisplayName', '0.3s1', 'Color', [0.7 1 0.7])

[m, index] = max(x0p15s1.Force);
plot(x0p15s1.Displacement(1:index), x0p15s1.Force(1:index), 'DisplayName', '0.15s1', 'Color', [0.8 1 0.8])

s1_fit = polyfit(x1p2s1.Displacement, x1p2s1.Force, 3)
fity = polyval(s1_fit, x1p2s1.Displacement);
plot(x1p2s1.Displacement, fity, 'k', 'LineWidth', 1.5, 'DisplayName', 'Fit for 1.2d1');

in_to_m = 1/39.37;
lb_to_N = 4.45/1;

K_1 = s1_fit(3) * lb_to_N / in_to_m;

W = 1 * in_to_m;
A = 1.5 * 1.5 * in_to_m * in_to_m * 2;

G = K_1 * W / A



