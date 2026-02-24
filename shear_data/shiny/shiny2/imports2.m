import0p15s2
import0p3s2
import0p45s2
import0p6s2
import0p75s2

figure(2)
hold on

title('Shiny Specimen 2')
xlabel('Displacement (in)')
ylabel('Force (lb)')
legend('Location', 'southeast')
grid on
axis([0 1.2 0 120])

[m, index] = max(x0p75s2.Force);
plot(x0p75s2.Displacement(1:index), x0p75s2.Force(1:index), 'DisplayName', '0.75s2', 'Color', [0.1 0.1 0.9])

[m, index] = max(x0p6s2.Force);
plot(x0p6s2.Displacement(1:index), x0p6s2.Force(1:index), 'DisplayName', '0.6s2', 'Color', [0.2 0.2 1])

[m, index] = max(x0p45s2.Force);
plot(x0p45s2.Displacement(1:index), x0p45s2.Force(1:index), 'DisplayName', '0.45s2', 'Color', [0.3 0.3 1])

[m, index] = max(x0p3s2.Force);
plot(x0p3s2.Displacement(1:index), x0p3s2.Force(1:index), 'DisplayName', '0.3s2', 'Color', [0.4 0.4 1])

[m, index] = max(x0p15s2.Force);
plot(x0p15s2.Displacement(1:index), x0p15s2.Force(1:index), 'DisplayName', '0.15s2', 'Color', [0.5 0.5 1])





