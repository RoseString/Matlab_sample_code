function [playersWithEarnings, winner] = jeopardy(board, players, clues)
    % initialize the earnings with 0s
    earnings = zeros(length(players), 1)';
    % loop through each clue
    for clueIdx = 1:length(clues)
        % get the right answer for that clue
        questionIdx = clues{clueIdx};
        rightAnswer = board(questionIdx(1), questionIdx(2)).answer;
        
        % give earnings (can be negative) to players 
        % who answered that question
        n = 1; % represents the first player who buzzes in
        found = false;
        while n <= length(players)
            % look for the nth player who buzzes in
            for playerIdx = 1:length(players)
                if n == players(playerIdx).order(clueIdx)
                    % when find the nth player
                    % compare his/her answer with the right answer
                    playerAnswer = players(playerIdx).answer(clueIdx);
                    if strcmpi(rightAnswer, playerAnswer)
                        % add the value to the player's earning
                        earnings(playerIdx) = earnings(playerIdx) + ...
                               board(questionIdx(1), questionIdx(2)).value;
                        found = true;
                        break;
                    else
                        % if the player got the answer wrong
                        % go to the next player
                        n = n + 1;
                        % substract the value from the player's earning
                        earnings(playerIdx) = earnings(playerIdx) - ...
                               board(questionIdx(1), questionIdx(2)).value;
                    end
                end
            end
            % if already find the player who gives the right answer
            % exit the while loop
            if found 
                break;
            end
        end
    end
    % convert the double vector to a cell
    earningsCell = num2cell(earnings);
    % assign the cell to the new structure field 'earnings'
    [players(:).earnings] = deal(earningsCell{:});
    playersWithEarnings = players;
    % get the winner
    [~, index] = max(earnings);
    winner = players(index).name;
end