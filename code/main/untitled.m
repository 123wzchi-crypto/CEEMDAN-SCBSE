% 定义参数
fs = 12000;       % 采样频率，单位 Hz
f = 139.2;        % 信号频率，单位 Hz
N = 10000;        % 样本点数
A = 0.035;            % 幅值

% 计算信号的持续时间
T = N / fs;

% 创建时间向量
t = linspace(0, T, N);

% 生成正弦信号
signal = A * sin(2 * pi * f * t);
imf3=modes(3,:)+signal;