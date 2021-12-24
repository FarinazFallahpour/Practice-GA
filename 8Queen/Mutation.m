function MutatedChromosome=Mutation(Chromosome)
x=rand;
if x>0.8
    r1=ceil(rand*GLenght);
    r2=ceil(rand*GLenght);
    MutatedChromosome=Chromosome;
    MutatedChromosome(r1)=Chromosome(r2);
    MutatedChromosome(r2)=Chromosome(r1);   
end
end

