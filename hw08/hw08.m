%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Dan Sun
% GT Email     : dsun33@gatech.edu
% Homework     : hw08
% Section      : GR
% Collaboration: "I worked on the homework assignment alone, using
%                  only course materials."
%
% Files provided with this homework:  
%   - hw10.m
%   - handshakes_soln.p
%   - rMin_soln.p
%   - isBackwards_soln.p
%   - binaryBuilder_soln.p
%
% Files to submit:
%   - hw10.m
%   - handshakes.p
%   - rMin.p
%   - isBackwards.p
%   - binaryBuilder.p
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
% PART 1. Drill Problems
%--------------------------------------------------------------------------
%
% The drill problems cover the following major topic(s):
%   - Recursion
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
% PROBLEM 1.  Nice to meet you, and you, and you, and you...
%--------------------------------------------------------------------------
%
% Function Name: handshakes
% Inputs  (1): - (double) the number of people
% Outputs (1): - (double) the number of handshakes
% 
% Function Description:
%   Say you're at a large gathering of mathematicians for whatever reason
%   and no one knows anyone else, so every person must shake hands with
%   every other person. How many handshakes will it take? Luckily, you're a
%   mathematician, so you easily figure out the solution.
%
%   For n people, the number of handshakes, h(n), can be expressed
%   recursively as follows:
%
%     h(2) = 1    and
%     h(n) = h(n-1) + n-1   if n > 2
%
%   To demonstrate, let's calculate h(3).
%
%     Using the formula, we know that     h(3) = h(2) + 2
%     We also know that                          h(2) = 1
%     Therefore                           h(3) = 1 + 2
%                                              = 3
%
%   Write a function called "handshakes" that takes in the number of people
%   and outputs the number of handshakes it will take for every person to
%   shake every other person's hand.
% 
% Notes: 
%   - The input will always be greater than or equal to 2
%   - You MUST use recursion to solve this problem   
% 
% Test Cases:
%   shakes1 = handshakes(5)
%           shakes1 => 10
% 
%   shakes2 = handshakes(11)
%           shakes2 => 55
%
%
% ==========================================================================
% PROBLEM 2. Find That Minimum 
% --------------------------------------------------------------------------
% 
% Function Name: rMin
% Inputs  (1): - (double) A vector of numbers to find the minimum of
%
% Outputs (1): - (double) The minimum value of the input vector.
%
% Function Description:
% So you're working on some MATLAB homework, and for some reason you can't
% remember what that stupid function is called that takes the minimum of a
% vector. So you write your own!
%
% Write a recursive function that takes the minimum of vector input.
%
% Notes: 
%   - You cannot use the min() function or the sort() function.
%   - Your function must be recursive!
%
% Hints:
%   - Don't overthink it.
%
% Test Cases:
%   min1 = rMin([5 -4 7 4 1 12 -5 7 -7]);
%       min1 => -7
%
%   min2 = rMin([0 4 0 3 0 0 0 1 0 0 2 0]);
%       min2 => 0
%
%   min3 = rMin([1 -2 3 -4 5 -6 7 -8 9 -10]);
%       min3 => -10
%==========================================================================
% PROBLEM 3.  Because You're At Tech, Where We Have a Binary Bridge 
%--------------------------------------------------------------------------
%
% Function Name: binaryBuilder
% Inputs  (1): - (double) any positive integer
%
% Outputs (1): - (char) a string of 1's and 0's representing the binary
%                   converstion of the input value
%
% Function Description:
% Time to embrace your nerdhood! This function takes in a positive integer
% and we want you to RECURSIVELY return a string that express it in binary.
%
% A binary number is the same as a base 2 number. Our normal number system
% (decimal numbers) is base 10. This means the number 5280 = 5*(10^3) +
% 2*(10^2) + 8*(10^1) + 0*(10^0). In binary, instead of the ten possible 
% digits 0-9, there are only two: 0 and 1. Here is an example of the 
% decimal number 9 in binary:
%
%   1001 (binary) = 1*(2^3) + 0*(2^2) + 0*(2^1) + 1*(2^0) = 9 (decimal)
% 
%   Even if that doesn't make sense, here is a handy way for making the
%   conversion:
%   1) Start with a decimal number.
%   2) Divide the number by 2.
%   3) Keep the remainder from step (2).
%   4) Repeat using the quotient as the new decimal number.
%
%   Example: Convert 23 to binary.
%                   Quotient    Remainder
%   23 / 2          11          1
%   11 / 2          5           1
%   5 / 2           2           1
%   2 / 2           1           0
%   1 / 2           0           1
%
%   23 in binary is 10111. Note that this is simply the remainders in the
%   opposite order that we found them.
%
% Note: 
%   All inputs will be nonnegative integers.
%   
%
% Test Cases:
%   bin1 = binaryBuilder(7)
%       bin1 => '111'
%
%   bin2 = binaryBuilder(46)
%       bin2 => '101110'
%
%==========================================================================
% PROBLEM 4. gnidoc teg s'tel
%--------------------------------------------------------------------------
%
% Function Name: isBackwards
% Inputs  (2): - (char) a string
%              - (char) another string
%
% Outputs (1): - (logical) a logical true/false if the strings are reverses
%       of each other
%
% Function Description:
%   Write a function that takes in two strings and outputs a logical true
%   or false if the first string is the second string backwards. Your
%   function should ignore whitespace, case, and punctuation.
%
% Notes: 
%   - Your function must be recursive
%   - You *may not* use strcmp
%   - You might find a wrapper function useful
%   
% Test Cases:
%   out1 = isBackwards('hello', 'olleh')
%       out1 => true
%
%   out2 = isBackwards('hello', 'hello')
%       out2 => false
% 
%   out3 = isBackwards('hello', '!!!o l l e h')
%       out1 => true
%
%   out4 = isBackwards('tot', 'cat')
%       out4 => false
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
