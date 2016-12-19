function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% Set number of examples 
m = size(X,1);

% You need to return the following variables correctly.
idx = zeros(m, 1);



% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%


for i = 1:m,
	x_i = X(i,:);
	J = sum((centroids - x_i) .^ 2, 2); % size = k * 1, distortion of x_i with each centroids 
	[min_J, idx(i)] = min(J);
end;






% =============================================================

end

