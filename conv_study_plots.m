clear
clc
clf

Cl = [0.35130 0.35393 0.35411 0.35416 0.35421 0.35417 0.35407 0.35398 0.35398 0.35435 0.35395 0.35407 0.35444 0.35404 0.35456 0.35404  0.35409 0.35459];

Cd = [0.02324 0.02535 0.02509 0.02515 0.02482 0.02531 0.02673 0.02752 0.02757 0.02353 0.02794 0.02656 0.02258 0.02691 0.02221 0.02677 0.02617 0.02115];

Nc = [1:12 14 16 18 22 24 26]; 

%f{
plot(Nc, Cl,'linewidth', 1.5)
title('Lift coefficient vs chordwise discretisation','interpreter','latex','fontsize', 28)
xlabel('$Nc$','interpreter','latex','fontsize', 28)
ylabel('$C_L$', 'interpreter','latex','fontsize', 28)
set(gca, 'fontsize', 18)
grid on
%}

%{
plot(Nc, Cd,'linewidth', 1.5)
title('Drag coefficient vs chordwise discretisation','interpreter','latex','fontsize', 28)
xlabel('$Nc$','interpreter','latex','fontsize', 28)
ylabel('$C_D$', 'interpreter','latex','fontsize', 28)
set(gca, 'fontsize', 18)
grid on
%}