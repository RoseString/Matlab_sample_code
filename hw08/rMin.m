function min = rMin(vec)
    if length(vec) == 1 % if only one element
        min = vec(1);
    elseif length(vec) == 2 % base case
        if vec(1) >= vec(2)
            min = vec(2);
        else
            min = vec(1);
        end
    else % recursion calls
        if vec(1) >= vec(2)
            min = rMin([vec(2), vec(3:end)]);
        else
            min = rMin([vec(1), vec(3:end)]);
    end
end