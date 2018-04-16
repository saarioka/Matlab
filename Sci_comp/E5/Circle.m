
classdef Circle
    % Circle A class to represent circles.
     properties
         Center(1,2) double {ismatrix } = [0 0];
         Radius double {mustBePositive} = 1;
     end
     methods
         % Constructor. Constructs a new circle.
         % Radius must be positive. 
         % If no radius is given, the default value of 1 is used.
         function obj = Circle(a, b)
             narginchk(0,2);
             
             if nargin == 1
                 if isscalar(a)
                     % only radius given
                     obj.Radius = a;
                 else
                     % only center given
                     obj.Center = a;
                 end
             elseif nargin == 2
                obj.Center = a;
                obj.Radius = b;
             end
         end
         
         function h = plot(obj, varargin)
             h = rectangle('Position', ...
                [obj.Center-obj.Radius 2*obj.Radius 2*obj.Radius],...
                'Curvature', [1 1], varargin{:});
             axis equal;
         end
         
         function rval = plus(a, b)
             rval = Circle(a.Center + b.Center, a.Radius+b.Radius);
         end
             
     end
 end