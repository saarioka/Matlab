function x = sqrt_square(x, n)
% SQRT_SQUARE takes square root of x n times and squares it n times

    assert(all(all(x>=0)>=0), 'x must be positive')
    
    assert(round(n) == n, 'n must be an integer')
    
    for root = 1:n
        x = sqrt(x);
    end
    
    for exp = 1:n
        x = x.^2;
    end
    
end
