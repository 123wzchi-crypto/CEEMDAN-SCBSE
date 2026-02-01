filtered_imfs2 = [];

for i = 1:size(modes, 1)
    kurt_value = kurtosis(modes(i, :)); 
    if kurt_value > 3 
        filtered_imfs2 = [filtered_imfs2; modes(i, :)]; 
    end
end

combined_signal2 = sum(filtered_imfs2, 1); 

plot(combined_signal2);
title('Combined Signal of IMFs with Kurtosis > 4');
xlabel('Sample Index');
ylabel('Amplitude');

filtered_imfs1 = [];

for i = 1:size(modes, 1)
    kurt_value = kurtosis(modes(i, :)); 
    if kurt_value < 3 
        filtered_imfs = [filtered_imfs1; modes(i, :)]; 
    end
end

combined_signal1 = sum(filtered_imfs1, 1); 

plot(combined_signal1);
title('Combined Signal of IMFs with Kurtosis < 4');
xlabel('Sample Index');
ylabel('Amplitude');

mixedsig = [imf2;combined_signal1;combined_signal2];

[icasig, A, W] = fastica(mixedsig);
numICs = size(icasig, 1);
figure; 
for i = 1:numICs
    subplot(numICs, 1, i);
    plot(icasig(i, :), 'LineWidth', 0.5); 
    title(sprintf('Independent Component %d', i));
    if i == 1
        xlabel('Sample Index'); 
    end
    ylabel('Amplitude'); 
    xlim([0,500])

end

for i = 1:size(icasig, 1)
    
    analytic_signal = hilbert(icasig(i, :));
    envelope = abs(analytic_signal);
    
    N = length(envelope); 
    f = (0:N-1)*(fs/N); 
    envelope_spectrum = fft(envelope); 
    
    max_magnitude = max(abs(envelope_spectrum)/N);
    Y_env_normalized = (abs(envelope_spectrum)/N) / max_magnitude;
    
    figure;
    plot(f, Y_env_normalized);
    title('CEEMDAN-SCBSE ball envelope spectra');
    xlabel('Frequency (Hz)');
    ylabel('Magnitude');
    xlim([0 500]);
end
