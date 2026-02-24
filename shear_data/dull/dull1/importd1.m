import0p15d1
import0p3d1
import0p45d1
import0p6d1
import0p75d1
import0p9d1
import1p05d1
import1p2d1

figure(1)
hold on

title('Dull Specimen 1')
xlabel('Displacement (in)')
ylabel('Force (lb)')
legend('Location', 'southeast')
grid on
axis([0 1.2 0 120])

[m, index] = max(x1p2d1.Force);
plot(x1p2d1.Displacement(1:index), x1p2d1.Force(1:index), 'DisplayName', '1.2d1', 'Color', [0.1 0.9 0.1])

[m, index] = max(x1p05d1.Force);
plot(x1p05d1.Displacement(1:index), x1p05d1.Force(1:index), 'DisplayName', '1.05d1', 'Color', [0.2 1 0.2])

[m, index] = max(x0p9d1.Force);
plot(x0p9d1.Displacement(1:index), x0p9d1.Force(1:index), 'DisplayName', '0.9d1', 'Color', [0.3 1 0.3])

[m, index] = max(x0p75d1.Force);
plot(x0p75d1.Displacement(1:index), x0p75d1.Force(1:index), 'DisplayName', '0.75d1', 'Color', [0.4 1 0.4])

[m, index] = max(x0p6d1.Force);
plot(x0p6d1.Displacement(1:index), x0p6d1.Force(1:index), 'DisplayName', '0.6d1', 'Color', [0.5 1 0.5])

[m, index] = max(x0p45d1.Force);
plot(x0p45d1.Displacement(1:index), x0p45d1.Force(1:index), 'DisplayName', '0.45d1', 'Color', [0.6 1 0.6])

[m, index] = max(x0p3d1.Force);
plot(x0p3d1.Displacement(1:index), x0p3d1.Force(1:index), 'DisplayName', '0.3d1', 'Color', [0.7 1 0.7])

[m, index] = max(x0p15d1.Force);
plot(x0p15d1.Displacement(1:index), x0p15d1.Force(1:index), 'DisplayName', '0.15d1', 'Color', [0.8 1 0.8])

d1_fit = polyfit(x1p2d1.Displacement, x1p2d1.Force, 3)
fity = polyval(d1_fit, x1p2d1.Displacement);
plot(x1p2d1.Displacement, fity, 'k', 'LineWidth', 1.5, 'DisplayName', 'Fit for 1.2d1', 'Color', [0 0 0]);

in_to_m = 1/39.37;
lb_to_N = 4.45/1;

d1_fit(3)

d1_fit(3) * 1 / (1.5 * 1.5)

K_1 = d1_fit(3) * lb_to_N / in_to_m

W = 1 * in_to_m
A = 1.5 * 1.5 * in_to_m * in_to_m * 2

G = K_1 * W / A



