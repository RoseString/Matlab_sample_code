function result = rpsls(move1, move2)
    if strcmp(move1, move2) % if it is a tie
        result = 'It''s a tie!';
    elseif strcmp(move1, 'rock') & (strcmp(move2, 'scissors') | ...
           strcmp(move2, 'lizard'))
        result = 'Player 1 wins!';
    elseif strcmp(move1, 'paper') & (strcmp(move2, 'rock') | ...
           strcmp(move2, 'spock'))
        result = 'Player 1 wins!';
    elseif strcmp(move1, 'scissors') & (strcmp(move2, 'paper') | ...
           strcmp(move2, 'lizard'))
        result = 'Player 1 wins!';
    elseif strcmp(move1, 'lizard') & (strcmp(move2, 'paper') | ...
           strcmp(move2, 'spock'))
        result = 'Player 1 wins!';
    elseif strcmp(move1, 'spock') & (strcmp(move2, 'rock') | ...
           strcmp(move2, 'scissors'))
        result = 'Player 1 wins!';
    else % if none of above are satisfied, player 2 wins
        result = 'Player 2 wins!';
    end
end
