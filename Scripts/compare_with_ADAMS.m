lim_x=[0,5];

% Recover local frames from q
F1=Q( 1: 3,:);
F2=Q( 4: 6,:);
F3=Q( 7: 9,:);
F4=Q(10:12,:);
F5=Q(13:15,:);
F6=Q(16:18,:);
F7=Q(19:21,:);
F8=Q(22:24,:);

    
% Compute point Position
O=O_0*ones(1,length(T));
H=H_0*ones(1,length(T));
N=N_0*ones(1,length(T));
M=F6(1:2,:);
G=F8(1:2,:);
D=F2(1:2,:);
C=F4(1:2,:);
A=F3(1:2,:);
    
Aa=zeros(size(A));
Da=zeros(size(D));
Ma=zeros(size(M));
Oa=zeros(size(O));
Ha=zeros(size(H));
Na=zeros(size(N));
Ca=zeros(size(C));
Ga=zeros(size(G));

S=importdata('./ADAMS/Tab/Pos_x.tab');
ssssss=S.data;
Aa(1,:)=ssssss(:, 2)';
Da(1,:)=ssssss(:, 3)';
Ma(1,:)=ssssss(:, 4)';
Oa(1,:)=ssssss(:, 5)';
Ha(1,:)=ssssss(:, 6)';
Na(1,:)=ssssss(:, 7)';
Ca(1,:)=ssssss(:, 8)';
Ga(1,:)=ssssss(:, 9)';

S=importdata('./ADAMS/Tab/Pos_y.tab');
ssssss=S.data;
Aa(2,:)=ssssss(:, 2)';
Da(2,:)=ssssss(:, 3)';
Ma(2,:)=ssssss(:, 4)';
Oa(2,:)=ssssss(:, 5)';
Ha(2,:)=ssssss(:, 6)';
Na(2,:)=ssssss(:, 7)';
Ca(2,:)=ssssss(:, 8)';
Ga(2,:)=ssssss(:, 9)';

err_A=A-Aa;
err_D=D-Da;
err_M=M-Ma;
err_O=O-Oa;
err_H=H-Ha;
err_N=N-Na;
err_C=C-Ca;
err_G=G-Ga;

%% Compute Velocity ---------------------------------------------------------------------------------------------------
% Recover local frames from q
F1_d=Q_d( 1: 3,:);
F2_d=Q_d( 4: 6,:);
F3_d=Q_d( 7: 9,:);
F4_d=Q_d(10:12,:);
F5_d=Q_d(13:15,:);
F6_d=Q_d(16:18,:);
F7_d=Q_d(19:21,:);
F8_d=Q_d(22:24,:);

% Compute point velocity
O_d=zeros(2,length(T));
H_d=zeros(2,length(T));
N_d=zeros(2,length(T));
M_d=F6_d(1:2,:);
G_d=F8_d(1:2,:);
D_d=F2_d(1:2,:);
C_d=F4_d(1:2,:);
A_d=F3_d(1:2,:);

Aa_d=zeros(size(A_d));
Da_d=zeros(size(D_d));
Ma_d=zeros(size(M_d));
Oa_d=zeros(size(O_d));
Ha_d=zeros(size(H_d));
Na_d=zeros(size(N_d));
Ca_d=zeros(size(C_d));
Ga_d=zeros(size(G_d));

S=importdata('./ADAMS/Tab/Vel_x.tab');
ssssss=S.data;
Aa_d(1,:)=ssssss(:, 2)';
Da_d(1,:)=ssssss(:, 3)';
Ma_d(1,:)=ssssss(:, 4)';
Oa_d(1,:)=ssssss(:, 5)';
Ha_d(1,:)=ssssss(:, 6)';
Na_d(1,:)=ssssss(:, 7)';
Ca_d(1,:)=ssssss(:, 8)';
Ga_d(1,:)=ssssss(:, 9)';

S=importdata('./ADAMS/Tab/Vel_y.tab');
ssssss=S.data;
Aa_d(2,:)=ssssss(:, 2)';
Da_d(2,:)=ssssss(:, 3)';
Ma_d(2,:)=ssssss(:, 4)';
Oa_d(2,:)=ssssss(:, 5)';
Ha_d(2,:)=ssssss(:, 6)';
Na_d(2,:)=ssssss(:, 7)';
Ca_d(2,:)=ssssss(:, 8)';
Ga_d(2,:)=ssssss(:, 9)';

