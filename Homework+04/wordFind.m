function location = wordFind(grid, word)
    [nrow,ncol] = size(grid);
    l = length(word);
    found = false;
    position = [0 0];
    dir = ' ';
    % two for-loops to go through every cell of the matrix
    for r = 1:nrow,
        for c = 1:ncol,
            letter = grid(r,c);
            % if the cell matches the first letter of the word
            % then compare strings in 4 directions
            if lower(letter) == lower(word(1))
                % go up
                if r >= l
                    if strcmpi(grid(r:-1:r-l+1,c)', word)
                        found = true;
                        position = [r c];
                        dir = 'up';
                        break; % if found, break the inner loop
                    end
                end
                % go down
                if (nrow-r+1) >= l
                    if strcmpi(grid(r:r+l-1,c)', word)
                        found = true;
                        position = [r c];
                        dir = 'down';
                        break; % if found, break the inner loop
                    end
                end
                % go left
                if c >= l
                    if strcmpi(grid(r,c:-1:c-l+1), word)
                        found = true;
                        position = [r c];
                        dir = 'left';
                        break; % if found, break the inner loop
                    end
                end
                % go right
                if (ncol-c+1) >= l
                    if strcmpi(grid(r,c:c+l-1), word)
                        found = true;
                        position = [r c];
                        dir = 'right';
                        break; % if found, break the inner loop
                    end
                end
            end        
        end
        if found == true % if found, break the outer loop
            break;
        end
    end
    % check if the word is found
    % if found, print the position, and the direction
    if found == true
        location = sprintf('The word starts in column %d, row %d, and goes %s.',...
                            position(2), position(1), dir);
    else
        location = sprintf('The word does not exist.');
    end
end