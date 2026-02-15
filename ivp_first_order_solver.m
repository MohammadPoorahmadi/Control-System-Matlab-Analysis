t = linspace(0 , 1 , 1001);
N1 = length(t);

w0 = 2*pi;
x1 = sin(w0*t);

x11 = xcorr(x1,x1,'biased');
t2 = linspace(-1, 1 , length(x11));

x2 = sin(10*w0*t);
x22 = xcorr(x2 , x2 , 'biased');

x3 = 2 * rand(1,N1)-1;
x33 = xcorr(x3 , x3 , 'biased');

x4 = x1 + x3;
x44 = xcorr(x4 , x4 , 'biased');

x5 = x1 + 2*x3;
x55 = xcorr(x5 , x5 , 'biased');

x6 = x1 + 10*x3;
x66 = xcorr(x6 , x6 , 'biased');

figure;

subplot(6,2,1);
plot(t,x1);
title ('t,x1');

subplot(6,2,2);
plot(t2,x11);
title ('t2,x11');

subplot(6,2,3);
plot(t,x2);
title ('t,x2');

subplot(6,2,4);
plot(t2,x22);
title('t2,x22');

subplot(6,2,5);
plot(t,x3);
title('t,x3')

subplot(6,2,6);
plot(t2,x33);
title('t2,x33');

subplot(6,2,7);
plot(t,x4);
title('t,x4')

subplot(6,2,8);
plot(t2,x44);
title('t2,x44');

subplot(6,2,9);
plot(t,x5);
title('t,x5');

subplot(6,2,10);
plot(t2,x55);
title('t2,x55');

subplot(6,2,11);
plot(t,x6);
title('t,x6')

subplot(6,2,12);
plot(t2,x66);
title('t2,x66');


%(x1):
% -Clean periodic autocorrelation peaks at 1s intervals.
%-Shows perfect repetition.
%(x2):
%-Tighter peaks at 0.1s intervals.
%-Higher frequency = closer peaks.
%(x3):
%-Single spike at center.
%-No pattern.
%(x4):
%-Peaks visible but noisy base
%(x5):
%-Peaks weaker, noise stronger.
%(x6):
%-Peaks nearly gone, noise dominates.
%Comparison:
%Autocorrelation clearly distinguishes periodic signals from noise.
%While sinusoids produce predictable peaks, noise corrupts this pattern proportionally to its amplitude.







