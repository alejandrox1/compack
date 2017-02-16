classdef LaxWen < Flux.NumFlux
%LAXWEN   Lax-Wendroff numerical flux for the linear advection equation.
	
	
	properties
		name = 'Lax-Wendroff'
	end
	
	methods
		function ret = F(o, d, Ul, Ur, t, dt, varargin)
			dx = o.mesh.dx{d};
			ret = 0.5*(o.f(Ul, d) + o.f(Ur, d)) ...
				- 0.5*(dt/dx).*o.f(o.f(Ur, d) - o.f(Ul, d), d);
		end
	end
end
