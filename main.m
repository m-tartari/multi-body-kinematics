close all
clear all
addpath('./Scripts','./Functions')
clc
filming=false;

%% Define initial states and composition of the system
initial_state

%% Start Recursion
dt    = 0.01;                 % Define distance between successive moments
t_end = 5;                    % last value of time vector

% Initialize q=q0
q=zeros(size(F0,1)*size(F0,2),1);
for i=1:size(F0,2)
    j=i*3-2;
    q(j:j+2)=F0(:,i);
end
q_d  = zeros(size(q));        % Assume null initial velocity
q_dd = zeros(size(q));        % Assume null initial acceleration

i=0;
T=0:dt:t_end;                 % Time vector
Q=zeros(length(q),length(T)); % Initialize matrix containing values of q    at each time instant
Q_d =Q;                       % Initialize matrix containing values of q_d  at each time instant
Q_dd=Q;                       % Initialize matrix containing values of q_dd at each time instant

%% Solving kinematics tasks in subsequent moments t
disp('Solving kinematics tasks')
for t=T
    %disp(['t= ',num2str(t)])
    q0  =q+q_d*dt+0*0.5*q_dd*(dt^2);
    q   =NewtonRaphson(q0, t);
    q_d =compute_vel(q,    t);
    q_dd=compute_acc(q,q_d,t);      
    
    % Store values
    i=i+1;
    Q   (:,i)=q   ;
    Q_d (:,i)=q_d ;
    Q_dd(:,i)=q_dd;
    
end
disp('Done')
disp(' ')

%% Compare results with ADAMS model
disp('Analysing errors')
compare_with_ADAMS
disp('Done')
disp(' ')


%% PLOT and film
if filming
    disp('Plotting and Recording')
    
    %set up figure for recording
    x0=30;
    y0=30;
    width=720;
    height=720;
    figure('Name','Moving System','NumberTitle','off','Color','white');
    set(gcf,'units','points','position',[x0,y0,width,height])
    
    %Star video object
    writerObj = VideoWriter('animated_output.avi'); 
    open(writerObj);
    writeObj.FrameRate = 50;
else
    disp('Plotting')
end


for i=1:length(T)
    plotsystem(Q(:,i),T(i));
    
    % save frame
    if filming
        F = getframe;
        writeVideo(writerObj,F);
    else
        pause(0.05);
    end
end

if filming
    close(writerObj);
end
disp('Done')
