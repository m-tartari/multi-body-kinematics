function R=Rot(F)
    if size(F,1)==1
        R=[ cos(F),-sin(F) ;
            sin(F), cos(F)];
    else
        R=[ cos(F(3,:)),-sin(F(3,:)) ;
            sin(F(3,:)), cos(F(3,:))];
    end
end