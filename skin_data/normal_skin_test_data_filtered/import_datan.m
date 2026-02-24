import0p25n
import0p5n
import0p75n
import1p0n
import1p25n
import1p5n
import1p75n
import2p0n
import2p25n
import2p5n

figure(2)
hold on
xlabel('Displacement (in)')
ylabel('Force (lb)')
title('Normal Strain Comparison')
grid on
axis([0 0.5 0 4])

Displacement = x2p5n.Displacement;
Force = x2p5n.Force;
plot(Displacement, Force, 'DisplayName', '2.5', 'Color', [1 0.2 0.2])

fitx = Displacement;
fity = Force;

Displacement = x2p25n.Displacement;
Force = x2p25n.Force;
plot(Displacement, Force, 'DisplayName', '2.25', 'Color', [1 0.4 0])

Displacement = x2p0n.Displacement;
Force = x2p0n.Force;
plot(Displacement, Force, 'DisplayName', '2.0', 'Color', [1 0.6 0])

Displacement = x1p75n.Displacement;
Force = x1p75n.Force;
plot(Displacement, Force, 'DisplayName', '1.75', 'Color', [1 0.8 0])

Displacement = x1p5n.Displacement;
Force = x1p5n.Force;
plot(Displacement, Force, 'DisplayName', '1.5', 'Color', [1 1 0])

Displacement = x1p25n.Displacement;
Force = x1p25n.Force;
plot(Displacement, Force, 'DisplayName', '1.25', 'Color', [0.8 1 0])

Displacement = x1p0n.Displacement;
Force = x1p0n.Force;
plot(Displacement, Force, 'DisplayName', '1.0', 'Color', [0.6 1 0])

Displacement = x0p75n.Displacement;
Force = x0p75n.Force;
plot(Displacement, Force, 'DisplayName', '0.75', 'Color', [0.4 1 0])

Displacement = x0p5n.Displacement;
Force = x0p5n.Force;
plot(Displacement, Force, 'DisplayName', '0.5', 'Color', [0.2 0.9 0])

Displacement = x0p25n.Displacement;
Force = x0p25n.Force;
plot(Displacement, Force, 'DisplayName', '0.25', 'Color', [0 0.8 0])

normal_fit = polyfit(fitx, fity, 3)
fity = polyval(normal_fit, fitx);
plot(fitx, fity, 'k', 'LineWidth', 2.5, 'DisplayName', 'Fit for 2.5');

in_to_m = 1/39.37;
lb_to_N = 4.45/1;

K_1 = normal_fit(3) * lb_to_N / in_to_m;
L = 0.5 * in_to_m;
Thickness = 0.05 * in_to_m;
W = 6.15 * in_to_m;

A = Thickness * W;

E = (K_1 * L) / A;

legend('Location', 'northwest')

% accuracy of fit

lin_x = 0:0.1:2.5;
lin_y = normal_fit(3) * lin_x + normal_fit(4);
plot(lin_x, lin_y, 'Color', [0.5 0.5 0.5], 'LineWidth', 2.5, 'DisplayName', 'Linear Fit');

vert_y = 0:0.1:20;
vert_x = (vert_y * 0) + ((4.5/100)*5);
plot(vert_x, vert_y, 'b:', 'LineWidth', 2, 'DisplayName', '4.5%'); 

text(0.025, 3.75, 'Linear Elasticity', 'Color', [0.5 0.5 0.5], 'FontSize', 14);
text(0.025, 3.5, '4.5% Strain for Skin', 'Color', 'blue', 'FontSize', 14);

E = E*8