err_Ad=A_d-Aa_d;
err_Dd=D_d-Da_d;
err_Md=M_d-Ma_d;
err_Od=O_d-Oa_d;
err_Hd=H_d-Ha_d;
err_Nd=N_d-Na_d;
err_Cd=C_d-Ca_d;
err_Gd=G_d-Ga_d;

%% Compute Acceleration -----------------------------------------------------------------------------------------------
% Recover local frames from q
F1_dd=Q_dd( 1: 3,:);
F2_dd=Q_dd( 4: 6,:);
F3_dd=Q_dd( 7: 9,:);
F4_dd=Q_dd(10:12,:);
F5_dd=Q_dd(13:15,:);
F6_dd=Q_dd(16:18,:);
F7_dd=Q_dd(19:21,:);
F8_dd=Q_dd(22:24,:);

% Compute point acc
O_dd=zeros(2,length(T));
H_dd=zeros(2,length(T));
N_dd=zeros(2,length(T));
M_dd=F6_dd(1:2,:);
G_dd=F8_dd(1:2,:);
D_dd=F2_dd(1:2,:);
C_dd=F4_dd(1:2,:);
A_dd=F3_dd(1:2,:);

Aa_dd=zeros(size(A_dd));
Da_dd=zeros(size(D_dd));
Ma_dd=zeros(size(M_dd));
Oa_dd=zeros(size(O_dd));
Ha_dd=zeros(size(H_dd));
Na_dd=zeros(size(N_dd));
Ca_dd=zeros(size(C_dd));
Ga_dd=zeros(size(G_dd));

S=importdata('./ADAMS/Tab/Acc_x.tab');
ssssss=S.data;
Aa_dd(1,:)=ssssss(:, 2)';
Da_dd(1,:)=ssssss(:, 3)';
Ma_dd(1,:)=ssssss(:, 4)';
Oa_dd(1,:)=ssssss(:, 5)';
Ha_dd(1,:)=ssssss(:, 6)';
Na_dd(1,:)=ssssss(:, 7)';
Ca_dd(1,:)=ssssss(:, 8)';
Ga_dd(1,:)=ssssss(:, 9)';

S=importdata('./ADAMS/Tab/Acc_y.tab');
ssssss=S.data;
Aa_dd(2,:)=ssssss(:, 2)';
Da_dd(2,:)=ssssss(:, 3)';
Ma_dd(2,:)=ssssss(:, 4)';
Oa_dd(2,:)=ssssss(:, 5)';
Ha_dd(2,:)=ssssss(:, 6)';
Na_dd(2,:)=ssssss(:, 7)';
Ca_dd(2,:)=ssssss(:, 8)';
Ga_dd(2,:)=ssssss(:, 9)';

err_Add=A_dd-Aa_dd;
err_Ddd=D_dd-Da_dd;
err_Mdd=M_dd-Ma_dd;
err_Odd=O_dd-Oa_dd;
err_Hdd=H_dd-Ha_dd;
err_Ndd=N_dd-Na_dd;
err_Cdd=C_dd-Ca_dd;
err_Gdd=G_dd-Ga_dd;

%% compute std -------------------------------------------------------------------------------------------------------------------------

err   =[err_A  , err_D  , err_M  , err_O  , err_H  , err_N  , err_C  , err_G  ]; 
err_d =[err_Ad , err_Dd , err_Md , err_Od , err_Hd , err_Nd , err_Cd , err_Gd ];
err_dd=[err_Add, err_Ddd, err_Mdd, err_Odd, err_Hdd, err_Ndd, err_Cdd, err_Gdd];
std_x  = std(err   (1,:));
std_y  = std(err   (2,:));
std_xd = std(err_d (1,:));
std_yd = std(err_d (2,:));
std_xdd= std(err_dd(1,:));
std_ydd= std(err_dd(2,:));

    
disp('Overall:')
disp(['std_x   = ',num2str(std_x  ),'    std_y   = ',num2str(std_y  )])
disp(['std_xd  = ',num2str(std_xd ),'    std_yd  = ',num2str(std_yd )])
disp(['std_xdd = ',num2str(std_xdd),'    std_ydd = ',num2str(std_ydd)])

