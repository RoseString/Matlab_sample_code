function powerPerson = powerHolder(conversation)
    % open the input file
    fh = fopen(conversation);
    % get the first line
    line = fgetl(fh);
    lastLine = '';
    while ischar(line)
        % use the blank last line as an indicator of a new message
        % get the name of the person
        if isempty(lastLine)
            [name, line] = strtok(line, ':');
        end
        % use regex to fetch goodnight
        % if found, the variable name is the power holder's name
        if ~isempty(regexpi(line, 'goodnight', 'match'))
            powerPerson = name;
            break;
        end
        % the current line become the last line
        lastLine = line;
        % get the next line
        line = fgetl(fh);
    end
    % close the file
    fclose(fh);
end