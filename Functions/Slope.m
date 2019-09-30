function b=Slope(P1, P2)
% fit a line between 2 points and returns its angle with respect to the x axis
P=(P2-P1);
b=atan2(P(2),P(1));
end