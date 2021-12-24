function offspring = Mutation(child)
    offspring = child;
    n = size(child,2)/2;
    t1 = 1/sqrt(2*n);
    t = 1/sqrt(2*sqrt(n));
    r = (-1+(1+1)*rand(1));
    for i=1:n
        ri =(-1+(1+1)*rand(1));
        offspring(1,n+i) = offspring(1,n+i)*exp((t1*r)+(t*ri));
        offspring(1,i) = offspring(1,i) + offspring(1,n+i)*(-1+(1+1)*rand(1));
    end
end