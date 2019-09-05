function answer = ugaMath(expression)
    % first number
    [answer rest]= strtok(expression, '+-*/^');
    answer = str2num(answer);
    % a while loop to get a number and an operator each time
    while (length(rest) ~= 0)
        [operator rest]= strtok(rest, '0123456789 ');
        [num rest] = strtok(rest, '+-*/^ ');
        num = str2num(num);
        % do the math
        switch operator
            case '+'
                answer = answer + num;
            case '-'
                answer = answer - num;
            case '*'
                answer = answer .* num;
            case '/'
                answer = answer ./ num;
            case '^'
                answer = answer .^ num;
        end    
    end
end