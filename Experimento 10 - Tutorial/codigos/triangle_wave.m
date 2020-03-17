%codigo para gerar onda triangular de 50 Hz

T = 10*(1/50);              %Faz o tempo T mostrar 10 periodos
fs = 1000;                  %quantidade de amostras
t = 0:1/fs:T-1/fs;          %determinacao do tempo
f = sawtooth(2*pi*50*t,1/2);%definicao da frequencia da onda e o duty cicle
df = diff(f);               %derivada da onda triangular
plot(t,f, t, [0 df])
xlabel('Tempo')
ylabel('Amplitude')
grid on