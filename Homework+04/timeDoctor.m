function arrival = timeDoctor(departure, transpireDays)
    % using strtok to fetch month, day, year info of departure date
    [month, rest] = strtok(departure, '0123456789 ');
    [day, rest] = strtok(rest, ', ');
    [year, rest] = strtok(rest, ', ');
    
    day = str2num(day);
    year = str2num(year);
    
    % monthString gives 1-January, 2-February etc. mapping
    monthString = {'January', 'February', 'March', 'April', 'May', 'June', ...
                 'July', 'August', 'September', 'October', 'November', 'December'};
    % numOfDays gives 1-31, 2-28, 3-31, etc. mapping
    numOfDays = [];
    for i = 1:12
        numOfDays(i) = eomday(2014,i);
    end
    % using monthString to get the number representation of the departure
    % month
    currentMonth = 0;
    for i = 1:12
        if strcmp(char(monthString(i)), month)
            currentMonth = i;
        end
    end
    
    % while loop
    restDays = abs(transpireDays);
    transpireYear = 0;
    newDay = 0;
    newMonth = 0;
    while (restDays > 0)
        % into the future
        if transpireDays > 0
            for i = 1:12
                if transpireYear == 0 & i < currentMonth % departure year
                    continue;                            % pass unused month
                elseif transpireYear == 0 & i == currentMonth  & ...
                       restDays > numOfDays(i) - day  % departure year
                                                      % pass the current
                                                      % month
                    restDays = restDays - (numOfDays(i) - day);
                elseif transpireYear == 0 & i == currentMonth  & ...
                       restDays <= numOfDays(i) - day % departure year
                                                      % the current
                                                      % month is not passed
                    newDay = day + restDays;
                    newMonth = currentMonth;
                    restDays = 0; 
                    break;
                elseif restDays > numOfDays(i)        % month that should 
                                                      % be passed
                    restDays = restDays - numOfDays(i);
                else
                                                      % arrival date
                    newDay = restDays;                
                    newMonth = i;
                    restDays = 0;
                    break;
                end
            end
            if restDays > 0                           % add a transpire year
                                                      % after each
                                                      % iteration
                transpireYear = transpireYear + 1;
            end
        end
        
        % into the past
        if transpireDays < 0
            for i = 12:-1:1
                if transpireYear == 0 & i > currentMonth
                    continue;
                elseif transpireYear == 0 & i == currentMonth  & ...
                       restDays > day
                    restDays = restDays - day;
                elseif transpireYear == 0 & i == currentMonth  & ...
                       restDays <= day
                    newDay = day - restDays;
                    newMonth = currentMonth;
                    restDays = 0;
                    break;
                elseif restDays > numOfDays(i)
                    restDays = restDays - numOfDays(i);
                else
                    newDay = numOfDays(i) - restDays;
                    newMonth = i;
                    restDays = 0;
                    break;
                end
            end
            if restDays > 0
                transpireYear = transpireYear - 1;
            end
        end
    end
    newYear = year + transpireYear;                 
    newMonth = char(monthString(newMonth));
    
    arrival = sprintf('%s %d, %d', newMonth, newDay, newYear);
end