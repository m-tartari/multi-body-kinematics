function q=NewtonRaphson(q0,t)
% q=NewtonRaphson(q0,t)
% Newton-Raphson method to find state of the system at next iteration,
%   requiers properly structured 'Constraints ' and 'Jacobian' functions
%
%   q   New state of the system
%
%   q0  Previous state of the sistem
%   t   Time instatnt
    Tollerance=1e-10;
    max_iter=25;

    q=q0;
    F=Constratints(q,t);
    iter=1;
    
    while( (norm(F)>Tollerance) && (iter<max_iter) )
        F=Constratints(q,t);
        Fq=Jacobian_q(q);
        q=q - Fq\F; % it's equivalent to q=q-inv(Fq)*F
        iter=iter+1;
    end
    
    %if no solution is found
    if iter >= max_iter
        msg=['Impossible to find a solution within ', num2str(max_iter), ' iterations for t=',num2str(t)];
        %error(msg);
        warning(msg);
        q=q0;
    end
end