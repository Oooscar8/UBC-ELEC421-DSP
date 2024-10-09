# A1

## Q6.

> Find the fundamental period for the following digital signal:
>
> ![image-20241003165840458](https://gitee.com/OooAlex/study_note/raw/master/img/202410031658549.png)
>
> Use the following hint, where LCM is the Least Common Multiple. Note that the LCM is the smallest positive integer that is evenly divisible by two or more given numbers.
>
> <img src="https://gitee.com/OooAlex/study_note/raw/master/img/202410031633880.png" alt="image-20241003163345813" style="zoom: 80%;" />
>
> You need to show the graphs of each digital signal using MATLAB. Also, plot the graph of the overall signal of $x_4(n)$​

**Fundamental period**:

$N_1$ = 5, $N_2$ = 10, $N_3$​ = 4

$N_4$ = 20

**`Matlab` Code**:

```matlab
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
```

**Graphs**:

![Q6](https://gitee.com/OooAlex/study_note/raw/master/img/202410031940055.jpg)