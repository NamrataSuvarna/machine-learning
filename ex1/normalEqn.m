function [theta] = normalEqn(X, y)
%NORMALEQN Computes the closed-form solution to linear regression 
%   NORMALEQN(X,y) computes the closed-form solution to linear 
%   regression using the normal equations.

theta = zeros(size(X, 2), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the code to compute the closed form solution
%               to linear regression and put the result in theta.
%

% ---------------------- Sample Solution ----------------------

% **********suvarna.p.namrata@gmail.com**********
theta=inv(X'*X)*X'*y;
% **********suvarna.p.namrata@gmail.com**********

% -------------------------------------------------------------


% ============================================================

end
