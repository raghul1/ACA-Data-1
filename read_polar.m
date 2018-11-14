clear
clc
clf

fid = fopen('\\icnas1.cc.ic.ac.uk\rr3315\ACA\Coursework1\naca1.txt');
C = textscan(fid, '%f %f %f %f %f %f %f');
fclose(fid);

C = cell2mat(C);
Cl = C(:,2); Cd = C(:,3);

plot(Cd, Cl,'b','linewidth', 1.5)
hold on
Cl_s = [-1.179 0 1.179];
Cd_s = [0.01722 0.0054 0.01722];
% Cl_s = [-0.6267 0 0.6267];
% Cd_s = [0.00912 0.0054 0.00912];

% QUADRATIC IN CL => ROTATE GRAPH TO FIT DATA
p = polyfit(Cl_s, Cd_s, 2);

x = -1.4:0.05:1.4;
y = polyval(p, x);

plot(y,x,'r','linewidth',1.5)
hold off

l = legend('X-foil data', 'polynomial fit');
l.FontSize = 20;
xlabel('Cd', 'FontSize', 20)
ylabel('Cl', 'FontSize', 20)