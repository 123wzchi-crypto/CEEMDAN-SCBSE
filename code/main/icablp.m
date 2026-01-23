%ica处理之后的包络谱
for i = 1:size(icasig, 1)
    % 计算第i个IC的包络
    analytic_signal = hilbert(icasig(i, :));
    envelope = abs(analytic_signal);
    % 计算包络的傅里叶变换
    N = length(envelope); % 包络信号的长度
    f = (0:N-1)*(fs/N); % 频率向量
    envelope_spectrum = fft(envelope); % 傅里叶变换
    % 归一化处理：使得最大值为1
    max_magnitude = max(abs(envelope_spectrum)/N);
    Y_env_normalized = (abs(envelope_spectrum)/N) / max_magnitude;
    % 绘制包络谱
    figure;
    plot(f, Y_env_normalized);
    title('CEEMDAN-SCBSE ball envelope spectra');
    xlabel('Frequency (Hz)');
    ylabel('Magnitude');
    xlim([0 500]);
end