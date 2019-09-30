function G=Gamma(q,qd,t)
% G=Gamma(q,qd,t)

global Omega
global O_0 H_0 N_0 M_0 G_0 D_0 C_0 B_0 A_0 K_0 
global F1_0 F2_0 F3_0 F4_0 F5_0 F6_0 F7_0 F8_0 
global S0o S0h S0n S1a S1d S1m S1o S2d S2c S2g S3a S3b S4c S4b S5n S6m S7h S8g 
global u56 u78 v56 v78

F0=zeros(3,1);                              F0d=zeros(3,1);
F1=q( 1: 3);                                F1d=qd( 1: 3);  
F2=q( 4: 6);                                F2d=qd( 4: 6);  
F3=q( 7: 9);                                F3d=qd( 7: 9);  
F4=q(10:12);                                F4d=qd(10:12);  
F5=q(13:15);                                F5d=qd(13:15);  
F6=q(16:18);                                F6d=qd(16:18);  
F7=q(19:21);                                F7d=qd(19:21);  
F8=q(22:24);                                F8d=qd(22:24);  

Rot0=eye(2);
Rot1=Rot(F1);
Rot2=Rot(F2);
Rot3=Rot(F3);
Rot4=Rot(F4);
Rot5=Rot(F5);
Rot6=Rot(F6);
Rot7=Rot(F7);
Rot8=Rot(F8);

G=zeros(size(q));
% Rotational Joints
%G(k:k+1)=   Ri *Sia *(Fid(3)^2) -   Rj *Sja *(Fjd(3)^2)
G( 1:  2)= Rot0 *S0o *(F0d(3)^2) - Rot1 *S1o *(F1d(3)^2);     % i=0   j=1   a=o
G( 3:  4)= Rot0 *S0h *(F0d(3)^2) - Rot7 *S7h *(F7d(3)^2);     % i=0   j=7   a=h
G( 5:  6)= Rot0 *S0n *(F0d(3)^2) - Rot5 *S5n *(F5d(3)^2);     % i=0   j=5   a=n
G( 7:  8)= Rot1 *S1d *(F1d(3)^2) - Rot2 *S2d *(F2d(3)^2);     % i=1   j=2   a=d
G( 9: 10)= Rot1 *S1a *(F1d(3)^2) - Rot3 *S3a *(F3d(3)^2);     % i=1   j=3   a=a
G(11: 12)= Rot1 *S1m *(F1d(3)^2) - Rot6 *S6m *(F6d(3)^2);     % i=1   j=6   a=m
G(13: 14)= Rot2 *S2g *(F2d(3)^2) - Rot8 *S8g *(F8d(3)^2);     % i=2   j=8   a=g
G(15: 16)= Rot2 *S2c *(F2d(3)^2) - Rot4 *S4c *(F4d(3)^2);     % i=2   j=4   a=c
G(17: 18)= Rot3 *S3b *(F3d(3)^2) - Rot4 *S4b *(F4d(3)^2);     % i=3   j=4   a=b

% Prismatic Joints
%G(k)= (  Rj*  v)' * (2*Omega*(Fjd(1:2)-Fid(1:2))*Fjd(3) + (Fj(1:2)-Fi(1:2))*(Fjd(3)^2)-  Ri*Sia*( (Fjd(3)-Fid(3)) ^2) )
G(20)= (Rot5*v56)' * (2*Omega*(F5d(1:2)-F6d(1:2))*F5d(3) + (F5(1:2)-F6(1:2))*(F5d(3)^2)-Rot6*S6m*( (F5d(3)-F6d(3)) ^2) );   % i=6   j=5   a=m  b=n
G(22)= (Rot7*v78)' * (2*Omega*(F7d(1:2)-F8d(1:2))*F7d(3) + (F7(1:2)-F8(1:2))*(F7d(3)^2)-Rot8*S8g*( (F7d(3)-F8d(3)) ^2) );   % i=8   j=7   a=g  b=h

% Driving Constraints   
%G(d)= (  Rj*  u)' * (2*Omega*(Fjd(1:2)-Fid(1:2))*Fjd(3) + (Fj(1:2)-Fi(1:2))*(Fjd(3)^2)-  Ri*Sia*( (Fjd(3)-Fid(3)) ^2) ) -fdd(t)
G(23)= (Rot5*u56)' * (2*Omega*(F5d(1:2)-F6d(1:2))*F5d(3) + (F5(1:2)-F6(1:2))*(F5d(3)^2)-Rot6*S6m*( (F5d(3)-F6d(3)) ^2) ) +        sin(2*t); 
G(24)= (Rot7*u78)' * (2*Omega*(F7d(1:2)-F8d(1:2))*F7d(3) + (F7(1:2)-F8(1:2))*(F7d(3)^2)-Rot8*S8g*( (F7d(3)-F8d(3)) ^2) ) - (15*sin(5*t))/2; 