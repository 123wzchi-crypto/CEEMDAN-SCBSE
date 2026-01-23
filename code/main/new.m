addpath('C:\Users\Wzc\Desktop\轴承处理代码1\CEEMDAN')
%ceemdan鍒嗚В鍘熷淇″彿
Nstd = 0.2;
NR = 100;
MaxIter = 5000;
SNRFlag = 1;

[modes, its] = ceemdan(signalSegment, Nstd, NR, MaxIter);

[a, b] = size(modes);

% 绘制原始信号和分解后的 IMF
figure;

% 绘制原始信号
subplot(12, 1, 1);
plot(t, signalSegment,'LineWidth', 0.25);
title('Original Signal');
set(gca, 'xtick', []);
axis tight;

% 绘制每个 IMF
for i = 2:5
    subplot(12, 1, i);
    plot(t, modes(i - 1, :),'LineWidth', 0.25);
    title(['IMF_{' num2str(i-1) '}'], 'Interpreter','tex');
    set(gca, 'xtick', []);
end
for i = 7:12
    subplot(12, 1, i-1);
    plot(t, modes(i - 1, :),'LineWidth', 0.25);
    title(['IMF_{' num2str(i-2) '}'], 'Interpreter','tex');
    set(gca, 'xtick', []);
end

% 绘制最后一个 IMF
subplot(12, 1, 12);
plot(t, modes(a, :),'LineWidth', 0.25);
title(['R'], 'Interpreter','tex');
xlabel('t(s)')




