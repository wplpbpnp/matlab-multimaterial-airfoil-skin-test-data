run('.\dull\dull1\importd1')
run('.\dull\dull2\importd2')
run('.\dull\dull3\importd3')

d1_fit = polyfit(x1p2d1.Displacement, x1p2d1.Force, 3)
fity = polyval(d1_fit, x1p2d1.Displacement);
plot(x1p2d1.Displacement, fity, 'k', 'LineWidth', 1.5, 'DisplayName', 'Fit for 1.2d1', 'Color', [0 0 0]);

run('.\shiny\shiny1\imports1')
run('.\shiny\shiny2\imports2')
run('.\shiny\shiny3\imports3')

s1_fit = polyfit(x1p2s1.Displacement, x1p2s1.Force, 3)
fity = polyval(s1_fit, x1p2s1.Displacement);
plot(x1p2s1.Displacement, fity, 'k', 'LineWidth', 1.5, 'DisplayName', 'Fit for 1.2d1');