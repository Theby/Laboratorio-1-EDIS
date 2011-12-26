function retorno = o_cero(t)
a = 0.5; %debe ser una constante entre 0 y 1
o_cero_cero=90; % es o(0,0)
o_k=100; %cantidad de elementos ordenados por los clientes. constante?

%RECURSIVA:
if(t==0)
	res = 1; %valor final o(0,0)
else
	res = (1-a)*o_cero(t-1)+a*o_cero(t-1);
end%} 

%ITERATIVA
retorno=o_cero_cero*(1-a)^t;

for k=0:1:(t-1) %inicio:incremento:fin
	retorno=retorno + o_k*(1-a)^(t-1-k);
end
