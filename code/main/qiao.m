% 计算每个IMF分量的峭度值
kurtosis_values = zeros(size(modes, 1), 1); 
for i = 1:size(modes, 1)
    kurtosis_values(i) = kurtosis(modes(i, :)); 
end

% 显示每个IMF分量的峭度值
for i = 1:length(kurtosis_values)
    fprintf('IMF%d的峭度值为：%f\n', i, kurtosis_values(i));
end

figure;
bar(kurtosis_values);
xlabel('IMF分量');
ylabel('峭度值');
title('各IMF分量的峭度值');