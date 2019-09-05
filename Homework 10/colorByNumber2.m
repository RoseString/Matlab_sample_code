function numbers = colorByNumber2(imgname, xls)
    % read input files
    img = imread(imgname);
    [num, txt, raw] = xlsread(xls);
    % get the output name and the the tile dimension
    [name, rest] = strtok(imgname, '1234567890');
    [dim, ~] = strtok(rest, '.');
    dim = str2num(dim);
    outname = [name, '.txt'];
    % get RGB of the image (transposed)
    R = img(:, :, 1);
    G = img(:, :, 2);
    B = img(:, :, 3);
    % get RGB values by the tile dimension
    RByDim = R(1:dim:end, 1:dim:end);
    GByDim = G(1:dim:end, 1:dim:end);
    BByDim = B(1:dim:end, 1:dim:end);
    [nrowByDim, ncolByDim] = size(RByDim);
    % search the xls and get colors
    [nrow, ~] = size(num);
    colorsByDim = {}; 
    for r = 1: nrow
        idx = find(RByDim' == num(r, 1) & GByDim' == num(r, 2) & BByDim' == num(r, 3));
        colorsByDim(idx) = txt(r + 1);
    end
    % get the color list
    [~, uniqColorIdx] = unique(colorsByDim);
    uniqColors = colorsByDim(sort(uniqColorIdx));    
    % output the color list and numbers (including reshping)
    out = fopen(outname, 'w'); 
    numbers = [];
    for i = 1: length(uniqColors)
        if i < length(uniqColors)
            fprintf(out, '%d: %s\n', i, uniqColors{i});
        else
            fprintf(out, '%d: %s', i, uniqColors{i});
        end        
        idx = find(strcmp(colorsByDim, uniqColors{i}));
        numbers(idx) = i;
    end
    numbers = reshape(numbers, ncolByDim, nrowByDim)';
    fclose(out);
end