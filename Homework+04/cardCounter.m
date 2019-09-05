function hotOrCold = cardCounter(cards)
    tally = 0;
    % draw a card and calculate the tally
    for i = 1:length(cards),
        switch cards(i)
            case {'2', '3', '4', '5', '6'}
                tally = tally + 1;
            case {'T', 'J', 'Q', 'K', 'A'}
                tally = tally - 1;
        end
    end
    
    % if tally > 0, hot
    % if tally <= 0, cold
    if tally > 0
        hotOrCold = sprintf('The table has a hot count of %d, come play!', tally);
    else
        hotOrCold = sprintf('The table has a cold count of %d, try your luck at slots.', ...
                            tally);
    end
end