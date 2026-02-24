import0p15d2
import0p3d2
import0p45d2
import0p6d2
import0p75d2

figure(1)
hold on

title('Dull Specimen 2')
xlabel('Displacement (in)')
ylabel('Force (lb)')
legend('Location', 'southeast')
grid on
axis([0 1.2 0 120])

[m, index] = max(x0p75d2.Force);
plot(x0p75d2.Displacement(1:index), x0p75d2.Force(1:index), 'DisplayName', '0.75d2', 'Color', [0.1 0.1 0.9])

[m, index] = max(x0p6d2.Force);
plot(x0p6d2.Displacement(1:index), x0p6d2.Force(1:index), 'DisplayName', '0.6d2', 'Color', [0.2 0.2 1])

[m, index] = max(x0p45d2.Force);
plot(x0p45d2.Displacement(1:index), x0p45d2.Force(1:index), 'DisplayName', '0.45d2', 'Color', [0.3 0.3 1])

[m, index] = max(x0p3d2.Force);
plot(x0p3d2.Displacement(1:index), x0p3d2.Force(1:index), 'DisplayName', '0.3d2', 'Color', [0.4 0.4 1])

[m, index] = max(x0p15d2.Force);
plot(x0p15d2.Displacement(1:index), x0p15d2.Force(1:index), 'DisplayName', '0.15d2', 'Color', [0.5 0.5 1])





