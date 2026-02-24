import0p15d3
import0p3d3
import0p45d3
import0p6d3
import0p75d3

figure(1)
hold on

title('Normal Shear Specimen')
xlabel('Displacement (in)')
ylabel('Force (lb)')
legend('Location', 'southeast')
grid on
axis([0 1.2 0 120])

[m, index] = max(x0p75d3.Force);
plot(x0p75d3.Displacement(1:index), x0p75d3.Force(1:index), 'DisplayName', '0.75d3', 'Color', [0.9 0.1 0.1])

[m, index] = max(x0p6d3.Force);
plot(x0p6d3.Displacement(1:index), x0p6d3.Force(1:index), 'DisplayName', '0.6d3', 'Color', [1 0.2 0.2])

[m, index] = max(x0p45d3.Force);
plot(x0p45d3.Displacement(1:index), x0p45d3.Force(1:index), 'DisplayName', '0.45d3', 'Color', [1 0.3 0.3])

[m, index] = max(x0p3d3.Force);
plot(x0p3d3.Displacement(1:index), x0p3d3.Force(1:index), 'DisplayName', '0.3d3', 'Color', [1 0.4 0.4])

[m, index] = max(x0p15d3.Force);
plot(x0p15d3.Displacement(1:index), x0p15d3.Force(1:index), 'DisplayName', '0.15d3', 'Color', [1 0.5 0.5])

text(0.1, 110, 'Specimen 1', 'Color', 'green', 'FontSize', 14);
text(0.1, 100, 'Specimen 2', 'Color', 'blue', 'FontSize', 14);
text(0.1, 90, 'Specimen 3', 'Color', 'red', 'FontSize', 14);



