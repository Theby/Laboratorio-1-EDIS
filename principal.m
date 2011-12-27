function retorno = principal(t, valores)
%t: es el tiempo discreto
%valores: son los retornos conocidos de la funcion asi
%valores(1) => valor del tiempo 2
%valores(2) => valor del tiempo 3


Kd=0.5; %constante a fijar
Kf=1; %constante a fijar
Dt=1; %nivel desceado del inventario, trabajamos  con o(t)?
t1=1; %retardo de los empleados flojos e ineficientes <.<

if t==1 || t==0
	retorno=1;
else
	%antes que hacer cualquier calculo vemos si ya tenemos calculado el t
	if(length(valores)>=t-1)
		retorno=valores(t-1);
	else
		retorno=principal(t-1, valores)-Kd*principal(t-1-t1, valores)+Kd*Dt+Kf*o_cero(t-1);
	end
end
