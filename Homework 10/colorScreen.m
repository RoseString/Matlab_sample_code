function colorScreen(imgname1, imgname2, RGB, range)
    % read input images
    img1 = imread(imgname1);
    img2 = imread(imgname2);
    % get RGB from img1
    img1R = img1(:, :, 1);
    img1G = img1(:, :, 2);
    img1B = img1(:, :, 3);
    % find the empty space in img2
    img2R = img2(:, :, 1);
    img2G = img2(:, :, 2);
    img2B = img2(:, :, 3);
    idx = find(img2R >= RGB(1) - range & img2R <= RGB(1) + range &...
               img2G >= RGB(2) - range & img2G <= RGB(2) + range &...
               img2B >= RGB(3) - range & img2B <= RGB(3) + range);
    % replace the empty space with pixels in the second image
    img2R(idx) = img1R(idx);
    img2G(idx) = img1G(idx);
    img2B(idx) = img1B(idx);
    newimg(:, :, 1) = img2R;
    newimg(:, :, 2) = img2G;
    newimg(:, :, 3) = img2B;
    % write output image
    [name, rest] = strtok(imgname1, '.');
    [format, ~] = strtok(rest, '.');
    outname = [name, '_new.', format];
    imwrite(newimg, outname);
end