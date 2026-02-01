kurtosis_values = zeros(size(modes, 1), 1); 
for i = 1:size(modes, 1)
    kurtosis_values(i) = kurtosis(modes(i, :)); 
end

for i = 1:length(kurtosis_values)
    fprintf('The kuitosis of %d imf is：%f\n', i, kurtosis_values(i));
end
