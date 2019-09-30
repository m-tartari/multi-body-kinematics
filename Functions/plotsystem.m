function plotsystem(q,t)
% plotsystem(q,t)
% Plot system at current state at time t
%   q   New state of the system
%   t   Time instant

    global O_0 H_0 N_0 M_0 G_0 D_0 C_0 B_0 A_0 K_0
    if isempty(findobj('type','figure','name','Moving System'))
        figure('Name','Moving System','NumberTitle','off','Color','white');
    else
        clf
    end
    Grey=ones(1,3)*0.75;            % Defiine color for plotting
    lim_x=[-1, 4.75];
    lim_y=[-3.25,1.25];


% Recover local frames from q
    Frame=zeros(3,size(q,1)/3);
    for i=1:(size(q,1)/3)
        j=i*3-2;
        Frame(:,i)= q(j:j+2);
    end

    F0=zeros(3,1);
    F1=q( 1: 3);
    F2=q( 4: 6);
    F3=q( 7: 9);
    F4=q(10:12);
    F5=q(13:15);
    F6=q(16:18);
    F7=q(19:21);
    F8=q(22:24);


% Compute point Position
    O=O_0;
    H=H_0;
    N=N_0;
    M=F6(1:2);
    G=F8(1:2);
    D=F2(1:2);
    C=F4(1:2);
    B=F3(1:2)+ Rot(F3)*(B_0-A_0);
    A=F3(1:2);
    K=F3(1:2)+ Rot(F3)*(K_0-A_0);
    
    
%-----------------------START ACTUAL PLOTTING------------------------------
% General plot settings
    hold on
    box  on
    grid on
    grid minor
    xlim(lim_x)
    ylim(lim_y)

% Plot links
    % Plot gruond link
    plot([O(1)-0.5, O(1),H(1), N(1), O(1)-0.5, O(1)-0.5],...
         [    O(2), O(2),H(2), N(2),     N(2),     O(2)],'g','LineWidth',1);
    % Plot C1
    plot([O(1),D(1), A(1), M(1), O(1)],...
         [O(2),D(2), A(2), M(2), O(2)],'b','LineWidth',1);
    % Plot C2
    plot([G(1), D(1), C(1), G(1)],...
         [G(2), D(2), C(2), G(2)],'r','LineWidth',1);
    % Plot C3
    plot([A(1),B(1), K(1), A(1)],...
         [A(2),B(2), K(2), A(2)],'m','LineWidth',1);
    % Plot C4
    plot([C(1),B(1)],...
         [C(2),B(2)],'Color',Grey,'LineWidth',1);
    % Plot C5
    P1=H_0+(G_0-H_0)    /norm(G_0-H_0)*norm(G_0-H_0)*0.5;
    P1=H + ...
       (G-H)/norm(G-H)...          % Direction
        * norm(G_0-H_0)*0.5;       % Amplitude
    plot([H(1),P1(1)],...
         [H(2),P1(2)],'Color',Grey,'LineWidth',3);
    % Plot C6
    plot([P1(1),G(1)],...
         [P1(2),G(2)],'Color',Grey,'LineWidth',1);
    % Plot C7
    P1=N + ...
       (M-N)/norm(M-N)...          % Direction
        * norm(M_0-N_0)*0.5;       % Amplitude
    plot([N(1),P1(1)],...
         [N(2),P1(2)],'Color',Grey,'LineWidth',3);
    % Plot C8
    plot([P1(1),M(1)],...
         [P1(2),M(2)],'Color',Grey,'LineWidth',1);

% Plot local frames
    for i=1:length(Frame)
        plot([Frame(1,i),Frame(1,i)+0.25*cos(Frame(3,i))],...
             [Frame(2,i),Frame(2,i)+0.25*sin(Frame(3,i))],'k','LineWidth',2);
        xt=Frame(1,i)+0.1 *(-sin(Frame(3,i)));
        yt=Frame(2,i)-0.1 *( cos(Frame(3,i)));
        str = ['F_',num2str(i)];%};
        text(xt,yt,str)
    end
    plot(Frame(1,:),Frame(2,:),'.r','MarkerSize',15);

% Plot points
    Letters=[O, H, N, D, A, M, G, C, B, K];
    plot(Letters(1,:),Letters(2,:),'.r','MarkerSize',15);
    str2={'O', 'H', 'N', 'D', 'A', 'M', 'G', 'C', 'B','K'};
    text(Letters(1,:)-0.1,Letters(2,:)+0.1,str2)
    
% Display time
    xt=lim_x(1)+0.05;
    yt=lim_y(2)+0.13;
    str2 = ['Time= ',num2str(t),'s'];%};
    text(xt,yt,str2)
    hold off
    
end