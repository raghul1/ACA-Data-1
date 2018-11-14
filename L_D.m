clear
clc
clf


%% part i

% open files
% AVL

path = sprintf('Data/ACA-Data-1/L_D_data.txt');
fid = fopen(path);
data = textscan(fid, '%f %f %f');
fclose(fid);
data = cell2mat(data); 

alpha = data(:,1);
cl = data(:,2);
cd = data(:,3);

cl_cd = cl./cd; 

plot(alpha,cl_cd,'b-' ,'linewidth', 1.5)
title('Lift-to-drag ratio vs incidence','interpreter','latex','fontsize', 28)
xlabel('$L_D$','interpreter','latex','fontsize', 28)
ylabel('$\alpha$', 'interpreter','latex','fontsize', 28)
set(gca, 'fontsize', 18)
hold off
