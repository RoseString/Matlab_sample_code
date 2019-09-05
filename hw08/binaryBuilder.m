function binary = binaryBuilder(int)
    if int < 2 % base case
        binary = num2str(rem(int, 2));
    else % recursion calls
        binary = [binaryBuilder(floor(int ./ 2)), num2str(rem(int, 2))];
    end   
end