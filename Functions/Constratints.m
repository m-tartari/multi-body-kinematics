function Constr=Constratints(q,t)
% Constr=Constratints(q,t)

global O_0 H_0 N_0 M_0 G_0 D_0 C_0 B_0 A_0 K_0 
global F1_0 F2_0 F3_0 F4_0 F5_0 F6_0 F7_0 F8_0 
global S0o S0h S0n S1a S1d S1m S1o S2d S2c S2g S3a S3b S4c S4b S5n S6m S7h S8g 
global u56 u78 v56 v78

% Obtain frames from q
F0=zeros(3,1);
F1=q( 1: 3);
F2=q( 4: 6);
F3=q( 7: 9);
F4=q(10:12);
F5=q(13:15);
F6=q(16:18);
F7=q(19:21);
F8=q(22:24);

% Rotation matrices
Rot0=eye(2);
Rot1=Rot(F1);                               % Rot(F1)=[ cos(F1(3)),sin(F1(3));  -sin(F1(3)),cos(F1(3))];
Rot2=Rot(F2);
Rot3=Rot(F3);
Rot4=Rot(F4);
Rot5=Rot(F5);
Rot6=Rot(F6);
Rot7=Rot(F7);
Rot8=Rot(F8);


Constr=zeros(size(q));

% Rotational Joints
Constr( 1 :  1+1) = F0(1:2)+Rot0*S0o -( F1(1:2)+Rot1*S1o );
Constr( 3 :  3+1) = F0(1:2)+Rot0*S0h -( F7(1:2)+Rot7*S7h );
Constr( 5 :  5+1) = F0(1:2)+Rot0*S0n -( F5(1:2)+Rot5*S5n );
Constr( 7 :  7+1) = F1(1:2)+Rot1*S1d -( F2(1:2)+Rot2*S2d );
Constr( 9 :  9+1) = F1(1:2)+Rot1*S1a -( F3(1:2)+Rot3*S3a );
Constr(11 : 11+1) = F1(1:2)+Rot1*S1m -( F6(1:2)+Rot6*S6m );
Constr(13 : 13+1) = F2(1:2)+Rot2*S2g -( F8(1:2)+Rot8*S8g );
Constr(15 : 15+1) = F2(1:2)+Rot2*S2c -( F4(1:2)+Rot4*S4c );
Constr(17 : 17+1) = F3(1:2)+Rot3*S3b -( F4(1:2)+Rot4*S4b );

% Translation Joints
theta0_56= F6_0(3)-F5_0(3);
theta0_78= F8_0(3)-F7_0(3);
Constr(19 : 19+1) = [F6(3)-F5(3)-theta0_56 ;    (Rot5*v56)' * (  F5(1:2) -F6(1:2) - Rot6*S5n ) + v56'*S6m ];
Constr(21 : 21+1) = [F8(3)-F7(3)-theta0_78 ;    (Rot7*v78)' * (  F7(1:2) -F8(1:2) - Rot8*S7h ) + v78'*S8g ];

% Driving Equations
Constr(23       ) = (Rot5*u56)' * ( F5(1:2) -F6(1:2) +Rot5*S5n -Rot6*S6m) -(norm(M_0 - N_0) -0.25*sin(2*t) );   % x_k = l_k + a_k sin(w_k*t + phi_k)
Constr(24       ) = (Rot7*u78)' * ( F7(1:2) -F8(1:2) +Rot7*S7h -Rot8*S8g) -(norm(G_0 - H_0) +0.30*sin(5*t) );

end