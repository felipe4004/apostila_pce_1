%plot da onda quadrada

t=(0:0.01:20);          %definicao do tempo
f=square(t);            %definicao da funcao
df = diff(f);           %derivada da funcao
plot(t, f, t, [5, df])  %plot da funcao  
axis([0 20 -3 3])       %definicao dos limites dos eixos
title('Gráfico da onda quadrada e sua derivada')
xlabel('Tempo')
ylabel('Amplitude')
