function outputCa = minesweeper(inputCa)
    outputCa = {};
    % loop through the whole cell array
    caSize = size(inputCa);
    nrow = caSize(1);
    ncol = caSize(2);
    for r = 1: nrow % row loop
        for c = 1: ncol % column loop
            
            if isempty(inputCa{r,c}) % need to fill in a number
                num = 0; % initialize the num of bombs of neighbours
                % check its surroundings
                for m = [-1, 0, 1]
                    for n = [-1, 0, 1]
                        nbR = r + m; % row number of the cell's neighbour
                        nbC = c + n; % column number of the cell's neightbour
                        % ensure nbR and nbC don't exceed the dimension
                        if (nbR > 0 && nbR <= nrow && nbC > 0 && nbC <= ncol)...
                               &&  ~(m == 0 && n == 0)
                           % if the neighbour is a bomb
                           % add one to num
                           if ~isempty(inputCa{nbR, nbC})
                               num = num + 1;
                           end
                        end
                    end 
                end
                outputCa{r, c} = num;
            else % the cell is a bomb, no calculation is needed
                outputCa{r, c} = inputCa{r, c}; % output that bomb directly
            end
            
        end
    end
end