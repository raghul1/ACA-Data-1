clear
clc
clf

Cl = [0.35130, 0.35393, 0.35412, 0.35414, 0.35420, 0.35422, 0.35423];

Cd = [0.02324, 0.02535, 0.02500, 0.02544, 0.02491, 0.02475, 0.02453]; 

Nc = 1:7; 

%plot(Nc, Cl,'linewidth', 1.5)
 plot(Nc, Cd,'linewidth', 1.5)
title('Convergence study (Ns = 4Nc)','interpreter','latex','fontsize', 28)
xlabel('$Nc$','interpreter','latex','fontsize', 28)
ylabel('Coefficient', 'interpreter','latex','fontsize', 28)
%leg= legend('$C_L$', '$C_D$');
set(gca, 'fontsize', 18)
%set(leg,'Interpreter','latex','fontsize', 20, 'location', 'north');
grid on
