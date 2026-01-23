addpath('C:\Users\dell\Desktop\Öá³Ğ´¦Àí´úÂë\FastICA')
%å¯¹å…¨éƒ¨imfå›¾è¿›è¡Œica
mixedsig = [filtered_imfs; filtered_imfs2];

[icasig, A, W] = fastica(filtered_imfs2);
numICs = size(icasig, 1);
figure; 
for i = 1:numICs
    subplot(numICs, 1, i);
    plot(icasig(i, :), 'LineWidth', 2); 
    title(sprintf('Independent Component %d', i));
    if i == 1
        xlabel('Sample Index'); % åªåœ¨ç¬¬ä¸€ä¸ªå­å›¾è®¾ç½®xè½´æ ‡ç­?
    end
    ylabel('Amplitude'); 
end