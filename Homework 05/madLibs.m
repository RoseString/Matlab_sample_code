function madLibs(story, words)
    % open input files
    fh1 = fopen(story);
    fh2 = fopen(words);
    % get the name of the output file
    basename = strtok(story, '.');
    filename = [basename, '_fixed.txt'];
    % open output files
    fh3 = fopen(filename, 'w');
    
    % the following is to store words into 3 cell arrays
    % read the first line of the words
    % get all nouns
    nounsLine = fgetl(fh2);
    [word, rest] = strtok(nounsLine, ',');
    i = 0;
    while ~isempty(word)
        i = i + 1;
        nouns{i} = word;
        [word, rest] = strtok(rest, ',');
    end
    % get all verbs
    verbsLine = fgetl(fh2);
    [word, rest] = strtok(verbsLine, ',');
    i = 0;
    while ~isempty(word)
        i = i + 1;
        verbs{i} = word;
        [word, rest] = strtok(rest, ',');
    end
    % get all adjectives
    adjsLine = fgetl(fh2);
    [word, rest] = strtok(adjsLine, ',');
    i = 0;
    while ~isempty(word)
        i = i + 1;
        adjs{i} = word;
        [word, rest] = strtok(rest, ',');
    end
    
    % the following is to read lines of the story
    % and replace all keys with their corresponding words
    % read the first line of the story
    line = fgetl(fh1);
    nounsCounter = 0;
    verbsCounter = 0;
    adjsCounter = 0;
    while ischar(line)
        if ~isempty(line)
            % see is one line has trailing space
            hasTrailingSpace = isspace(line(end));
            % read the first word
            [word, rest] = strtok(line, ' ');
            isFirstWord = true; % see if the word is the first one
            while ~isempty(word)
                if length(word) >= 2
                    % replace word with %n, %v or %a
                    switch word(1:2)
                        case '%n' % if the word is a noun, replace it
                            nounsCounter = nounsCounter + 1;
                            if isFirstWord
                                fprintf(fh3, nouns{nounsCounter});
                                isFirstWord = false;
                            else
                                fprintf(fh3, [' ', nouns{nounsCounter}]);
                            end
                            if length(word) >= 3
                                fprintf(fh3, word(3:end));
                            end
                        case '%v' % if the word is a verb, replace it
                            verbsCounter = verbsCounter + 1;
                            if isFirstWord
                                fprintf(fh3, verbs{verbsCounter});
                                isFirstWord = false;
                            else
                                fprintf(fh3, [' ', verbs{verbsCounter}]);
                            end
                            if length(word) >= 3
                                fprintf(fh3, word(3:end));
                            end
                        case '%a' % if the word is an adj, replace it
                            adjsCounter = adjsCounter + 1;
                            if isFirstWord
                                fprintf(fh3, adjs{adjsCounter});
                                isFirstWord = false;
                            else
                                fprintf(fh3, [' ', adjs{adjsCounter}]);
                            end
                            if length(word) >= 3
                                fprintf(fh3, word(3:end));
                            end
                        otherwise % for other words, just simply print out
                            if isFirstWord
                                fprintf(fh3, word);
                                isFirstWord = false;
                            else
                                fprintf(fh3, [' ', word]);
                            end
                 
                    end
                else % add punctuation to %n, %v and %a if they have one
                    if isFirstWord
                        fprintf(fh3, word);
                        isFirstWord = false;
                    else
                        fprintf(fh3, [' ', word]);
                    end
                end
                    % read the next word
                    [word, rest] = strtok(rest, ' ');   
            end
            % if the original line has a trailing space
            % print one
            if hasTrailingSpace
                fprintf(fh3, ' ');
            end
        else % for blank lines, just simply print out
            fprintf(fh3, line);
        end
        % read the next line
        line = fgetl(fh1);
        % this is to prevent a new line character for the last line
        if ischar(line)
            fprintf(fh3, '\n');
        end
    end

    % close all files
    fclose(fh1);
    fclose(fh2);
    fclose(fh3);
end