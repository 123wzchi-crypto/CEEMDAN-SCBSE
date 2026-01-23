%峭度值小于4放一组
filtered_imfs = [];

for i = 1:size(modes, 1)
    kurt_value = kurtosis(modes(i, :)); % 计算当前IMF的峭度值
    if kurt_value < 3;% 判断峭度值是否小于4
        filtered_imfs = [filtered_imfs; modes(i, :)]; % 将峭度值小于4的IMF添加到filtered_imfs中
    end
end

% 叠加筛选后的IMF分量
combined_signal = sum(filtered_imfs, 1); % 沿着行方向叠加，即按IMF分量叠加

% 绘制叠加后的信号
plot(combined_signal);
title('Combined Signal of IMFs with Kurtosis < 4');
xlabel('Sample Index');
ylabel('Amplitude');