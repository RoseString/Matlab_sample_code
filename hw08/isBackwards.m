function isReverse = isBackwards(str1, str2)
    % The main function is to remove spaces, punctuation, convert
    % both strings to lower case, and call the wrapper function
    str1 = lower(str1(isletter(str1) | isnumeric(str1)));
    str2 = lower(str2(isletter(str2) | isnumeric(str2)));
    isReverse = isBackwardsWrapper(str1, str2);
end

% a wrapper function to do the recursion calls
function isReverse = isBackwardsWrapper(str1, str2)
    if length(str1) ~= length(str2)
        isReverse = false;
    elseif length(str1) == 1 && length(str2) == 1  % base case
        if str1 == str2
            isReverse = true;
        else
            isReverse = false;
        end
    else  % recursive calls
        if str1(1) == str2(end)
            isReverse = isBackwards(str1(2:end), str2(1:end-1));
        else
            isReverse = false;
        end
    end
end