clc;
clear all;
close all;
population = zeros(30,60);
bestFitnesses = [];
for i=1:30
    for j=1:60
        population(i,j)= round(-30 + 60 * rand);
    end 
end
for cnt = 1:100
    for generationNo = 1:500	
		newGeneration = [];        
        for j=1:300
            parents = population;
            newChild = CrossOver(parents);
            newChild = Mutation(newChild);
            newGeneration = [newGeneration ; newChild];
        end
        
        fitness = zeros(1 , size(newGeneration,1));
        for j= 1:size(newGeneration,1)
            fitness(j) = Fittness(newGeneration(j,:));
        end
		fitness = fitness';
        [sortedFittness , andis] = sort(fitness);
        remained = newGeneration(andis(1:30),:);
        minFitness = remained(1);
        if minFitness==0
			disp(['Best Fittness : ' num2str(generationNo)])
            break;
        end
        population = remained;
    end
    bestFitnesses = [bestFitnesses , minFitness];
end
mean = mean(bestFitnesses);
variance = var(bestFitnesses);
[mean variance]