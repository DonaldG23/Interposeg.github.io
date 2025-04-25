% INTERPOLACIÓN LINEAL Y SPLINE CÚBICO

% Datos originales
x = [0, 1, 2, 3, 4];
y = [0, 1, 0.5, 2, 1.5];

% Crear vector de puntos donde se desea interpolar (más densidad)
xq = linspace(min(x), max(x), 100);

% Interpolación lineal y spline cúbico
y_lineal = interp1(x, y, xq, 'linear');
y_spline = interp1(x, y, xq, 'spline');

% Imprimir datos interpolados en consola
fprintf('x\tLineal\tSpline\n');
for i = 1:length(xq)
    fprintf('%.2f\t%.4f\t%.4f\n', xq(i), y_lineal(i), y_spline(i));
end

% Gráfica
figure;
plot(x, y, 'ko', 'MarkerFaceColor', 'k', 'MarkerSize', 8); hold on;
plot(xq, y_lineal, 'r--', 'LineWidth', 1.5);
plot(xq, y_spline, 'b-', 'LineWidth', 2);

% Detalles del gráfico
legend('Puntos originales', 'Interpolación Lineal', 'Spline Cúbico', 'Location', 'Best');
title('Interpolación: Lineal vs. Spline Cúbico');
xlabel('x');
ylabel('y');
grid on;
