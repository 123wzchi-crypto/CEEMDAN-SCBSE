addpath('C:\Users\dell\Desktop\Öá³Ğ´¦Àí´úÂë\IVA')
%mixedsig = [combined_signal; combined_signal2];
x=filtered_imfs2;
nfft=1024;
maxiter=5000;
tol=1e-6;
eta=0.1;
nsou=2;
[y, W] = ivabss(x, nfft, maxiter, tol, eta, nsou);
numICs = size(y, 1);
figure; 
for i = 1:numICs
    subplot(numICs, 1, i);
    plot(y(i, :), 'LineWidth', 2); 
    title(sprintf('Independent Component %d', i));
    if i == 1
        xlabel('Sample Index'); % åªåœ¨ç¬¬ä¸€ä¸ªå­å›¾è®¾ç½®xè½´æ ‡ç­?
    end
    ylabel('Amplitude'); 
end