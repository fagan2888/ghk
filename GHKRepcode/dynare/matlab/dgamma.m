function f = dgamma(x,a,b)
%DGAMMA   The gamma density function
%
%         f = dgamma(x,a)

%       Anders Holtsberg, 18-11-93
%       Copyright (c) Anders Holtsberg

if any(any(a<=0))
   error('Parameter a is wrong')
end

f = (x./b) .^ (a-1) .* exp(-x./b) ./ (b.*gamma(a));
I0 = find(x<0);
f(I0) = zeros(size(I0));
