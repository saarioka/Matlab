function y = cantor(x, n)
% Computes the nth approximation to the Cantor function

assert(n>0, 'n must be positive')
assert(round(n) == n, 'n must be an integer')

y=x;
for i=1:length(x)
    y(i) = cantor_aux(x(i), n);
end

end

function return_value = cantor_aux(x, n)
% Used in cantor(x, n)

if (n == 0)
    return_value = x;
    
elseif 0 <= x && x <= 1/3
    return_value = 1/2.*cantor_aux(3*x, n-1);
        
elseif 1/3 < x && x <= 2/3
    return_value = 1/2;
        
elseif 2/3 < x && x <= 1
    return_value = 1/2 + 1/2.*cantor_aux(3.*x-2, n-1);
        
else
    disp('Something went wrong')
    
end

end