classdef Circle
    % Circle A class to represent circles.
     properties
         Center = [0 0];
         Radius = 1;
     end
     methods
         % Constructor. Constructs a new circle.
         % Radius must be positive. 
         % If no radius is given, the default value of 1 is used.
         function obj = Circle(a, b)
             narginchk(0,2);
             
             if nargin == 1
                 
                 % only radius given
                 if ~ismatrix(a)
                    assert(a > 0, 'Radius must be positive')
                    obj.Radius = a;
                    return
                    
                 %only center given
                 else
%                     assert(size(a,1) == 1 && size(a,2) == 2, 'Bad center');
                    obj.Center = a;
                    return
                 end
             end
                 
             assert(size(a,1) == 1 && size(a,2) == 2, 'Bad center');
             assert(b > 0, 'Radius must be positive')
             
             obj.Radius = b;
             obj.Center = a;
           
         end
         
         function h = plot(obj, varargin)
            rectangle('Position', [obj.Center obj.Radius obj.Radius], 'Curvature', [1 1])
            axis equal
         end
     end
 end