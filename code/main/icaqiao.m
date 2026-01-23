% 计算每个ICA分量的峭度值
kurtosis_values = zeros(size(icasig, 1), 1); % 初始化峭度值数组
for i = 1:size(icasig, 1)
    kurtosis_values(i) = kurtosis(icasig(i, :)); % 计算第i个IMF的峭度
end

% 显示每个IMF分量的峭度值
for i = 1:length(kurtosis_values)
    fprintf('IMF%d的峭度值为：%f\n', i, kurtosis_values(i));
end

% 绘制峭度值的柱状图
figure;
bar(kurtosis_values);
xlabel('IMF分量');
ylabel('峭度值');
title('各IMF分量的峭度值');