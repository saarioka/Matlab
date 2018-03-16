function s = step2(t)
% STEP2  A step function

assert(isfloat(t), 'The argument must be a floating point array')

s = zeros(size(t));
for k = 1:numel(t)
    s(k) = stepaux(t(k));
end

function s = stepaux(t) % A local function
if t < 1
    s = -1;
else
    s = 3;
end