t = -127:128;

A1 = 3;
C = 10;
x1 = A1*exp(-abs(t)/C);

A2 = 12;
w0 = 2*pi/16;
x2 = A2 * sin(w0*t) ./ t;

x2(t==0) = A2 * w0;

x1FT = fftshift(fft(x1));

x2FT = fftshift(fft(x2));

x3 = x1 + x2;

x3FT = fftshift(fft(x3));

x12FTsum = x1FT + x2FT;

x12FTdif = x3FT - x12FTsum;

figure;
subplot(7,2,1);
plot(t,x1);
title('x1');

subplot(7,2,2);
plot(t,angle(x1FT));
title('Phase of x1FT');

subplot(7,2,3);
plot(t,x2);
title('x2');

subplot(7,2,4);
plot(t,angle(x2FT));
title('Phase of x2FT');

subplot(7,2,5);
plot(t,abs(x1FT));
title('|x1FT|');

subplot(7,2,6);
plot(t,abs(x2FT));
title('|x2FT');

subplot(7,2,7);
plot(t,real(x1FT));
title('Real x1FT');

subplot(7,2,8);
plot(t,real(x2FT));
title('Real x2FT');

subplot(7,2,9);
plot(t,imag(x1FT));
title('x1FT Imag');

subplot(7,2,10);
plot(t,imag(x2FT));
title('2xFT Imag');

subplot(7,2,11);
plot(t,abs(x3FT));
title('|x3FT|');

subplot(7,2,12);
plot(t,abs(x12FTsum));
title('|x12FTsum|');

subplot(7,2,13);
plot(t,abs(x12FTdif));
title('|x12FTsum|');

subplot(7,2,14);
plot(t,angle(x12FTdif));
title('Pahse of x12FTdif');