global Omega
Omega = [0,-1;    1,0];

% Point initial position
global O_0 H_0 N_0 M_0 G_0 D_0 C_0 B_0 A_0 K_0 
O_0=[0.0; 0.0];
H_0=[0.4;-0.2];
N_0=[0.1;-0.8];
M_0=[1.9;-1.4];
G_0=[1.6; 0.4];
D_0=[2.2;-0.4];
C_0=[2.5;-1.4];
B_0=[2.9;-1.1];
A_0=[2.9;-1.9];
K_0=[3.4;-1.9];

%define frame initial position
global F1_0 F2_0 F3_0 F4_0 F5_0 F6_0 F7_0 F8_0 
F1_0=[ O_0; Slope(O_0,D_0)];                % Slope(O_0,D_0)= atan2(D_0(2)-O_0(2), D_0(1)-O_0(1));
F2_0=[ D_0; Slope(D_0,C_0)];
F3_0=[ A_0; Slope(A_0,K_0)];
F4_0=[ C_0; Slope(C_0,B_0)];
F5_0=[ N_0; Slope(N_0,M_0)];
F6_0=[ M_0; Slope(N_0,M_0)];
F5_0=[ N_0;              0];
F6_0=[ M_0;              0];
F7_0=[ H_0;              0];
F8_0=[ G_0;              0];

% Define points local positions
global S0o S0h S0n S1a S1d S1m S1o S2d S2c S2g S3a S3b S4c S4b S5n S6m S7h S8g 
S0o = O_0;
S0h = H_0;
S0n = N_0;
S1o=[0;0];
S1d=rel_pos(D_0,F1_0);                       % rel_pos(D_0,F1_0)= Rot(F1_0) * (D_0-F1_0(1:2));
S1a=rel_pos(A_0,F1_0);
S1m=rel_pos(M_0,F1_0);
S2d=[0;0];
S2c=rel_pos(C_0,F2_0);
S2g=rel_pos(G_0,F2_0);
S3a=[0;0];
S3b=rel_pos(B_0,F3_0);
S4c=[0;0];
S4b=rel_pos(B_0,F4_0);
S5n=[0;0];
S6m=[0;0];
S7h=[0;0];
S8g=[0;0];

% define u, v vectors
global u56 u78 v56 v78
u78 = (H_0-G_0)/norm(H_0-G_0);
v78 = Omega*u78;
u56 = (N_0-M_0)/norm(N_0-M_0);
v56 = Omega*u56;

%Frame Initial Position   -->   F0(data[x,y,theta], frame[1-8])
F0=[F1_0, F2_0, F3_0, F4_0, F5_0, F6_0, F7_0, F8_0];