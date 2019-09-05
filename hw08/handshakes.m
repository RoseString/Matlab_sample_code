function numOfHandshakes = handshakes(numOfPeople)
    numOfHandshakes = 0;
    if numOfPeople == 2 % base condition
        numOfHandshakes = 1;
    else % recursive calls
        numOfHandshakes = handshakes(numOfPeople - 1) + numOfPeople - 1;
    end
end