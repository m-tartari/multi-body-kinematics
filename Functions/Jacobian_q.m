function J=Jacobian_q(q)
% J=Jacobian_q(q)

global Omega
global O_0 H_0 N_0 M_0 G_0 D_0 C_0 B_0 A_0 K_0 
global F1_0 F2_0 F3_0 F4_0 F5_0 F6_0 F7_0 F8_0 
global S1a S1d S1m S1o S2d S2c S2g S3a S3b S4c S4b S5n S6m S7h S8g 
global u56 u78 v56 v78

F0=zeros(3,1);
F1=q( 1: 3);
F2=q( 4: 6);
F3=q( 7: 9);
F4=q(10:12);
F5=q(13:15);
F6=q(16:18);
F7=q(19:21);
F8=q(22:24);

Rot0=eye(2);
Rot1=Rot(F1); 
Rot2=Rot(F2);
Rot3=Rot(F3);
Rot4=Rot(F4);
Rot5=Rot(F5);
Rot6=Rot(F6);
Rot7=Rot(F7);
Rot8=Rot(F8);




%% Define Jacobian
J= zeros(24,24);

%Rotation Joints
J( 1 :  2,  1 :  2 )= -eye(2);              % i=no   j=1    axis=o
J( 1 :  2,  3      )= -Omega* Rot1 *S1o;

J( 3 :  4, 19 : 20 )= -eye(2);              % i=no   j=7    axis=h
J( 3 :  4, 21      )= -Omega* Rot7 *S7h;

J( 5 :  6, 13 : 14 )= -eye(2);              % i=no   j=5    axis=n
J( 5 :  6, 15      )= -Omega* Rot5 *S5n;

J( 7 :  8,  1 :  2 )=  eye(2);              % i=1    j=2    axis=d
J( 7 :  8,  3      )=  Omega* Rot1 *S1d;
J( 7 :  8,  4 :  5 )= -eye(2);
J( 7 :  8,  6      )= -Omega* Rot2 *S2d;

J( 9 : 10,  1 :  2 )=  eye(2);              % i=1    j=3    axis=a
J( 9 : 10,  3      )=  Omega* Rot1 *S1a;
J( 9 : 10,  7 :  8 )= -eye(2);
J( 9 : 10,  9      )= -Omega* Rot3 *S3a;

J(11 : 12,  1 :  2 )=  eye(2);              % i=1    j=6    axis=m
J(11 : 12,  3      )=  Omega* Rot1 *S1m;
J(11 : 12, 16 : 17 )= -eye(2);
J(11 : 12, 18      )= -Omega* Rot6 *S6m;

J(13 : 14,  4 :  5 )=  eye(2);              % i=2    j=8    axis=g
J(13 : 14,  6      )=  Omega* Rot2 *S2g;
J(13 : 14, 22 : 23 )= -eye(2);
J(13 : 14, 24      )= -Omega* Rot8 *S8g;

J(15 : 16,  4 :  5 )=  eye(2);              % i=2    j=4    axis=c
J(15 : 16,  6      )=  Omega* Rot2 *S2c;
J(15 : 16, 10 : 11 )= -eye(2);
J(15 : 16, 12      )= -Omega* Rot4 *S4c;

J(17 : 18,  7 :  8 )=  eye(2);              % i=3    j=4    axis=b
J(17 : 18,  9      )=  Omega* Rot3 *S3b;
J(17 : 18, 10 : 11 )= -eye(2);
J(17 : 18, 12      )= -Omega* Rot4 *S4b;

% Prismatic Joints
J(     19,  15 ) = -1;
J(     20, 13 : 15 ) = [ (Rot5*v56)',  -(Rot5*v56)'*Omega*( F5(1:2) -F6(1:2) -Rot6*S6m )];
J(     19, 18 ) = 1;
J(     20, 16 : 18 ) = [-(Rot5*v56)',  -(Rot5*v56)'*Omega*Rot6*S6m];
J(     21, 21 ) = -1;
J(     22, 19 : 21 ) = [ (Rot7*v78)',  -(Rot7*v78)'*Omega*( F7(1:2) -F8(1:2) -Rot8*S8g )];
J(     21, 24 ) = 1;
J(     22, 22 : 24 ) = [-(Rot7*v78)',  -(Rot7*v78)'*Omega*Rot8*S8g ];

%driving eq
 J(    23, 13 : 15 ) = [ (Rot5*u56)',  -(Rot5*u56)'*Omega*( F5(1:2) -F6(1:2) -Rot6*S6m )];
 J(    23, 16 : 18 ) = [-(Rot5*u56)',  -(Rot5*u56)'*Omega*Rot5*S6m];
 J(    24, 19 : 21 ) = [ (Rot7*u78)',  -(Rot7*u78)'*Omega*( F7(1:2) -F8(1:2) -Rot8*S8g )];
 J(    24, 22 : 24 ) = [-(Rot7*u78)',  -(Rot7*u78)'*Omega*Rot8*S8g];
 
 if abs(det(J))<1e-3 %rank(J)~= size(J,1)
     warning('The jacobian is not full rank (or close to singularity)')
 end
end