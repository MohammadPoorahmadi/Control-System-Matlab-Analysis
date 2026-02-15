x = linspace(0,2*pi,1000);

figure(1);
y1 = x .* exp(-x);
y2 = exp(cos(x));

plot(x, y1, 'b', x, y2, 'r');
xlabel('x');
ylabel('f(x)');
title('Comparison');


legend('f(x) = xe^{-x}' , 'f(x) = e^{cos(x)}');

figure(2);
subplot(2,1,1)
plot(x,y1,'b');
xlabel('x');
ylabel('f(x)');
title('f(x) = xe^{-x}')


subplot(2,1,2)
plot(x,y2,'r');
xlabel('x');
ylabel('f(x)');
title('f(x) = e^{cos(x)}')

