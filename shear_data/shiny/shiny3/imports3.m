import0p15s3
import0p3s3
import0p45s3
import0p6s3
import0p75s3

figure(2)
hold on

title('Parallel Shear Specimen')
xlabel('Displacement (in)')
ylabel('Force (lb)')
legend('Location', 'southeast')
grid on
axis([0 1.2 0 120])

[m, index] = max(x0p75s3.Force);
plot(x0p75s3.Displacement(1:index), x0p75s3.Force(1:index), 'DisplayName', '0.75s3', 'Color', [0.9 0.1 0.1])

[m, index] = max(x0p6s3.Force);
plot(x0p6s3.Displacement(1:index), x0p6s3.Force(1:index), 'DisplayName', '0.6s3', 'Color', [1 0.2 0.2])

[m, index] = max(x0p45s3.Force);
plot(x0p45s3.Displacement(1:index), x0p45s3.Force(1:index), 'DisplayName', '0.45s3', 'Color', [1 0.3 0.3])

[m, index] = max(x0p3s3.Force);
plot(x0p3s3.Displacement(1:index), x0p3s3.Force(1:index), 'DisplayName', '0.3s3', 'Color', [1 0.4 0.4])

[m, index] = max(x0p15s3.Force);
plot(x0p15s3.Displacement(1:index), x0p15s3.Force(1:index), 'DisplayName', '0.15s3', 'Color', [1 0.5 0.5])

text(0.1, 110, 'Specimen 1', 'Color', 'green', 'FontSize', 14);
text(0.1, 100, 'Specimen 2', 'Color', 'blue', 'FontSize', 14);
text(0.1, 90, 'Specimen 3', 'Color', 'red', 'FontSize', 14);

