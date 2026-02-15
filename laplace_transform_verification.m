t = linspace(-1.6, 1.6, 200);

T = 1.0;
w0 = 6.2839; 
x = zeros(size(t));
for i = 1:length(t)
    mod_t = mod(t(i) + T/2, T) - T/2;
    if abs(mod_t) < 0.25
        x(i) = 1.0;
    else
        x(i) = 0.0;
    end
end

a0 = 0.5;
a1 = 0.31831;
a3 = -0.1061;
a5 = 0.06366;
a7 = -0.0455;
a9 = 0.03537;
a11 = -0.0289;

x_approx = zeros(7, length(t)); 
x_approx(1,:) = a0 * ones(size(t));
x_approx(2,:) = x_approx(1,:) + a1 * 2 * cos(1*w0*t);
x_approx(3,:) = x_approx(2,:) + a3 * 2 * cos(3*w0*t);
x_approx(4,:) = x_approx(3,:) + a5 * 2 * cos(5*w0*t);
x_approx(5,:) = x_approx(4,:) + a7 * 2 * cos(7*w0*t);
x_approx(6,:) = x_approx(5,:) + a9 * 2 * cos(9*w0*t);
x_approx(7,:) = x_approx(6,:) + a11 * 2 * cos(11*w0*t);

errors = zeros(1, 7);
for k = 1:7
    errors(k) = mean(abs(x - x_approx(k,:)));
end

figure;
set(gcf, 'Position', [100, 100, 800, 1200]);

subplot(7, 2, 1);
plot(t, x);
title('Original Square Wave');
ylabel('Amplitude');

subplot(7, 2, 2);
plot(t, zeros(size(t)), 'LineWidth', 1.5);
title('Error (Original vs. Itself)');
ylabel('Error');

harmonic_steps = [1, 3, 5, 7, 9, 11];
for k = 1:6
    subplot(7, 2, 2*k+1);
    plot(t, x_approx(k+1,:), 'LineWidth', 1.5);
    title(sprintf('Up to %dth Harmonic', harmonic_steps(k)));
    ylabel('Amplitude');
    
    subplot(7, 2, 2*k+2);
    plot(t, x - x_approx(k+1,:), 'LineWidth', 1.5);
    title(sprintf('Error (up to %dth Harmonic)', harmonic_steps(k)));
    ylabel('Error');
end

errors = zeros(1, 7);
for k = 1:7
    errors(k) = mean(abs(x - x_approx(k,:))) * 100;
end

required_harmonics = find(errors < 5, 1);

if isempty(required_harmonics)
    disp('More than 11 harmonics needed for <5% error.');
else
    harmonic_order = [0, 1, 3, 5, 7, 9, 11];
    fprintf('Number of harmonics needed for <5%% error: %d (i.e., up to %dth harmonic)\n',required_harmonics, harmonic_order(required_harmonics));
end






