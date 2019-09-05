function splash = colorSplash(imgname, sRGB)
    % read the image file
    img = imread(imgname);
    dbimg = double(img);
    % get RGB of the image
    R = dbimg(:, :, 1);
    G = dbimg(:, :, 2);
    B = dbimg(:, :, 3);
    % keep a single color and grayscale others
    oidx = find(~(R == sRGB(1) & G == sRGB(2) & B == sRGB(3)));
    gray = (R(oidx) + G(oidx) + B(oidx)) ./ 3;
    R(oidx) = gray;
    G(oidx) = gray;
    B(oidx) = gray;
    % create a new image
    newimg(:, :, 1) = R;
    newimg(:, :, 2) = G;
    newimg(:, :, 3) = B;
    splash = uint8(newimg);
end