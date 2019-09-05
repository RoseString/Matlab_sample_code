function officers = policeRoster(xls)
    % high-level file I/O to read the xls file
    [~,~,raw] = xlsread(xls);
    % get field names
    fields = raw(:, 1);
    % give fields and corresponding values to the structure 'officers'
    for i = 1: length(fields)
        % get values for that field
        values = raw(i, 2:end);
        officers.(fields{i}) = values;
    end
end