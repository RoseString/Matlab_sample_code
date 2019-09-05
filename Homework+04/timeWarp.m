function hiddenStr = timeWarp(start, dirs, spaces, letters)
    dir = ' ';
    position = start;
    hiddenStr = letters(start(1), start(2));
    while (dir ~= 'e')
        dir = dirs(position(1), position(2));
        space = spaces(position(1), position(2));
        % find the next code
        switch dir
            case 'r'
                position(2) = position(2) + space;
            case 'l'
                position(2) = position(2) - space;
            case 'd'
                position(1) = position(1) + space;
            case 'u'
                position(1) = position(1) - space;
            case 'e' % when hit an 'e', break
                break;
        end
        letter = letters(position(1), position(2));
        % concatenate the string
        hiddenStr = [hiddenStr, letter];        
    end
end