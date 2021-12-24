function Count=QueenFitness(Chromosome)
Count=0;
for i=1:8
 for j=i+1:8
     if (Chromosome(i)==Chromosome(j)) || abs ( abs(Chromosome(i)-Chromosome(j))== j-i)
         Count=Count+1;
     end
 end
end
 end
