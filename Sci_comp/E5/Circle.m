classdef Circle
    % Circle A class to represent circles.
     properties
         Center(1,2) double {ismatrix, mustBeReal} = [0 0];
         Radius double {mustBePositive, mustBeReal} = 1;
     end
     
     methods
         % Constructor. Constructs a new circle.
         % Default value for center is [0 0] and for Radius 1
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
             % Plots the circle.
             h = rectangle('Position', ...
                [obj.Center-obj.Radius 2*obj.Radius 2*obj.Radius],...
                'Curvature', [1 1], varargin{:});
         end
         
         function sum = plus(a, b)
             % Adds the radii and center of 2 circles and returns
             % a handle to the created circle.
             sum = Circle(a.Center + b.Center, a.Radius+b.Radius);
         end
             
     end
end