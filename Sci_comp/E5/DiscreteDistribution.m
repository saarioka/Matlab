classdef DiscreteDistribution
    properties
        P double {mustBeNonnegative, mustBeLessThanOrEqual(P,1),...
            mustSumTo1}
    end
    methods
        function A = random(obj, varargin)
            u = rand;
            A = zeros(varargin{:});
            for k = 1:numel(A)
                cumulative = cumsum(p);
            end
        end
    end
end

function rval = mustSumTo1(p)
   psum = sum(p(:));
   if abs(psum-1) < numel(p)*eps
       rval = true;
   else
       rval = false;
   end
end