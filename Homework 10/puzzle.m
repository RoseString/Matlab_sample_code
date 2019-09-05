function result = puzzle(oriname, piece1name, piece2name)
    % read images
    ori = imread(oriname);
    piece1 = imread(piece1name);
    piece2 = imread(piece2name);
    % get whitespaces of the original image
    oriR = ori(:, :, 1);
    oriG = ori(:, :, 2);
    oriB = ori(:, :, 3);
    idx = find(oriR == 255 & oriG == 255 & oriB == 255);
    % see if the first piece fits
    piece1R = piece1(:, :, 1);
    piece1G = piece1(:, :, 2);
    piece1B = piece1(:, :, 3);
    log1 = all(~(piece1R(idx) == 255 & piece1G(idx) == 255 & piece1B(idx) == 255));   
    % see if the first piece fits
    piece2R = piece2(:, :, 1);
    piece2G = piece2(:, :, 2);
    piece2B = piece2(:, :, 3);
    log2 = all(~(piece2R(idx) == 255 & piece2G(idx) == 255 & piece2B(idx) == 255));
    % output results
    if log1
        result = sprintf('The first is the right piece');
    elseif log2
        result = sprintf('The second is the right piece');
    else
        result = sprintf('None of the pieces fit');
    end
end