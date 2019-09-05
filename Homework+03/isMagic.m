function log = isMagic(m)
    % calculate N
    N = length(m(:,1));
    % calculate the magic constant
    magicConstant = N .* (N.^2 + 1) ./ 2;
    % get a magic vector with N magic constants
    magicVec = zeros(1,N) + magicConstant;
    
    % if the column length and row length are equal
    log1 = length(m(:,1)) == length(m(1,:));
    % if the diagonal adds to the magic constant
    log2 = sum(diag(m)) == magicConstant;
    % if all columns add to the magic constant
    log3 = all(sum(m,1) == magicVec);
    % if all rows add to the magic constant
    log4 = all(sum(m,2)' == magicVec);
    
    % if all conditions are satisfied
    log5 = [log1 log2 log3 log4];
    log = all(log5);
end