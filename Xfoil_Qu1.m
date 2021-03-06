clear
clc
clf

path = sprintf('Data/ACA-Data-1');

%% part i

% open files
% inviscid
file = sprintf('%s/Qu1_Cp_invisc.txt',path);
fid = fopen(file);
data = textscan(fid, '%f %f %f');
fclose(fid);
invscid_cp = cell2mat(data); 

% viscous
file = sprintf('%s/Qu1_Cp_visc.txt',path);
fid = fopen(file);
data = textscan(fid, '%f %f %f');
fclose(fid);
viscous_cp = cell2mat(data); 

%-{
plot(invscid_cp(:,1),-invscid_cp(:,3),'r--' ,'linewidth', 1.5)
hold on
plot(viscous_cp(:,1),-viscous_cp(:,3),'b-' ,'linewidth', 1.5)
title('Pressure coefficient vs $x/c$','interpreter','latex','fontsize', 28)
xlabel('$x/c$','interpreter','latex','fontsize', 28)
ylabel('-$C_P$', 'interpreter','latex','fontsize', 28)
leg= legend('Viscous flow', 'Inviscid flow');
set(gca, 'fontsize', 18)
set(leg,'Interpreter','latex','fontsize', 20, 'location', 'northeast');
grid on
%}
%% part ii 

% open files
% skin friction
%top 
file = sprintf('%s/Qu1_Cf_top.txt',path);
fid = fopen(file);
data = textscan(fid, '%f %f');
fclose(fid);
cf_t = cell2mat(data); 

%bottom 
file = sprintf('%s/Qu1_Cf_bot.txt',path);
fid = fopen(file);
data = textscan(fid, '%f %f');
fclose(fid);
cf_b = cell2mat(data); 

%{
plot(cf_t(:,1),cf_t(:,2) ,'linewidth', 1.5)
hold on 
plot(cf_b(:,1),cf_b(:,2), 'r--' ,'linewidth', 1.5)
title('Skin friction coefficient vs $x/c$','interpreter','latex','fontsize', 28)
xlabel('$x/c$','interpreter','latex','fontsize', 28)
ylabel('Skin friction coefficient $C_f$', 'interpreter','latex','fontsize', 28)
leg= legend('Top surface', 'Bottom surface');
set(gca, 'fontsize', 18)
set(leg,'Interpreter','latex','fontsize', 20, 'location', 'northeast');
grid on
%}


%% part iii

% open files
% theta 
% top 
file = sprintf('%s/Qu1_theta_top.txt',path);
fid = fopen(file);
data = textscan(fid, '%f %f');
fclose(fid);
theta_t = cell2mat(data); 

% bottom
file = sprintf('%s/Qu1_theta_bottom.txt',path);
fid = fopen(file);
data = textscan(fid, '%f %f');
fclose(fid);
theta_b = cell2mat(data); 

% delta
% top 
file = sprintf('%s/Qu1_delta_top.txt',path);
fid = fopen(file);
data = textscan(fid, '%f %f');
fclose(fid);
delta_t = cell2mat(data); 

% bottom
file = sprintf('%s/Qu1_delta_bottom.txt',path);
fid = fopen(file);
data = textscan(fid, '%f %f');
fclose(fid);
delta_b = cell2mat(data); 

%{
plot(theta_t(:,1),theta_t(:,2), 'b-' ,'linewidth', 1.5)
hold on 
plot(theta_b(:,1),theta_b(:,2), 'r--' ,'linewidth', 1.5)
title('Momentum thickness vs $x$','interpreter','latex','fontsize', 28)
xlabel('$x$','interpreter','latex','fontsize', 28)
ylabel('Momentum thickness $\theta$', 'interpreter','latex','fontsize', 28)
leg= legend('Top surface', 'Bottom surface');
set(gca, 'fontsize', 18)
set(leg,'Interpreter','latex','fontsize', 20, 'location', 'northeast');
grid on
%}

%{
plot(delta_t(:,1),delta_t(:,2),'b-' ,'linewidth', 1.5)
hold on 
plot(delta_b(:,1),delta_b(:,2), 'r--' ,'linewidth', 1.5)
title('Displacement thickness vs $x$','interpreter','latex','fontsize', 28)
xlabel('$x$','interpreter','latex','fontsize', 28)
ylabel('Displacement thickness $\delta\ast$', 'interpreter','latex','fontsize', 28)
leg= legend('Top surface', 'Bottom surface');
set(gca, 'fontsize', 18)
set(leg,'Interpreter','latex','fontsize', 20, 'location', 'northeast');
grid on
%}



