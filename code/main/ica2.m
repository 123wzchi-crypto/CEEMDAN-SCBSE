%对峭度值大于4的imf进行ica
[icasig, A, W] = fastica(filtered_imfs2);
numICs = size(icasig, 1);
figure; 
for i = 1:numICs
    subplot(numICs, 1, i);
    plot(icasig(i, :), 'LineWidth', 2); 
    title(sprintf('Independent Component %d', i));
    if i == 1
        xlabel('Sample Index'); % 只在第一个子图设置x轴标签
    end
    ylabel('Amplitude'); 
end