disp(' ')
disp('A:');  
disp(['std_x   = ',num2str(std(err_A  (1,:))),'    std_xd  = ',num2str(std(err_Ad (1,:))),'    std_xdd = ',num2str(std(err_Add(1,:)))])
disp(['std_y   = ',num2str(std(err_A  (2,:))),'    std_yd  = ',num2str(std(err_Ad (2,:))),'    std_ydd = ',num2str(std(err_Add(2,:)))])

disp(' ')
disp('D:');
disp(['std_x   = ',num2str(std(err_D  (1,:))),'    std_xd  = ',num2str(std(err_Dd (1,:))),'    std_xdd = ',num2str(std(err_Ddd(1,:)))])
disp(['std_y   = ',num2str(std(err_D  (2,:))),'    std_yd  = ',num2str(std(err_Dd (2,:))),'    std_ydd = ',num2str(std(err_Ddd(2,:)))])

disp(' ')
disp('M:');
disp(['std_x   = ',num2str(std(err_M  (1,:))),'    std_xd  = ',num2str(std(err_Md (1,:))),'    std_xdd = ',num2str(std(err_Mdd(1,:)))])
disp(['std_y   = ',num2str(std(err_M  (2,:))),'    std_yd  = ',num2str(std(err_Md (2,:))),'    std_ydd = ',num2str(std(err_Mdd(2,:)))])

disp(' ')
disp('O:');
disp(['std_x   = ',num2str(std(err_O  (1,:))),'    std_xd  = ',num2str(std(err_Od (1,:))),'    std_xdd = ',num2str(std(err_Odd(1,:)))])
disp(['std_y   = ',num2str(std(err_O  (2,:))),'    std_yd  = ',num2str(std(err_Od (2,:))),'    std_ydd = ',num2str(std(err_Odd(2,:)))])

disp(' ')
disp('H:');
disp(['std_x   = ',num2str(std(err_H  (1,:))),'    std_xd  = ',num2str(std(err_Hd (1,:))),'    std_xdd = ',num2str(std(err_Hdd(1,:)))])
disp(['std_y   = ',num2str(std(err_H  (2,:))),'    std_yd  = ',num2str(std(err_Hd (2,:))),'    std_ydd = ',num2str(std(err_Hdd(2,:)))])

disp(' ')
disp('N:');
disp(['std_x   = ',num2str(std(err_N  (1,:))),'    std_xd  = ',num2str(std(err_Nd (1,:))),'    std_xdd = ',num2str(std(err_Ndd(1,:)))])
disp(['std_y   = ',num2str(std(err_N  (2,:))),'    std_yd  = ',num2str(std(err_Nd (2,:))),'    std_ydd = ',num2str(std(err_Ndd(2,:)))])

disp(' ')
disp('C:');
disp(['std_x   = ',num2str(std(err_C  (1,:))),'    std_xd  = ',num2str(std(err_Cd (1,:))),'    std_xdd = ',num2str(std(err_Cdd(1,:)))])
disp(['std_y   = ',num2str(std(err_C  (2,:))),'    std_yd  = ',num2str(std(err_Cd (2,:))),'    std_ydd = ',num2str(std(err_Cdd(2,:)))])

disp(' ')
disp('G:');
disp(['std_x   = ',num2str(std(err_G  (1,:))),'    std_xd  = ',num2str(std(err_Gd (1,:))),'    std_xdd = ',num2str(std(err_Gdd(1,:)))])
disp(['std_y   = ',num2str(std(err_G  (2,:))),'    std_yd  = ',num2str(std(err_Gd (2,:))),'    std_ydd = ',num2str(std(err_Gdd(2,:)))])





%% Plot errors --------------------------------------------------------------------------------------------------------
if isempty(findobj('type','figure','name','Errors'))
    figure('Name','Errors','NumberTitle','off','Color','white');
else
    clf
