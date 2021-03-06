clear
clc
clf

%% load data
% Xfoil

path = sprintf('Data/ACA-Data-1/Clpolar.txt');
fid = fopen(path);
data = textscan(fid, '%f %f %f %f %f %f %f');
fclose(fid);
data = cell2mat(data); 
% only keep alpha (1), Cl (2), Cd (3) 
alpha = data(:,1);
cl = data(:,2);
cd = data(:,3);
L_D = cl ./ cd;

% experiment 
path = sprintf('Data/ACA-Data-1/polar_exp.txt');
fid = fopen(path);
data = textscan(fid, '%f %f %f');
fclose(fid);
data = cell2mat(data); 
% only keep alpha (1), Cl (2), Cd (3) 
alpha_exp = data(:,1);
cl_exp = data(:,2);
cd_exp = data(:,3);
L_D_exp = cl_exp ./ cd_exp;


%% plot data
% part i - cl vs cd 
%{
plot(cd,cl,'b-' ,'linewidth', 1.5)
hold on
plot(cd_exp,cl_exp,'r--' ,'linewidth', 1.5)
title('Lift coefficient vs drag coefficient','interpreter','latex','fontsize', 28)
xlabel('$C_D$','interpreter','latex','fontsize', 28)
ylabel('$C_L$', 'interpreter','latex','fontsize', 28)
leg= legend('X-foil', 'Experimental');
set(gca, 'fontsize', 18)
set(leg,'Interpreter','latex','fontsize', 20, 'location', 'northeast');
grid on
hold off
%}
% part ii - cl vs alpha
%{
plot(alpha,cl,'b-' ,'linewidth', 1.5)
hold on
plot(alpha_exp,cl_exp,'r--' ,'linewidth', 1.5)
title('Lift coefficient vs incidence','interpreter','latex','fontsize', 28)
xlabel('$\alpha$','interpreter','latex','fontsize', 28)
ylabel('$C_L$', 'interpreter','latex','fontsize', 28)
leg= legend('X-foil', 'Experimental');
set(gca, 'fontsize', 18)
set(leg,'Interpreter','latex','fontsize', 20, 'location', 'northeast');grid on
%}
% part iii - L/D vs alpha
%{
plot(alpha,L_D,'b-' ,'linewidth', 1.5)
hold on
plot(alpha_exp,L_D_exp,'r--' ,'linewidth', 1.5)
title('Lift-to-drag ratio vs incidence','interpreter','latex','fontsize', 28)
xlabel('$\alpha$','interpreter','latex','fontsize', 28)
ylabel('$L/D$', 'interpreter','latex','fontsize', 28)
leg= legend('X-foil', 'Experimental');
set(gca, 'fontsize', 18)
set(leg,'Interpreter','latex','fontsize', 20, 'location', 'northeast');grid on
%}


