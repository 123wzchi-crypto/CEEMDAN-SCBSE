%峭度值大于4放一组
filtered_imfs2 = [];

for i = 1:size(modes, 1)
    kurt_value = kurtosis(modes(i, :)); % 计算当前IMF的峭度值
    if kurt_value > 3 % 判断峭度值是否大于4
        filtered_imfs2 = [filtered_imfs2; modes(i, :)]; % 将峭度值大于4的IMF添加到filtered_imfs中
    end
end

% 叠加筛选后的IMF分量
combined_signal2 = sum(filtered_imfs2, 1); % 沿着行方向叠加，即按IMF分量叠加

% 绘制叠加后的信号
plot(combined_signal2);
title('Combined Signal of IMFs with Kurtosis > 4');
xlabel('Sample Index');
ylabel('Amplitude');