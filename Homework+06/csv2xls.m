function xls = csv2xls(csv, txt)
    % get the name of the output file
    [name, ~] = strtok(csv, '.');
    xls = [name, '.xls'];
    
    % read the csv file using high level file I/O
    values = dlmread(csv, ',');
    
    % read the txt file using low level file I/O
    % store the headers to the 'headers' cell array
    fh = fopen(txt);
    line = fgetl(fh);
    headers = {};
    n = 1;
    while ischar(line)
        headers{n} = line;
        line = fgetl(fh);
        n = n + 1;
    end
    
    % combine value and headers
    data = [headers; num2cell(values)];
    
    % sort headers and relocate all columns
    [~, I] = sort(headers);
    data = data(:,I);
    
    % write the data to the xls file
    xlswrite(xls, data);
end