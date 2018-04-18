clear
clc
p = [0.3, 0.1, 0.2, 0.1, 0.3];
u = rand;
A = zeros(5);

cumulative = cumsum(p);
for k = 1:numel(A)
    if(cumulative(k) > u)
        break;
    end
end
