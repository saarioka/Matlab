function A = normalize_cols(A, p)
    
    if nargin == 1
        p = 2;
    end
    
    for c= 1:size(A,2)
        A(:,c) = A(:,c)./norm(A(:,c),p);
    end
    
end