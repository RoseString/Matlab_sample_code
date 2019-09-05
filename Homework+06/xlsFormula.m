function xlsOut = xlsFormula(xlsIn, formula)
    
    % get the output file name
    [name, ~] = strtok(xlsIn, '.');
    xlsOut = [name, '_new.xls'];
    
    % read the input xls
    [values, txt, raw] = xlsread(xlsIn);
    
    % get cols and operator
    [result, rest] = strtok(formula, '= ');
    [num1, rest] = strtok(rest, '=+-*/ ');
    operator = rest(1);
    num2 = rest(2);
    
    % get column numbers for result, num1, num2
    alpha = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    for i = 1: length(alpha)
        if strcmpi(result, alpha(i))
            colResult = i;
        end
        if strcmpi(num1, alpha(i))
            colNum1 = i;
        end
        if strcmpi(num2, alpha(i))
            colNum2 = i;
        end
    end
    
    % get num1 and num2 data
    dataNum1 = values(1:end, colNum1);
    dataNum2 = values(1:end, colNum2);
    
    % do the math
    switch operator
        case '+'
            dataResult = dataNum1 + dataNum2;
        case '-'
            dataResult = dataNum1 - dataNum2;
        case '*'
            dataResult = dataNum1 .* dataNum2;
        case '/'
            dataResult = dataNum1 ./ dataNum2;
    end
    
    % replace a particular column with results
    values(:, colResult) = dataResult;
    
    % concatenate txt and values
    % need to convert the double array to cell array first!
    xlsAll = [txt; num2cell(values)];
    
    % write results
    xlswrite(xlsOut, xlsAll);
    
end