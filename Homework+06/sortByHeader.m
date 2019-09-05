function xlsOut = sortByHeader(xlsIn, header)
   % read the xls file
   [~, ~, raw] = xlsread(xlsIn);
   % get the headers of all fields
   headers = raw(1, :);
   % get the data of all fields
   data = raw(2:end, :);
   % locate the position of the header to sort by
   for i = 1: length(headers)
       if strcmp(headers(i), header)
           headerIdx = i;
           break;
       end
   end
   % sort by that header and get the indicies 
   [~, I]= sort(data(:, headerIdx));
   % save the sorted data to a new array
   xlsOut = [headers; data(I, :)];
end