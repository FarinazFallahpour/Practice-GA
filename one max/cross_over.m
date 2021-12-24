function [offspring1 , offspring2 ]=cross_over(pm,p1,p2)
cutpoint=floor(random('unif', 1,length(p1)));
if (rand<pm && cutpoint ~= length(p1))
    cutpoint=floor(random('unif', 0,length(p1)));
    offspring1(1,1:cutpoint)=p1(1,1:cutpoint);
    offspring2(1,1:cutpoint)=p2(1,1:cutpoint);
    offspring1(1,cutpoint+1:length(p1))=p2(1,cutpoint+1:length(p2));
    offspring2(1,cutpoint+1:length(p1))=p1(1,cutpoint+1:length(p2));
    
else
    offspring1=p1;
    offspring2=p2;
end
end


