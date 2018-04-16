classdef DiscreteDistribution
    properties
        P double {mustBeNonnegative, mustBeLessThanOrEqual(P,1),...
            mustSumTo1}
    end
    methods
        function obj = DiscreteDistribution(p)
            
        end
        
        function A = random(obj, varargin)
            u = rand(obj, varargin);
            A = zeros(varargin{:});
            cumulative = cumsum(p);
            for k = 1:numel(A)
                cumulative = cumsum(p(1:k));
            end
        end
    end
end

% todo
function rval = mustSumTo1(p)
   psum = sum(p(:));
   if abs(psum-1) < numel(p)*eps
       rval = true;
   else
       rval = false;
   end
end