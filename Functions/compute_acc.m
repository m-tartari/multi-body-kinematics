function q_dd=compute_acc(q,q_d,t)
    Fq=Jacobian_q(q);
    Fg=Gamma(q,q_d,t);
    q_dd=Fq\Fg;
end