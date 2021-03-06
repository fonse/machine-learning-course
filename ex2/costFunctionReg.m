function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta


h_X = sigmoid(X*theta);
J = -1/m * sum(y .* log(h_X) + (1-y) .* log(1 - h_X)) + (lambda / (2*m)) * (theta'*theta - theta(1)^2);

grad_unreg = 1/m * X' * (h_X - y);
reg_factor = lambda/m * theta;
reg_factor(1) = 0;

grad = grad_unreg + reg_factor;



% =============================================================

end
