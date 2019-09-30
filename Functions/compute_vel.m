function q_d=compute_vel(q,t)
    Fq=Jacobian_q(q);
    Ft=zeros(size(q));
    Ft(end-1)=      cos(2*t)/2;    % d/dt(driving equations)
    Ft(end  )= -(3*cos(5*t))/2;

    q_d=-Fq\Ft;
end