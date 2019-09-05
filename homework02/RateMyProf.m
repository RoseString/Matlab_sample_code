function [avg, ID] = RateMyProf(ratings)
    % sort the ratings in reverse order
    results1 = sort(ratings(2,:), 'descend');
    % pick the highest three scores
    highest3 = results1(1:3);
    % calculate the average of the three scores
    avg = mean(highest3);
    
    % get three IDs
    [results2,indices2] = sort(ratings(2,:));
    ID = ratings(1, indices2(1:3));
end
    
    