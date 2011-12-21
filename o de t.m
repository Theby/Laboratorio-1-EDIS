function [res] = o(t,0)
a = 0,5; %debe ser una variable entre 0 y 1

IF(t==0)
	res = 1; %valor final o(0,0)
ELSE
	res = (1-a)*o(t-1,0)+a*o(t-1);
END