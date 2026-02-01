x=mixedsig;
nfft=1024;
maxiter=3000;
tol=1e-6;
eta=0.000001;
nsou=3;
[y, W] = ivabss(x, nfft, maxiter, tol, eta, nsou);
numICs = size(y, 1);
figure; 
for i = 1:numICs
    subplot(numICs, 1, i);
    plot(y(i, :), 'LineWidth', 0.5); 
    title(sprintf('Independent Component %d', i));
    if i == 1
        xlabel('Sample Index'); 
    end
    ylabel('Amplitude'); 
    xlim([0,2048]);
end
[U, S, V] = svd(y);

singular_values = diag(S);
singular_values = singular_values / sum(singular_values);

svd_entropy = -sum(singular_values .* log(singular_values + eps));

fprintf('The singular value of Martix: %.4f\n', svd_entropy);