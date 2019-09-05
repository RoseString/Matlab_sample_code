function mixed = interweave(vec1, vec2)
    % give 0 to remaining slots of the shorter vector
    if (length(vec1) > length(vec2))
        vec2(end + 1 : length(vec1)) = 0;
    elseif (length(vec2) > length(vec1))
        vec1(end + 1 : length(vec2)) = 0;
    end
    
    % merge two vectors into a matrix
    mat = [vec1;vec2];
    % reshape the matrix to a vector
    mixed = reshape(mat, 1, []);
end