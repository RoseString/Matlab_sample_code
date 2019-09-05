function code = caesar(str, shift)
    % get letters mask
    lowerMask = (str>=97 & str<=122);
    upperMask = (str>=65 & str<=90);
    % shift lower letters
    str(lowerMask) = str(lowerMask) + mod(shift, 26);
    str(lowerMask & str > 'z') = str(lowerMask & str > 'z') - 26;
    % shift upper letters
    str(upperMask) = str(upperMask) + mod(shift, 26);
    str(upperMask & str > 'Z') = str(upperMask & str > 'Z') - 26;
    
    code = str;
end