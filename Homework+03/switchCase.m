function modifiedStr = switchCase(str, aCase)
    switch aCase
        % title case
        case {'Title Case'}
            str = lower(str);
            firstLetterIndices = [1 find(isspace(str)) + 1];
            str(firstLetterIndices) = upper(str(firstLetterIndices));
        % camel case
        case {'Camel Case'}
            str = lower(str);
            firstLetterIndices = find(isspace(str)) + 1;
            str(firstLetterIndices) = upper(str(firstLetterIndices));
            str = str(~isspace(str));
        % Da Vinci case 
        case {'Da Vinci'}
            str = fliplr(str);
        % 1337 case
        case {'1337'}
            str(lower(str)=='l') = '1';
            str(lower(str)=='z') = '2';
            str(lower(str)=='e') = '3';
            str(lower(str)=='a') = '4';
            str(lower(str)=='s') = '5';
            str(lower(str)=='g') = '6';
            str(lower(str)=='t') = '7';
            str(lower(str)=='b') = '8';
            str(lower(str)=='j') = '9';
            str(lower(str)=='o') = '0';
    end
    modifiedStr = str;
end