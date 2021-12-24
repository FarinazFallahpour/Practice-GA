clc;
clear all;
n=100;       %number of cromozome
L=25;   % num of culumn;
pc= 0.7;     %nerkh crossover
pm =1/L ;   % nerkh mutation
maxitration= 100;
itration=50;

crosschild=zeros(100,L);
fittmat=zeros(1,100);
flg2=0;

for i=1:n
    population(i,:) =floor(random('unif',0,2-0.001,1,L));
    fittmat(i)=fitness( population(i,:));
    if  fittmat(i)==L
        winner=population(i,:);
        flg2=1;
    end
end
generation=0;
while flg2==0
        %%%
       generation =generation+1;
      for i=1:n
          fitnes_pop(i,1)=fitness(population (i,:));
      end
      
      sum_of_fitness=sum (fitnes_pop);
      sum_of_fit=0;
      for i=1:n
        fitnes_pop(i,2)=fitnes_pop(i,1) / sum_of_fitness(1);
        sum_of_fit=sum_of_fit+fitnes_pop(i,2);
        fitnes_pop(i,2)=sum_of_fit;
      end
      
        num=1;
%         parent_sel=zeros (itration , 2);
        for j=1:itration


            numrnd1=rand;
            num1=find (fitnes_pop(:,2)>numrnd1);
            pr1=population(num1(1),:);
            num2=find (fitnes_pop(:,2)> rand);
            pr2=population(num2(1),:);
           [crosschild(num,1:L), crosschild(num+1,1:L)]= cross_over(pm,pr1,pr2);
%              mutcell=ceil(random ('unif', 1,L,1,2) );
            for i=1:L
                 if( rand < pc)
                     crosschild(num,i)=1-crosschild(num,i);
                 end
%                 %--
                 if( rand < pc)
                     crosschild(num+1,i)=1- crosschild(num+1,i);
                 end
            end
                 
%                 %--                  
             num=num+2;
        end
           for i=1:n
               population(i,:)=crosschild(i,:);     
               fittmat(i)=fitness( population(i,:));
               if  fittmat(i)==L ||generation ==100
               winner=population(i,:);
               flg2=1;
               end 
           end
end
generation
iteration= j
winner