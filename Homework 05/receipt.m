function receipt(tab)
    % get bill name
    [fileName, ~] = strtok(tab, '_');
    bill = [fileName, '_bill.txt'];
    % open input and output files
    input = fopen(tab);
    output = fopen(bill, 'w');
    % get first line
    line = fgetl(input);

    subtotal = 0;
    while ischar(line)
        fprintf(output, [line,'\n']);
        switch line
            % get rid of irrelevant lines
            case 'Tab'
            case '----------'
            otherwise
                % get quantity and price for each food
                [~, rest] = strtok(line, ':');
                [numbers, ~] = strtok(rest, ':');
                [quantity, rest] = strtok(numbers, '@');
                [price, ~] = strtok(rest, '@');
                quantity = str2num(quantity);
                price = str2num(price);
                % add that to the subtotal
                subtotal = subtotal + quantity .* price;
        end
        line = fgetl(input);
    end
    % round the subtotal down
    subtotal = floor(subtotal .* 100) / 100;
    % calculate the total, and round it down
    total = 1.08 .* subtotal;
    total = floor(total .* 100) / 100;
    % calculate the tip, and round it down
    tip = 0.15 .* total;
    tip = floor(tip .* 100) / 100;
    % calculate the payment
    payment = total + tip;
    % print rest of the bill
    fprintf(output, 'SUBTOTAL: $%2.2f\n', subtotal);
    fprintf(output, 'TOTAL: $%2.2f\n', total);
    fprintf(output, 'TIP: $%2.2f\n', tip);
    fprintf(output, 'PAYMENT: $%2.2f', payment);
    % close input and output files
    fclose(input);
    fclose(output);
end