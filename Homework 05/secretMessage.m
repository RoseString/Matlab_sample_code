function secretMessage = secretMessage(message)
    % open the message
    fh = fopen(message);
    % get the first line
    line = fgetl(fh);
    % initialize isFirstWord variable
    isFirstWord = true;
    while ischar(line)
        % read the first word of the line
        [word, rest] = strtok(line, ' ');
        while ~isempty(word)
            % read through this word
            for i = 1:length(word)
               log(i) = strcmp(word(i), lower(word(i)));
            end
            % see if this word contains capital letter
            % is so, see if this is the first word
            % the first word won't have a space preceding it
            % other words will have spaces before them
            if ~all(log) && isFirstWord
                secretMessage = upper(word);
                isFirstWord = false;
            elseif ~all(log) && ~isFirstWord
                secretMessage = [secretMessage, ' ', upper(word)];
            end
            % read the next word
            [word, rest] = strtok(rest, ' ');
        end
        % read the next line
        line = fgetl(fh);
    end
    % close the file
    fclose(fh);
end