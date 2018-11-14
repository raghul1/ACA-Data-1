clear
clc
clf


%% part i

% open files
% AVL

path = sprintf('Data/ACA-Data-1/lift_dist.txt');
fid = fopen(path);
data = textscan(fid, '%f %f %f %f %f %f %f %f %f %f %f %f %f');
fclose(fid);
data = cell2mat(data); 

panel_no = data(:,1);
y = data(:,2);
cl = data(:,8);
cl_n = data(:,7); 
cl_c = data(:,5);
cl_c = cl_c.*0.75;
chord = data(:,3);

% experiment 

path = sprintf('Data/ACA-Data-1/liftcoeff_exp.txt');
fid = fopen(path);
data = textscan(fid, '%f %f %f');
fclose(fid);
data = cell2mat(data); 

y_exp = data(:,1)*0.75;
cl_exp = data(:,2);
cl_c_exp = data(:,3); 


%% plots
% cl 
%{
plot(y,cl,'b-' ,'linewidth', 1.5)
hold on
plot(y_exp,cl_exp,'r--' ,'linewidth', 1.5)
title('Sectional lift coefficient vs spanwise coordinate','interpreter','latex','fontsize', 28)
xlabel('$y$','interpreter','latex','fontsize', 28)
ylabel('$C_L$', 'interpreter','latex','fontsize', 28)
leg= legend('X-foil', 'Experimental');
set(gca, 'fontsize', 18)
set(leg,'Interpreter','latex','fontsize', 20, 'location', 'northeast');grid on
hold off
%}

% cl_c
%-{
plot(y,cl_c,'b-' ,'linewidth', 1.5)
hold on
plot(y_exp,cl_c_exp,'r--' ,'linewidth', 1.5)
title('Normalised lift coefficient vs spanwise coordinate','interpreter','latex','fontsize', 28)
xlabel('$y$','interpreter','latex','fontsize', 28)
ylabel('$C_Lc$', 'interpreter','latex','fontsize', 28)
leg= legend('X-foil', 'Experimental');
set(gca, 'fontsize', 18)
set(leg,'Interpreter','latex','fontsize', 20, 'location', 'northeast');grid on
hold off
%}