end

    
subplot(3,2,1);
hold on
box  on
grid on
grid minor
title(['standard deviation x = ',num2str(std_x  )],'interpreter','latex')
set(get(gca, 'YLabel'), 'String', '$x$ (m)','interpreter','latex');
%set(get(gca, 'XLabel'), 'String', 'Time (s)');
xlim(lim_x)
plot(T,err_A(1,:));
plot(T,err_D(1,:));
plot(T,err_M(1,:));
plot(T,err_O(1,:));
plot(T,err_H(1,:));
plot(T,err_N(1,:));
plot(T,err_C(1,:));
plot(T,err_G(1,:));
hold off
    
subplot(3,2,2);
hold on
box  on
grid on
grid minor
title(['standard deviation y = ',num2str(std_y  )],'interpreter','latex')
set(get(gca, 'YLabel'), 'String', '$y$ (m)','interpreter','latex');
%set(get(gca, 'XLabel'), 'String', 'Time (s)');
xlim(lim_x)
plot(T,err_A(2,:));
plot(T,err_D(2,:));
plot(T,err_M(2,:));
plot(T,err_O(2,:));
plot(T,err_H(2,:));
plot(T,err_N(2,:));
plot(T,err_C(2,:));
plot(T,err_G(2,:));
axP = get(gca,'Position');
legend({'A', 'D', 'M', 'O', 'H', 'N', 'C', 'G'},'Location','northeastoutside');
set(gca, 'Position', axP)
legend('boxoff');
hold off;

    
subplot(3,2,3);
hold on
box  on
grid on
grid minor
title(['standard deviation $\dot{x}$ = ',num2str(std_xd )],'interpreter','latex')
set(get(gca, 'YLabel'), 'String', '$\dot{x}$ (m)','interpreter','latex');
%set(get(gca, 'XLabel'), 'String', 'Time (s)');
xlim(lim_x)
plot(T,err_Ad(1,:));
plot(T,err_Dd(1,:));
plot(T,err_Md(1,:));
plot(T,err_Od(1,:));
plot(T,err_Hd(1,:));
plot(T,err_Nd(1,:));
plot(T,err_Cd(1,:));
plot(T,err_Gd(1,:));
hold off
    
subplot(3,2,4);
hold on
box  on
grid on
grid minor
title(['standard deviation $\dot{y}$ = ',num2str(std_yd )],'interpreter','latex')
set(get(gca, 'YLabel'), 'String', '$\dot{y}$ (m)','interpreter','latex');
%set(get(gca, 'XLabel'), 'String', 'Time (s)');
xlim(lim_x)
plot(T,err_Ad(2,:));
plot(T,err_Dd(2,:));
plot(T,err_Md(2,:));
plot(T,err_Od(2,:));
plot(T,err_Hd(2,:));
plot(T,err_Nd(2,:));
plot(T,err_Cd(2,:));
plot(T,err_Gd(2,:));
hold off;

subplot(3,2,5);
hold on
box  on
grid on
grid minor
title(['standard deviation $\ddot{x}$ = ',num2str(std_xdd)],'interpreter','latex')
set(get(gca, 'YLabel'), 'String', '$\ddot{x}$ (m)','interpreter','latex');
set(get(gca, 'XLabel'), 'String', 'Time (s)'       ,'interpreter','latex');
xlim(lim_x)
plot(T,err_Add(1,:));
plot(T,err_Ddd(1,:));
plot(T,err_Mdd(1,:));
plot(T,err_Odd(1,:));
plot(T,err_Hdd(1,:));
plot(T,err_Ndd(1,:));
plot(T,err_Cdd(1,:));
plot(T,err_Gdd(1,:));
hold off
    
subplot(3,2,6);
hold on
box  on
grid on
grid minor
title(['standard deviation $\ddot{y}$ = ',num2str(std_ydd)],'interpreter','latex')
set(get(gca, 'YLabel'), 'String', '$\ddot{y}$ (m)','interpreter','latex');
set(get(gca, 'XLabel'), 'String', 'Time (s)'       ,'interpreter','latex');
xlim(lim_x)
plot(T,err_Add(2,:));
plot(T,err_Ddd(2,:));
plot(T,err_Mdd(2,:));
plot(T,err_Odd(2,:));
plot(T,err_Hdd(2,:));
plot(T,err_Ndd(2,:));
plot(T,err_Cdd(2,:));
plot(T,err_Gdd(2,:));
hold off;