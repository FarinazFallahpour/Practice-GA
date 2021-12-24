function offspring = Fittness(x)
n = size(x,2)/2;
sx = sum(x(1,1:n).^2);
s = sum(cos((2*pi).*x(1,1:n)));
offspring = -20*exp(-0.2*sqrt((1/n)*sx))-exp((1/n)*s)+20+exp(1);
end