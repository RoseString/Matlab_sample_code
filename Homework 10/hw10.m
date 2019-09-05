%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Dan Sun
% GT Email     : dsun33@gatech.edu
% Homework     : HW10
% Section      : GR
% Collaboration: "I worked on the homework assignment alone, using
%                  only course materials."
%
%
% Files provided with this homework:
%   hw10.m
%   ABCs_Images.m
%   ABCs_hw10_pretest.p
%   checkImage_soln.p
%   puzzle_soln.p
%   colorScreen_soln.p
%   colorSplash_soln.p
%   colorByNumber2_soln.p
%   apples.png
%   oranges.png
%   flower1.png
%   flower2.png
%   tangerines.png
%   orangesVStangerines_soln.png
%   p.png
%   p1.png
%   p2.png
%   q.png
%   q1.png
%   q2.png
%   r.png
%   r1.png
%   r2.png
%   smith.bmp
%   Superman.bmp
%   smith_new_soln.bmp
%   lion.bmp
%   tiger.bmp
%   lion_new_soln.bmp
%   pikachu.png
%   optimus.png
%   splash1.png
%   splash2.png
%   spiderman2.png
%   mario5.png
%   crayonBox.xls
%   colorByNumber2_TestCaseOuts.mat
%
%
% Files to submit:
%	hw10.m
%   ABCs_Images
%   checkImage.m
%   puzzle.m
%   colorScreen.m
%   colorSplash.m
%   colorByNumber2.m
%
% Instructions:
%   1) Follow the directions for each problem very carefully or you will
%   lose points.
%   2) Make sure you name functions exactly as described in the problems or
%   you will not receive credit.
%   3) Read the announcements! Any clarifications and/or updates will be
%   announced on T-Square. Check the T-Square announcements at least once
%   a day.
%   4) You should not use any of the following functions in any file that 
%   you submit to T-Square:
%       a) clear
%       b) clc
%       c) solve
%       d) input
%       e) disp
%       f) close all
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%==========================================================================
% COMMENTING
%--------------------------------------------------------------------------
%
% Whenever you program, it is always a good idea to comment your code.
% Commenting helps you keep track of what you are attempting to code, and 
% it helps others in understanding why you wrote various lines of code.  
% Since the AutoGrader does not give partial credit for attempting a 
% problem, we have added a commenting system to give some incentive to at 
% least attempt each problem. From now on, when you write a solution to a
% problem, you should comment your code and explain what you were 
% attempting to code. Some good places to comment would be sections of your
% code that directly relate with your algorithm. However, don't comment
% every line of code. Instead comment the lines of code that are either  
% difficult to understand or are important to solving the problem. 
%
% Commenting will purely be for extra-credit purposes, so if you don't want
% to comment your code, you don't have to. Your Section TA will grade the
% comments from each Homework and will keep track of your commenting points
% throughout the semester. Commenting points will not change the score you
% receive on a homework assignment, but they will be factored into your
% homework average at the end of the semester. 
%
% Finally, if you come to help desk, you are expected to have your code
% commented. If a TA sees that your code is not commented, he or she will
% not offer help until your code is commented.
%
%==========================================================================
% PART 1.  ABC Problems
%--------------------------------------------------------------------------
%
% Part of this homework is in an m-file starting with ABCs_.  Open this
% file in MATLAB and complete it according to the directions contained
% within.
%
% Once you are done, you can test your ABC file by running the pretest at
% the command prompt, like so:
%
%  >> ABCs_hw10_pretest
%
% Alternatively, you can right button click the file in the Current Folder
% window and click "Run".  You cannot open the file by double clicking it.
% Be sure the pretest and your ABC file are in the same directory.
%
% The pretest is simply an aide to help you test your code.  While we
% strive to supply a quality pretest file for you to use, a sucessful
% result with a pretest file does not ensure awarded points on the
% homework.  The pretest is merely a guide to help you complete the ABCs.
%
%==========================================================================
% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% The drill problems cover the following major topic(s):
%	Numerical Methods
%
% Follow the directions carefully and make sure files names as well as
% function headers are written exactly as described in the problem text. If
% your function headers are not written as specified, then you will recieve
% an automatic zero for the problem.
%
% All drill problems must be functions (i.e. contain valid function
% headers).  Any scripts turned in will be given a 0 automatically.
%
%==========================================================================
% PROBLEM 1.  Look At Me Now
%--------------------------------------------------------------------------
%
% Function Name: checkImage 
% Inputs  (2): - (char) the name of an image file
%              - (char) the name of a second image file
% Outputs (1): - (char) a sentence comparing the two images
%
% Output Files (1): - (.png) An image highlighting the differences between
%                            the two imput images. Only outputted if 'The
%                            RGB vales are different.'
%
% Function Description:
%  Given two images, write a function called "checkImage" that determines 
%  if the two images are the same, and if they are different, then how. 
%
%  - If the two images are completely identical, the output should read 'The
%    images are the same.' 
%  - If the two images do not have the same dimensions, the output should
%    read 'The images have different dimensions.'
%  - If the two images have the same dimensions, but have different color
%    values at the same pixel, the output should read 'The RGB values are
%    different.'. Additionally, if the two images have different colors,
%    you should write a new image that is white everywhere the two images
%    have the same RGB values and black everywhere they are different. This
%    new image should be called <image1>VS<image2>.png. For example, if I
%    was comparing 'lilacs.png' and 'roses.png', I would call my new image
%    'lilacsVSroses.png'.
%
% Hints:
%  - You may find the function imwrite() useful.
%  - It is not necessary to use iteration for pixel-by-pixel comparisons.
%    This will make your code run very slowly and is inefficient.
%  - This function should be useful for the rest of your homework.
%  - Use a 3-layer uint8 array to write the output image.
%
% Test cases:
%
%   out1 = checkImage('apples.png', 'oranges.png');
%       out1 => 'The images have different dimensions.'
%       Should not have output image.
%
%   out2 = checkImage('flower1.png', 'flower2.png');
%       out2 => 'The images are the same.'
%       Should not have output image.
%
%   out3 = checkImage('oranges.png', 'tangerines.png');
%       out3 => 'The RGB vales are different.'
%       orangesVStangerines.png should look like orangesVStangerines_soln.png 
%
%
%==========================================================================
% PROBLEM 2. Does it fit?
%--------------------------------------------------------------------------
%
% Function Name: puzzle 
% Inputs  (3): - (image) original image
%              - (image) piece 1
%              - (image) piece 2
% Outputs (1): - (string) Whether the piece fits or not
%
% Function Description:
%  You love jigsaw puzzles, and decided it was just about time you used
%  MATLAB to make them even more fun! You are given one piece and need to
%  figure out which of the other 2 fit, or if either of them actually do
%  fit. To determine if two pieces fit, ignore any worries about the
%  colour, and just check whitespaces. If the whitespace of the original
%  image is completely occupied by the non-whitespace of one of the pieces,
%  then that piece is the right one. so there should be no whitespaces if
%  the two images are superimposed. If piece 1 fits, your code should
%  output 'The first is the right piece'; if piece 2 fits, then 'The second
%  is the right piece'; and if neither of them do, then 'None of the pieces
%  fit'. There will not be a case where both of the two pieces fit.
%
% Notes: 
%  - Size of the image DOES matter.
%  - Logical indexing might be useful.
%
% Test Cases:
%
%   out1 = puzzle('p.png', 'p1.png', 'p2.png')
%       out1 => 'The first is the right piece'
%
%   out2 = puzzle('q.png', 'q1.png', 'q2.png')
%       out2 => 'The second is the right piece'
%
%   out3 = puzzle('r.png', 'r1.png', 'r2.png')
%       out3 => 'None of the pieces fit'
%
%==========================================================================
% PROBLEM 3.  Chroma Keying
%--------------------------------------------------------------------------
%
% Function Name: colorScreen
% Inputs  (3): - (char) a filename of a first image that has an "empty space"
%              - (char) a filename of a second image
%              - (double) a vector of length three of RGB values to replace
%              - (double) a pixel range to consider.
% Outputs (0):
% Output files (1): a new image made from combining the foreground and 
%                   background images
%
% Function Description:
%   Given two images, write a function called 'colorScreen' that will
%   replace all pixels in the first image that match a given RGB value
%   within a specified pixel range with the corresponding pixels in the
%   second image. So the first image will have an "empty space" where the
%   pixels are all the same color, and match the third input's values (plus
%   or minus the 4th input); use matlab to find this space and replace it
%   with the corresponding pixels from the second input image. This newly
%   created image should be written to a file whose name is the name of the first
%   image appended with '_new' For example, if  the following is called:
%
%               colorScreen('img1.bmp','img2.bmp', [2 253 2], 2);
%
%   A new image file called 'img1_new.bmp' should be created that looks
%   like 'img1.bmp', but with all of the pixels from [0, 251, 0] to [4,
%   255, 4] (inclusive) replaced with the corresponding pixels from 'img2.bmp'.
%
% Notes:
%   - You do not have to use a for loop in this problem. For loops are a
%     very slow and inefficent due to the size of the images that must be
%     looped though. Consider logical indexing instead.
%   - The two input images will always be the same size.
%   - The pixel range will never cause the pixel values to be above 255 or
%     below 0. The pixel range will be inclusive.
%
% Test Cases:
%   colorScreen('smith.bmp','Superman.bmp',[252, 242, 3], 3);
%       smith_new.bmp should look like smith_new_soln.bmp
%
%   colorScreen('lion.bmp','tiger.bmp',[253, 127, 38], 2);
%       lion_new.bmp should look like lion_new_soln.bmp
%
%==========================================================================
% PROBLEM 4.   Because "Desaturate All But One Color" Wasn't Catchy
%--------------------------------------------------------------------------
%
% Function Name: colorSplash
% Inputs  (2): - (char)  the file name of an image 
%              - (uint8) a 1x3 vector representing an RGB color
% Outputs (1): - (uint8) an image that is grayscale except for one color
%
% Function Description:
%   Do you ever see those pictures that are mostly grayscale, but have one 
%   object in color? How do they add that "splash" of color to an otherwise
%   grayscale image? Well, they probably don't use MATLAB, but you can
%   imitate this effect by taking a color image and removing all of the
%   colors except for one.
%
%   Write a function called "colorSplash" that makes an image grayscale
%   with the exception of a single color. The color will be input as a
%   vector of three uint8 values that correspond to the color's R, G, and B
%   values. For example, if we wanted to keep pure blue, the second input
%   argument would be uint8([0, 0, 255]).
%
% Notes:
%   - Do *NOT* use rgb2gray(). If you do, you will not get the correct
%     output. Instead, the grayscale part should be created by averaging
%     the values of the red, green, and blue layers of the image.
%   - It is unwise to try to tackle this problem by iterating through every
%     pixel. It will simply take too long. Instead, use logical indexing.
%
% Test Cases:
%   fn1 = 'pikachu.png';
%   color1 = uint8([255, 255, 0]);
%   splash1 = colorSplash(fn1, color1);
%   imshow(splash1)
%   => should look like 'splash1.png'
%
%   fn2 = 'optimus.png';
%   color2 = uint8([128, 0, 0]);
%   splash2 = colorSplash(fn2, color2);
%   imshow(splash2)
%   => should look like 'splash2.png'
%
%
%==========================================================================
% PROBLEM 5. Color by Number 2: The Second One
%--------------------------------------------------------------------------
%
% Function Name: colorByNumber2
% Inputs  (1): - (char) name of the image file
%              - (char) name of the "crayon box" xls file
% Outputs (1): - (double) array of numbers
% Output files (1) - (.txt) list of colors by number
%
% Function Description:
%   Write a function that takes an image of color tiles and returns an 
%   array of numbers corresponding to colors listed in the output file.
%
%   In other words, you will get an image composed of nxn tiles. In this 
%   example, n=8.
%
%                    8                  8
%           |------------------|------------------|
%           |                  |                  |
%           |    red: 255      |    red: 255      |
%           |    green: 0      |    green: 255    |
%     8     |    blue: 0       |    blue: 255     |
%           |                  |                  |
%           |                  |                  |
%           |------------------|------------------|
%           |                  |                  |
%           |    red: 255      |    red: 0        |
%           |    green: 255    |    green: 0      |
%     8     |    blue: 255     |    blue: 0       |
%           |                  |                  |
%           |                  |                  |
%           |------------------|------------------|
%               
%   The "image" above contains four tiles, each tile being (8px)x(8px), 
%   which means a total of 64px per tile. Each of the pixels inside a tile
%   will have the same value, as shown above. You can see that the top left
%   tile is an entirely red tile, the top right tile is an entirely white 
%   tile (as is the bottom left), and the bottom right tile is an entirely 
%   black tile.
%
%   [Note that this image is (16px)x(16px), which is equivalent to 
%   (2 tiles)x(2 tiles) since 1 square tile = (8px)x(8px). 
%   The image given will not necessarily be a perfect square as in the
%   example above. However, its *tiles* will ALWAYS be perfectly
%   square.]
%
%
%   The provided xls file ("crayon box") will be formatted as follows, but
%   will include more colors and corresponding RGB values:
%
%       Color       R       G       B
%       White       255     255     255
%       Red         255     0       0
%       Green       0       255     0
%       Blue        0       0       255
%       Black       0       0       0
%
%
%   Your result in this example should be a file that looks like:
%
%       1: Red
%       2: White
%       3: Black
%
%   And your function would output the 2x2 array:
%
%       [1   2
%        2   3]
%
%
% Hints & specifications:
%   - The input image filename will contain a number before (and *only* 
%     before) the file extension (ex: spiderman2.png). This number indicates
%     the dimension of each tile in the image.
%   - The output file should be the name of the image file, but
%     with a .txt file extension (instead of .png) and NOT including the dimension number
%     (ex: spiderman.txt, NOT spiderman2.txt)
%   - The colors should be numbered (and listed in your output file) in the 
%     order that they are reached going across the columns of tiles left to 
%     right and then down each row in the same fashion.
%
% Test Cases:
%   
%   load('colorByNumer2_testCaseOuts.mat');
%
%   [nums1] = colorByNumber2('spiderman2.png','crayonBox.xls');
%       isequal(nums1, nums1_soln) => true
%       spiderman.txt should look like spiderman_soln.txt
%  
%   [nums2] = colorByNumber2('mario5.png','crayonBox.xls');
%       isequal(nums2, nums2_soln) => true
%       mario.txt should look like mario_soln.txt
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
%