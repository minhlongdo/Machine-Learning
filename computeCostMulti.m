function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples
n = size(X,2); % size of X

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

tempRow = [];
result = [];

%for all thetas
for r=1:m
    for c=1:n
        tempRow(c) = theta(c) .* X(r,c);
    end
    result(r) = (sum(tempRow) - y(r))^2;
    fprintf('%i. row result: %i\n\n', r, result(r));
    tempRow = 0;
end

J = sum(result)/(2*m);

% =========================================================================

end
