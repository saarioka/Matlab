function s = step1(t)
% STEP1  A step function

assert(isfloat(t), 'The argument must be a floating point array.')

s = arrayfun(@stepaux, t);

function s = stepaux(t) % A local function
if t < 1
    s = -1;
else
    s = 3;
end