%Onda Quadrada

A1 = 2;
f1 = 15*10^3;
T1 = 1/f1;
x1 = 0:T1/1000:2*T1;
y1 = A1*square(2*pi*f1*x1)+1;
subplot(3,1,1);
plot(x1, y1)
title('Onda Quadrada')
axis([0 2*T1 -3 4])
xlabel('Tempo (ms)')
ylabel('Amplitude(V)')
vrms_square = rms(y1)
vavg_square = mean(y1)
grid on

%Onda Triângular
A2 = 3;
f2 = 4000;
T2 = 1/f2;
x2 = 0:T2/100:2*T2;
y2 = A2*sawtooth(2*pi*f2*x2,1/2);
subplot(3,1,2)
plot(x2, y2)
xlabel('Tempo (ms)')
ylabel('Amplitude (V)')
vrms_trian = rms(y2)
vavg_trian = mean(y2)
grid on

%Onda Senoidal

A3 = 2.5;
f3 = 1000;
T3 = 1/f3;
x3 = 0:T3/100:2*T3;     
y3 = sin(2*pi*f3*x3)+0.5;      
subplot(3,1,3)
plot (x3, y3)    
xlabel ('Tempo (ms)')
ylabel ('Amplitude (V)')
vrms_sin = rms(y3)
vavg_sin = mean(y3)
grid on