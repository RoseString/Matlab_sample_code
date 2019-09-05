function nextSong = pandora(nowPlaying, potentialSongs)
    % initialize a scores list
    scores = [];
    % loop through the potential songs 
    % and compare each one of them with the song that is now playing
    for songIdx = 1:length(potentialSongs)
        % get the song to compare from the potentil songs list
        songToCompare = potentialSongs(songIdx);
        
        % compare the genre field
        % first, see if their genres are the same
        if strcmp(nowPlaying.Genre.Genre, songToCompare.Genre.Genre)
            score = 0.25; 
        else
            switch songToCompare.Genre.Genre
                case nowPlaying.Genre.RelatedGenres
                    score = 0.25 .* 0.75;
                otherwise
                    score = 0;
            end
        end
        
        % compare the key
        if strcmp(nowPlaying.Key, songToCompare.Key)
            score = score + 0.2;
        end
        
        % compare the vocals
        if strcmp(nowPlaying.Vocals, songToCompare.Vocals)
            score = score + 0.2;
        end
        
        % compare the driving instrument
        if strcmp(nowPlaying.DrivingInstrument.Instrument,...
                  songToCompare.DrivingInstrument.Instrument)
            score = score + 0.25; 
        else
            switch songToCompare.DrivingInstrument.Instrument
                case nowPlaying.DrivingInstrument.RelatedInstruments
                    score = score + 0.25 .* 0.75;
            end
        end
        
        % compare the popularity
        difference = abs(nowPlaying.Popularity - songToCompare.Popularity);
        score = score + 0.1 .* ((100 - difference) ./ 100);
        
        scores(songIdx) = score;
    end
    % get the index of the song that has the highest score
    [~, index] = max(scores);
    % get the title of the next song
    nextSong = potentialSongs(index).Title;
end