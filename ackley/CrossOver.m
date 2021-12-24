function offspring = CrossOver(population)
   offspring = zeros(1,size(population,2));
    for i=1:size(population,2)/2
        r1 = round(1+(30-1)*rand(1));
        p1 = population(r1,:);
        r2 = round(1+(30-1)*rand(1));
        p2 = population(r2,:);
    
        if rand<0.5
           offspring(1,i) = p1(1,i);
        else
           offspring(1,i) = p2(1,i);
        end
       offspring(1,i+30) = (p1(1,i+30)+p2(1,i+30))/2;
    end    
end