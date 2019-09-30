function Pr=rel_pos(Point_in_abs,Local_Frame)
% compute position of a point in a new frame
Rot=[ cos(Local_Frame(3)), sin(Local_Frame(3)); % this is R'
     -sin(Local_Frame(3)), cos(Local_Frame(3))];

Pr=Rot*(Point_in_abs - Local_Frame(1:2));