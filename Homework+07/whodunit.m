function suspects = whodunit(people, heightRange, weightRange, shoesizeRange)
    % loop through all people
    numOfPeople = length(people);
    indicesToRemove = [];
    for i = 1: numOfPeople
        log1 = false; % whether falls into the height range
        log2 = false; % whether falls into the weight range
        log3 = false; % whether falls into the shoesize range        
        % see if the person falls into the height range
        if people(i).Height >= heightRange(1) && ...
           people(i).Height <= heightRange(2) 
           log1 = true;
        end        
        % see if the person falls into the weight range
        if people(i).Weight >= weightRange(1) && ...
           people(i).Weight <= weightRange(2) 
           log2 = true;
        end
        % see if the person falls into the shoesize range
        if people(i).ShoeSize >= shoesizeRange(1) && ...
           people(i).ShoeSize <= shoesizeRange(2) 
           log3 = true;
        end
        
        % get a list of people who are unlikely to be suspects
        logs = [log1, log2, log3];      
        if ~all(logs)
            indicesToRemove = [indicesToRemove, i];
        end
    end
    % remove these people from the list
    people(indicesToRemove) = [];
    % the remaining people are suspects
    suspects = people;
end