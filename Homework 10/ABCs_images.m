function [A B C D E] = ABCs_images(img1, img2)
% ABCs of Images
%
% This is a multi-part problem. Do each of the parts below.
%
% DO NOT CHANGE THE FUNCTION HEADER (the first line of code)

% a) imread. Read in the image matrix of the file whose name is stored in
% the variable img1. Store the image matrix in a variable named A.
%
% Write your code here:
A = imread(img1);

% b) Flipping images. Create a copy of A and then flip the image matrix
% along the diagonal. Store your result in B. Do *NOT* use the flipup() or
% fliplr() function. 
%
% Write your code here:
B = A(end:-1:1, end:-1:1, :);

% c) Swapping colors. Swap the green and blue layers of A. Store your
% result in C.
%
% Write your code here:
C = A(:,:,[1 3 2]);

% d) Grayscale. Store the grayscale of the image matrix A in the variable
% D. Use the simpler grayscale formula where the pixel value is the average
% of the three layers. Do *NOT* use the weighted average formula or any
% built-in MATLAB functions such as rgb2gray() or gray(). Note: First the
% image matrix will need to by type double, and the final image needs to be
% returned to uint8.
%
% Write your code here (it will be a few lines):
% dbA = double(A);
dbA = double(A);
D(:, :, 1) = (dbA(:,:,1) + dbA(:,:,2) + dbA(:,:,3)) ./ 3;
D(:, :, 2) = (dbA(:,:,1) + dbA(:,:,2) + dbA(:,:,3)) ./ 3;
D(:, :, 3) = (dbA(:,:,1) + dbA(:,:,2) + dbA(:,:,3)) ./ 3;
D = uint8(D);

% e) Negative. Store the negative of the image matrix A in the variable E. 
%
% Write your code here:
E = 255 - A(:,:,:);

% f) imwrite. Write a new image that is similar to the image matrix A,
% except that the values should be a third as bright. The name of the new
% image is stored in the variable img2. 
%
% Write your code here:
Abrighter = A .* 3;
imwrite(Abrighter, img2);

end
