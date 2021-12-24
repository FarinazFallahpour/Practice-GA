function [Child1 Child2]=CrossOver(Parent1,Parent2)
Point=rand;
Point=ceil(Point*8)
Ch11 = Parent1(1:Point)
Ch12 = Parent2(Point+1:end);
Ch21 = Parent2(1:Point);
Ch22 = Parent1(Point+1:end);
Child1=[Ch11 Ch12]
Child2=[Ch21 Ch22]


