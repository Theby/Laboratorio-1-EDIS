%utilizamos esta funcion para obtener los valores de la funcion principal

function retorno_matriz = calcular_valores()
retorno_matriz=[];
for t=2:1:15
	retorno_matriz=cat(2, retorno_matriz, [principal(t, retorno_matriz)]);
end
