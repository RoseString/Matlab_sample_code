function result = checkImage(imgname1, imgname2)
    % read images 
    img1 = imread(imgname1);
    img2 = imread(imgname2);
    if isequal(img1, img2) % images are the same
        result = sprintf('The images are the same.');
    elseif ~all(size(img1) == size(img2)) % different dimensions
        result = sprintf('The images have different dimensions.');
    else % same dimensions, but different RGB
        result = sprintf('The RGB values are different.');
        % get RGB layers
        R1 = img1(:, :, 1);
        G1 = img1(:, :, 2);
        B1 = img1(:, :, 3);
        R2 = img2(:, :, 1);
        G2 = img2(:, :, 2);
        B2 = img2(:, :, 3);
        % create masks
        eqR = R1 == R2;
        eqG = G1 == G2;
        eqB = B1 == B2;
        % set pixels with same colors to white
        R1(eqR == true & eqG == true & eqB == true) = 255;
        % set pixels with different colors to black
        R1(~(eqR == true & eqG == true & eqB == true)) = 0;
        % create a new image with three layers
        newimage(:, :, 1) = R1;
        newimage(:, :, 2) = R1;
        newimage(:, :, 3) = R1;
        % get the output image name
        [namePart1, ~] = strtok(imgname1, '.');
        [namePart2, ~] = strtok(imgname2, '.');
        outname = [namePart1, 'VS', namePart2, '.png'];
        % write the image
        imwrite(newimage, outname);
    end
end