%utilizamos esta funcion para obtener los valores de la funcion principal

function retorno_matriz = calcular_valores()
retorno_matriz=[];
for t=2:1:60
	retorno_matriz=cat(2, retorno_matriz, [principal(t, retorno_matriz)]);
end
retorno_matriz=cat(2, [1], retorno_matriz); %agregamos el 1 al inicio
