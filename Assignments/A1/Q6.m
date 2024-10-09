% Define the range of n
n = -20:20;  % two periods of the fundamental period (N = 20)

% Define each digital signal
x1 = cos(1.2*pi*n + 0.65*pi);
x2 = -4*sin(0.9*pi*n);
x3 = 5*cos(0.5*pi*n);

% Define the overall signal
x = x1 + x2 + x3;

% Plot each digital signal
figure;
subplot(4,1,1);
stem(n, x1);
title('x1(n) = cos(1.2πn + 0.65π)');
xlabel('n');
ylabel('Amplitude');

subplot(4,1,2);
stem(n, x2);
title('x2(n) = -4sin(0.9πn)');
xlabel('n');
ylabel('Amplitude');

subplot(4,1,3);
stem(n, x3);
title('x3(n) = 5cos(0.5πn)');
xlabel('n');
ylabel('Amplitude');

% Plot overall signal
subplot(4,1,4);
stem(n, x);
title('x(n) = x1(n) + x2(n) + x3(n)');
xlabel('n');
ylabel('Amplitude');

% Adjust the layout
sgtitle('Digital Signals');