%esboco da onda senoidal

w = 10;             %definicao da frequencia
t1 = 0:0.01:100;     % definicao do intervalo de tempo
f = sind(w*t1);      %funcao seno
df = w*cosd(w*t1);   %derivada da funcao seno
subplot(3,1,1)
plot (t1,f, t1,df)    %plot da onda sobre sua derivada
xlabel ('Tempo')
ylabel ('Amplitude')
grid on

%esboco da onda quadrada

t2=(0:0.01:20);          %definicao do tempo
f=square(t2);            %definicao da funcao
df = diff(f);%derivada da funcao
subplot(3,1,2)
plot(t2, f, t2, [5, df])  % plot da funcao  
axis([0 20 -3 3])       %definicao dos limites dos eixos
xlabel('Tempo')
ylabel('Amplitude')
grid on

%esboco da onda triangular

T = 10*(1/50); %Faz o tempo T mostrar 10 periodos
fs = 1000;  % quantidade de amostras

t3 = 0:1/fs:T-1/fs; %determinacao do tempo
f = sawtooth(2*pi*50*t3,1/2); %definicao da frequencia da onda e o duty cicle
df = diff(f); %derivada da onda triangular
subplot(3,1,3)
plot(t3,f, t3, [0 df])
xlabel('Tempo')
ylabel('Amplitude')
grid on
