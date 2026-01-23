% 原始数据时域频域包络谱
data = signalSegment; 
fs=12000;
% 绘制时域信号
figure;
plot(data);
title('12k Drive End Bearing Fault Data');
xlabel('Time (samples)');
ylabel('Amplitude');

% 进行傅里叶变换以分析频率成分
N = length(data); % 信号长度
f = (0:N-1)*(fs/N); % 频率向量
Y = fft(data); % 傅里叶变换

% 绘制频谱
figure;
plot(f, abs(Y)/N);
title('Frequency Spectrum of 12k Drive End Bearing Fault Data');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
xlim([0 fs/2]); % 限制x轴显示到Nyquist频率
% 计算解析信号
analytic_signal = hilbert(data);

% 提取包络
envelope = abs(analytic_signal);

% 进行傅里叶变换以分析包络谱
Y_env = fft(envelope); % 傅里叶变换

% 归一化处理：使得最大值为1
max_magnitude = max(abs(Y_env)/N);
Y_env_normalized = (abs(Y_env)/N) / max_magnitude;

% 绘制归一化包络谱
figure;
plot(f, Y_env_normalized);
title('Normalized Envelope Spectrum of 12k Drive End Bearing Fault Data');
xlabel('Frequency (Hz)');
ylabel('Normalized Magnitude');
xlim([0 1000]); % 限制x轴显示到Nyquist频率