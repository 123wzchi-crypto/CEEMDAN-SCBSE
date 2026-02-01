fs=12000;

numIMFs = size(modes, 1);


for i = 1:numIMFs
    
    analytic_signal = hilbert(modes(i, :));
    
    envelope = abs(analytic_signal);
    
    N = length(envelope); 
    f = (0:N-1)*(fs/N); 
    envelope_spectrum = fft(envelope); 
    
    max_magnitude = max(abs(envelope_spectrum)/N);
    Y_env_normalized = (abs(envelope_spectrum)/N) / max_magnitude;
    
    figure;
    plot(f, Y_env_normalized);
    title('CEEMDAN inner ring envelope spectra');
    xlabel('Frequency (Hz)');
    ylabel('Magnitude');
    ylim([0 0.6]);
    xlim([2 500]);
end