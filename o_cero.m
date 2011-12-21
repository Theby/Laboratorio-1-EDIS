function [res] = o_cero(t)
a = 0,5; %debe ser una variable entre 0 y 1

if(t==0)
	res = 1; %valor final o(0,0)
else
	res = (1-a)*o_cero(t-1)+a*o_cero(t-1);
end
