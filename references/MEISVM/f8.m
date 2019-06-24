%{
    Feature 8: the vibration energy in the frequency domain
    @param s: a spectrum
    @param K: the number of spectrum lines
    @param F7: feature 7, the vibration energy in the frequency domain
    @return F8: feature 8
%}
function F8 = f8(s, K, F7)
    sum_numerator = 0.0
    for k=1:K
        sum_numerator = sum_numerator + (s(k) - F7) .^ 2
    end
    F8 = sum_numerator / (K - 1);
end
