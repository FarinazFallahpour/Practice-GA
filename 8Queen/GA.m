function [x,fval,exitflag,output,population,score] = GA(nvars,PopInitRange_Data,PopulationSize_Data,Generations_Data,FitnessLimit_Data)
% This is an auto generated MATLAB file from Optimization Tool.

% Start with the default options
options = gaoptimset;
% Modify options setting
options = gaoptimset(options,'PopulationType', 'custom');
options = gaoptimset(options,'PopInitRange', PopInitRange_Data);
options = gaoptimset(options,'PopulationSize', PopulationSize_Data);
options = gaoptimset(options,'Generations', Generations_Data);
options = gaoptimset(options,'FitnessLimit', FitnessLimit_Data);
options = gaoptimset(options,'CreationFcn', @CreationFunction);
options = gaoptimset(options,'SelectionFcn', @selectionroulette);
options = gaoptimset(options,'CrossoverFcn', @CrossOver);
options = gaoptimset(options,'MutationFcn', @Mutation);
options = gaoptimset(options,'Display', 'off');
[x,fval,exitflag,output,population,score] = ...
ga(@QueenFitness,nvars,[],[],[],[],[],[],[],options);
