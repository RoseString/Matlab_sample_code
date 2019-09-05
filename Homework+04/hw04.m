%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Dan Sun
% GT Email     : dsun33@gatech.edu
% Homework     : hw04
% Course       : CS1371
% TA's Name    : Terry, Alan
% Section      : GR
% Collaboration: "I worked on the homework assignment alone, using
%                  only course materials."
%             
% Files provided with this homework:  
%   hw04.m
%	ABCs_iteration.m
%   ABCs_hw04_pretest.p
%	ugaMath_soln.p
%   cardCounter_soln.p
%	timeWarp_soln.p
%	wordFind_soln.p
%   timeDoctor_soln.p
%
% Files to submit:
%   hw04.m
%	ABCs_iteration.m
%	ugaMath.m
%	cardCounter.m
%	timeWarp.m
%	wordFind.m
%	timeDoctor.m
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
%  >> ABCs_pretest_hw04
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
%	Iteration
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
% PROBLEM 1.  Typical UGA Math Problems
%--------------------------------------------------------------------------
%
% Function Name: ugaMath
% Inputs  (1): - (char) A string containing numbers and mathematical 
%                       operators.
% Outputs (1): - (double) A number after performing the arithmetic
%
% Function Description: 
%   Write a function named "ugaMath" that takes in a string containing a 
%   arithemtic expression and returns the result as a type double from 
%   carrying out all indicated mathematical operations. The input will 
%   follow this format:
%   
%   '<number><operator><number><operator><number>' and so on inside the 
%   string.
%
%   <number> is replaced by a number, and <operator> is replaced by one of
%   these five arithmetic operators: +, -, *, /, or ^. Since UGA ignores 
%   (or to be precise, forgets) the order of operations, the function 
%   should do the same.
%
%   For example, the following expression is a problem stolen from UGA's
%   MATH 4102 final exam. Supposed we have the string '5-2^3'. 5-2 would
%   give 3, then 3^3 gives 27, so 27 would be the final output.
%
% Notes:
%   - The input string is guaranteed to start with a number. If the input 
%     contains only one number and nothing else, the function should return
%     that number.
%   - You may assume that the string does not contain negative numbers as 
%     operands, though the output may be negative.
%   - The input would not contain an operator with no operands after it 
%     e.g. you will not be given '80+' as an input. Furthermore, the input 
%     would not contain any characters other than numbers and the five 
%     aforementioned operators.
%   - Your numbers are not guaranteed to be integers.
%
% Hints:
%   - The strtok() and str2num() functions may be useful.
%   - While giving the input directly to str2num() may seem like an easy
%     solution, it will not give the correct answer for every case.
%
% Test Cases:
%   num1 = ugaMath('20-35')
%       num1 => -15
%
%   num2 = ugaMath('11*37/82+3')
%       num2 => 7.9634
%
%   num3 = ugaMath('9.4')
%       num3 => 9.4
%
%   num4 = ugaMath('235^0/0.32*5.55-103.2+589.32/23.6^2.32*0.045+32-218')
%       num4 => -131.4716
% 
%==========================================================================
% PROBLEM 2.  Card Shark
%--------------------------------------------------------------------------
%
% Function Name: cardCounter
% Inputs  (1): - (cahr) A 1xN string representing cards dealt
% Outputs (1): - (char) A string stating whether the table is hot/cold
%
% Function Description:
%  You're a young and inspired card shark.  Your game of choice?  Black
%  Jack.  You dream of making it big in Las Vegas and of taking down the
%  big casino hustlers with the art of "card counting".  There is only one
%  problem, you just started today. However, with the help of MATLAB, you
%  can practice your counting skills without the risk of being thrown out
%  of a cheap casino by a gorilla named "Rondo".
%
%  The concept of card counting is based on the concentration of high cards
%  versus low cards left in the deck.  You want to beat the house dealer.
%  High cards (10,J,Q,K,A) help the player (you), because they increase
%  your chance of gaining a natural 21.  Low cards (2-6) help the dealer,
%  because he has to hit (draw another card), which increases his score and
%  chances of getting the highest value. 
%
%  The "Hi-Lo" system is the basic card counting system.  
%       Low cards (2-6) are given the value +1, because this increases the 
%             concentration of high cards in the deck.  
%       High cards(10-A) are given the value (-1), because they decrese the 
%           high card concentration.  
%       Cards (7,8,9) are given a value of 0, as these middle cards
%       aid/hurt the dealer and player equally.  
%  The card counter keeps a running tally of the cards dealt and their 
%  respective values.  If the end tally is positive, the table is "hot" 
%  (this is good).  If the tally is zero or negative, the table is "cold" 
%  (this is bad).
%
%  Write a function called cardCounter, that takes in a string representing
%  cards that are dealt.  The function should count the cards by adding +1
%  for every low card, a -1 for every high card, and a 0 for every middle
%  card. The output will be a statement stating whether the table is hot
%  (end tally>0) or cold (end tally<=0).
%
%  Output statement if hot: 
%  'The table has a hot count of <tally value>, come play!'
%
%  Output statement if cold:
%  'The table has a cold count of <tally value>, try your luck at slots.'
%
%  Notes: 
%       -The "ten" cards will be protrayed as a capital 'T'.
%       -Assume there are no jokers.
%  Hints:
%       - sprintf() might be useful
%
% Test Cases:
%    deal1 = '9853A3QJ';
%    table1 = cardCounter(deal1);
%      table1 = 'The table has a cold count of 0, try your luck at slots.';
%    
%    deal2 = '5KK937T6254';
%    table2 = cardCounter(deal2);
%      table2= 'The table has a hot count of 3, come play!';
%         
%    deal3 = '723Q5JKQ44A92';
%    table3 = cardCounter_soln(deal3);
%      table3 = 'The table has a hot count of 1, come play!'
% 
%==========================================================================
% PROBLEM 3.  Let's Do The Time Warp!
%--------------------------------------------------------------------------
%
% Function Name: timeWarp
% Inputs  (4): - (double) A 1x2 vector representing a row and column
%              - (char) A nxm string array representing directions
%              - (double) A nxm array representing number of spaces to
%                         travel
%              - (char) A nxm string array of jumbled letters
% Outputs (1): - (char) A string found after following the directions
%                         through the array of letters.
%
% Function Description:
%  Riff Raff and Magenta have left Earth in their castle/rocket/spaceship.
%  They're heading back to their home planet, where they can do the Time
%  Warp for as long as they wish.  There is just one problem.  Riff Raff
%  forgot the way and can't fingure out the code for the autopilot!
%  Luckily, Magenta found Frankenfurter's hint for the code.  It's up to
%  you to decipher it.  Hurry! Once the castle is on autopilot, we can do
%  the time warp!
%
%  Write a function called timeWarp that follows the pattern described by
%  the clues in the given arrays to output a hidden string, found in the
%  fourth (char) array. 
%       The first array given is a 1x2 vector representing the starting
%           index.  This is the location of the first letter and where you
%           should begin.
%       The second input array holds directions. A direction will be
%           designated in the second array by 'u','d','l', or 'r', for up, 
%           down, left, and right, respectively.
%       The third input array holds the number of steps to be taken.  The
%           number of steps taken will always be positive.
%       The fourth input array holds letters. Pick the right letters to
%           decode the message!
%       
%  To decode the message, start at the given place and grab your first
%  letter. Next, find your new direction and distance, travel there, and
%  collect your next letter. Continue collecting until the direction is 'e'
%  (for end) or the number of spaces is 0.
%
%
% Hints:
%   - The while() switch() functions should prove useful.
%
% Test Cases:
%       start1 = [3,4];
%       dir1 = ['rlrdeul'; 'rlddrrr'; 'dudllud'; 'drrldlr';...
%               'uullrrd'; 'drluddd'];
%       space1 = [4 5 8 2 0 3 18; 20 19 72 1001 4 9 30; 2 7 5 3 6 2 1; ...
%                 1 1 1 1 1 1 1; 4 10 21 18 19 17 6; 0 0 0 0 0 0 0];
%       letter1 = ['kbcdyfg';'hijklmn';'opqRstu';'vwxyzaq';...
%                 'csrkmpb';'aefgiwn'];
%
%       out1 = timeWarp(start1,dir1,space1,letter1);
%           => 'Rocky'
%
%     start2 = [2,4];
%       dir2 = ['rdlrudll';'dudrdurl';'udrrureu';'urrllurl'];
%       space2 = [7 2 18 42 12 1 2 6; 3 4 1 1 2 20 19 5;...
%                 30 1 4 25 15 2 0 1; 3 4 10 9 4 1 8 7];
%       letter2 = ['cocdefgr';'ijelunoe';'qudlus!p';'isabd ef'];
%       
%       out1 = timeWarp(start2,dir2,space2,letter2);
%            => 'ludicrous speed!'
% 
%==========================================================================
% PROBLEM 4.  Word Find. 
%--------------------------------------------------------------------------
%
% Function Name: wordFind  
% Inputs  (2): - (char) An array of random characters 
%                (char) A string to find
% Outputs (1): - (char) A formatted string regarding the location of the 
%                       word 
%
% Function Description:
%   This function works just like word search books where you find a word 
%   in a group of letters. This function takes a grid of letters as its 
%   first input and searches for the second input within that grid. The 
%   words will only appear vertically or horizontally (not diagonally). 
%   It can appear in reverse direction as well (right to left or down to 
%   up). The word does not have to appear in the grid. 
% 
%   The output should be formatted as follows if the string is found:
%
%   out => 'The word starts in column <column number>, row <row number>, 
%                                                    and goes <direction>.'
%   
%   NOTE: The string is all one line, but for ease of reading, it is two
%         lines in the directions above.
%
%   - The column and row number should be formatted Numerically (1, 2,
%     etc.
%   - The directions should be right(as in left to right), left, 
%     up(down to up), or down
%   - Ignore diagonal words
%   - Case does not matter
% 
%   If the string does not appear in the grid, then output the following:
%        out => 'The word does not exist.'
% 
% Hints:
%   - You may NOT use the 'strfind' function in this problem.  Doing so
%     will result in no credit.
%   - The word you are looking for will not appear multiple times in the
%     array.
%
% Test Cases:
%   
%   board = ['A','R','O','E','D';
%            'O','S','P','D','L';
%            'N','S','P','O','T';
%            'G','R','V','C','N';
%            'U','E','S','I','Q'];
% 
%   [a] = wordFind(board,'spot');
%       a => 'The word starts in column 2, row 3, and goes right.'
%       
%   [a] = wordFind(board,'love');
%       a => 'The word does not exist.'
% 
%   [a] = wordFind(board,'code');
%       a => 'The word starts in column 4, row 4, and goes up.'
% 
%==========================================================================
% PROBLEM 5.   Trust me, I'm the Doctor.
%--------------------------------------------------------------------------
%
% Function Name: timeDoctor
% Inputs  (2): - (char) Departure calendar date
%			   - (double) Number of days that transpire
% Outputs (1): - (char) Arrival calendar date 
% 
% Function Description:
%   You're tired of your day-to-day routine of school, work, and sleep, so 
%   when the Doctor arrives on your doorstep with the TARDIS, asking if 
%   you're interested in some adventure, you rise to the occasion.  You are
%   scheduled to land on the planet Raxacoricofallapatorius, but during the
%   time warping, the TARDIS is pulled into a worm hole and transports you
%   and the Doctor back to earth at a different time period than when you
%   two left.  
% 
%   Now the Doctor is trying to figure out during what time period you two 
%   have arrived at on earth, but the only knowledge you have is how many 
%   days into the future or past you two have travelled.
%
%   Given the date of your departure from the present earth day, and the
%   number of days that have transpired, output the date that you and the
%   Doctor have landed into on earth.  The number of days that have 
%   transpired will be a positive number if the time travel was into the
%   future, and a negative number if the time travel was into the past.
%
%   The format of the date will be as following:
%
%               '<Month> <Day>, <Year>'       (spaces included)
%
%   So if the departure date were 'January 25, 2014', and the number of 
%   days transpired were 10, the arrival date would be 'February 4, 2014'.
%   Likewise, if the departure date were 'May 5, 2010', and the number of
%   days transpired were -400, the arrival date would be output as the
%   string 'January 29, 2009'.
%
%   Notes:
%   - You also do not need to account for leap years (assume February will 
%       always have 28 days).
%   -Output BC years as a negative year (ie, 'February 2, 320 BC' will be 
%       expressed as 'February 2, -320')
%   - Do not try to factor in the likelihood of a global warming apocalypse
%       ocurring in the future...
%   
%   Hint:
%   - You might find a counter useful.
%
% Test Cases:
%  
%   inDate1 = 'March 12, 2014';
%   numDays1 = 10;
%   outDate1 = timeDoctor(inDate1,numDays1);
%       outDate1 => 'March 22, 2014'
%
%   inDate2 = 'May 28, 2014';
%   numDays2 = -366;
%   outDate2 = timeDoctor(inDate2,numDays2);
%       outDate2 => 'May 27, 2013'
%
%   inDate3 = 'October 8, 1964';
%   numDays3 = -853462;
%   outDate3 = timeDoctor('October 8, 1964', -853462);
%       outDate3 => 'July 8, -374'
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.