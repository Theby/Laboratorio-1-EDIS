function retorno = principal(t)
Kd=1; %constante a fijar
Kf=1; %constante a fijar
Dt=1; %nivel desceado del inventario, trabajamos  con o(t)?

%que es tl?
tl=1;

if t==1 || t==0
	retorno=1;
else
	retorno=principal(t-1)-Kd*principal(t-1-tl)+Kd*Dt+Kf*o_cero(t-1);
end
