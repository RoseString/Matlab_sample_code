function vertex = extrema(func)
    % extract a, b, c from the function using regular expression
    [nums rest] = strsplit(func, '\\s|x\^2|x|\+', 'delimitertype', 'RegularExpression');
    a = str2num(cell2mat(nums(1)));
    b = str2num(cell2mat(nums(2)));
    c = str2num(cell2mat(nums(3)));
    
    % calculate x and y
    x = -b./(2.*a);
    y = (4.*a.*c-b^2)./(4.*a);
    
    % merge x and y into a vector
    vertex = [x y];
end