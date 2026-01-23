%每个imf的包络谱
fs=15200;
% 获取IMF的数量
numIMFs = size(modes, 1);

% 为每个IMF创建包络谱
for i = 1:7
    % 计算第i个IMF的解析信号
    analytic_signal = hilbert(modes(i, :));
    
    % 计算解析信号的模得到包络
    envelope = abs(analytic_signal);
    
    % 计算包络的傅里叶变换
    N = length(envelope); % 包络信号的长度
    f = (0:N-1)*(fs/N); % 频率向量
    envelope_spectrum = fft(envelope); % 傅里叶变换
    
    % 归一化处理：使得最大值为1
    max_magnitude = max(abs(envelope_spectrum)/N);
    Y_env_normalized = (abs(envelope_spectrum)/N) / max_magnitude;
    % 绘制第i个IMF的包络谱
    figure;
    plot(f, Y_env_normalized);
    title(sprintf('CEEMDAN-SCBSE ball envelope spectra'));
    xlabel('Frequency (Hz)');
    ylabel('Normalized amplitude');
    xlim([0 500]);
end