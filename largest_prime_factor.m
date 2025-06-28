function largest = largest_prime_factor(n)
    % This function finds the largest prime factor of a given number n  
    % Example usage:  
    % >> largest_prime_factor(2287946) 

    factor = 2;  % Start with the smallest prime number 

    while factor^2 <= n
        if mod(n, factor) == 0
            n = n / factor;  % If divisible, reduce n
        else
            factor = factor + 1;  % Otherwise, try the next number 
        end
    end

    largest = n;  % Largest prime factor
    fprintf('Largest prime factor: %d\n', largest);
end