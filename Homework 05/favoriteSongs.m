function [favoriteSong, cumulativeScore] = ...
                        favoriteSongs(first, second, third, scoreInput)
    % open the input file
    fh = fopen(scoreInput);
    % initialize cumulative scores
    firstScore = 0;
    secondScore = 0;
    thirdScore = 0;
    % read the first line
    line = fgetl(fh);
    while ischar(line)
        % get the song name and score of each line
        [songName, rest] = strtok(line, ':');
        [score, ~] = strtok(rest, ': ');
        % add score to cumulative scores based on the song name
        switch songName
            case first
                firstScore = firstScore + str2num(score);
            case second
                secondScore = secondScore + str2num(score);
            case third
                thirdScore = thirdScore + str2num(score);
        end
        % read the next line
        line = fgetl(fh);
    end
    scores = [firstScore, secondScore, thirdScore];
    songNames = {first, second, third};
    % get the song with the maximal cumulative score
    [cumulativeScore, index] = max(scores);
    favoriteSong = songNames{index};
    % close the input file
    fclose(fh);
end