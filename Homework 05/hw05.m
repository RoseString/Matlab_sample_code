%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Dan Sun
% GT Email     : dsun33@gatech.edu
% Homework     : hw05
% Course       : CS1371
% TA's Name    : Alan, Terry
% Section      : GR
% Collaboration: "I worked on the homework assignment alone, using
%                  only course materials."
%               
%
% Files provided with this homework:  
%   hw05.m
%	ABCs_LowLevelFileIO.m
%   ABCs_hw05_pretest.p
%	favoriteSongs_soln.p
%   receipt_soln.p
%	secretMessage_soln.p
%	powerHolder_soln.p
%   madLibs_soln.p
%   abcs_lights.txt
%   convo1.m
%   convo2.m
%   convo3.m
%   flipBurger_bill_soln.txt
%   flipBurger_tab.txt
%   GT_theratio_uga.txt
%   krustyKrab_bill_soln.txt
%   krustyKrab_tab.txt
%   message1.txt
%   message2.txt
%   message3.txt
%   pokemon_rockstar_oops.txt
%   snowpocalypseMadlib.txt
%   snowpocalypseMadlib_fixedSOLN.txt
%   valentineMadlib.txt
%   valentineMadlib_fixedSOLN.txt
%   varsity_bill_soln.txt
%   varsity_tab.txt
%   wordlist1.txt
%   wordlist2.txt
%
% Files to submit:
%   hw05.m
%	ABCs_LowLevelFileIO.m
%	favoriteSongs.m
%   receipt.m
%   secretMessage.m
%   powerHolder.m
%   madLibs.m
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
%  >> ABCs_pretest_hw05
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
% PROBLEM 1.   Matlab Music Reviews
%--------------------------------------------------------------------------
%
% Function Name: favoriteSongs
% Inputs  (4): - (char) A string of the first favorite song.
%                (char) A string of the second favorite song.
%                (char) A string of the third favorite song.
%                (char) A string representing the filename of a .txt
%                       file with song review scores.
% Outputs (2): - (char) A string of the most well-reviewed song.
%                (double) The cumulative review score of that song.
%
% Function Description:
%   Write a function that will take 4 inputs: one of them will be a .txt
%   file with three songs and various ratings they received from song
%   reviews (an example is shown below). The other three inputs will be
%   strings of the song names that are in the .txt file. This function will
%   calculate the cumulative review score for each song (just add up all
%   the ratings they got), and output a string of the song name that had
%   the highest cumulative review score and the score that that song
%   received.
%
%   For example, if this is your .txt file:
%
%           Royals: 2
%           Thrift Shop: 3
%           Get Lucky: 5
%           Thrift Shop: 4
%           Get Lucky: 3
%           Royals: 5
%
%   'Royals', 'Thrift Shop', and 'Get Lucky' would be the first three
%   inputs used with this file. 'Royals' would have a cumulative score of
%   7, because it had ratings of 2 and 5; 'Thrift Shop' would similarly have a
%   cumulative score of 7; and 'Get Lucky' would have a cumulative score of
%   8. So your function would output 'Get Lucky' as a string, and 8 as a
%   double.
%
% Notes: 
%   - The songs are guaranteed to be reviewed the same number of times.
%   - There will not be a tie for the highest score.
%
% Hints:
%   - Switch statements will be helpful.
%
% Test Cases:
%
%   song1 = 'GT Fight Song';
%   song2 = 'The Ratio';
%   song3 = 'uga fight song';
%   filename1 = 'GT_theratio_uga.txt';
%   [bestSong1, score1] = favoriteSongs(song1,song2,song3,filename1);
%       bestSong1 => 'The Ratio'
%       score1 => 18
% 
%   song4 = 'Pokemon Theme Song';
%   song5 = 'Rockstar';
%   song6 = 'Oops I Did It Again';
%   filename2 = 'pokemon_rockstar_oops.txt';
%   [bestSong2, score2] = favoriteSongs(song4,song5,song6,filename2)
%       bestSong2 => 'Pokemon Theme Song'
%       score2 => 30
%
%==========================================================================
% PROBLEM 2.  Check Please!
%--------------------------------------------------------------------------
%
% Function Name: receipt
% Inputs  (1): - (char) A string representing a .txt file name
% Outputs (0)
% Output Files (1): - A .txt file representing a receipt from a restaurant
%
% Function Description:
%   Write a function called "receipt" that takes in a .txt filename that
%   represents a tab from a restaurant. The input file will contain a list
%   of food/beverage items, their prices, and the quantity that were
%   purchased. Your function will append the subtotal, total, gratuity, and
%   payment to the bottom of the file to make a complete receipt.
%
%   The food items will appear as follows:
%   foodName: [quantity]@[price]
%
%   Each item name will end with a colon. Then, the number preceding the
%   @ symbol represents how many of that item were ordered, while the
%   number following the @ symbol represents the price of one item. Here is
%   an example:
%
%   Food1: 1@4.50
%   Food2: 3@11.45
%   Drink1: 2@3.99
%
%   The input file will begin with the word "Tab" on the first line and
%   will have a row of dashes on the second line. The list of ordered items
%   begins on the third line. Immediately following the list of ordered
%   items will be another row of dashes. The input file stops here. Your
%   additions are as follows:
%
%   - On the first new line (following the second row of dashes), you will
%   print "SUBTOTAL: [sum of all the items]"
%
%   - The next line will contain "TOTAL: [SUBTOTAL + 8% sales tax]"
%
%   - The next line will contain "TIP: [15% tip from the TOTAL]"
%
%   - The next (and final) line will contian "PAYMENT: [TOTAL + TIP]"
%
%   Finally, write your output to a file with the same name as the input
%   file, but replacing "_tab" with "_bill".
%
% Notes:
%   - Each *individual* calculation will be rounded *down* to the nearest
%     cent. 
%     Ex: 137.34923 => 137.34
%     (Therefore, round SUBTOTAL down before it's printed. Then use the
%     rounded SUBTOTAL to calculate TOTAL. Use the same process with TIP.
%     Calculate PAYMENT by adding the rounded TOTAL and rounded TIP.) 
%   - The PAYMENT line should not end with a newline character. 
%   - If you choose to use fprintf(), use the %2.2f character when printing
%     numbers (however, be sure to round your numbers before using
%     %2.2f in your fprintf call. If you don't, it will round differently).
%   - The solution .p file will overwrite your own outputted file, so be
%     careful and remember if you called your own code or the solution code.
%
% Test Cases:
%   receipt('krustyKrab_tab.txt')
%       => file named 'krustyKrab_bill.txt'
%          should look like 'krustyKrab_bill_soln.txt'
%
%   receipt('flipBurger_tab.txt')
%       => file named 'flipBurger_bill.txt'
%          should look like 'flipBurger_bill_soln.txt'
%
%   receipt('varsity_tab.txt')
%       => file named 'varsity_bill.txt'
%          should look like 'varsity_bill_soln.txt'
%
%==========================================================================
% PROBLEM 3.   Crack the Code
%--------------------------------------------------------------------------
%
% Function Name: secretMessage
% Inputs  (1): - (char) A filename for the file containing the secret
%                       message
% Outputs (1): - (char) The secret message
%
% Function Description:
%   Write a function that takes in a txt file which has an "encoded"
%   message, and outputs the secret message in all capital letters. 
%
%   The text file will be coded according to the following formula: 
%        -Each word that has a capital letter ANYWHERE in the word will be
%        included in the secret message in the order they are found
%        -Eeach word that DOES NOT have a capital letter will NOT be
%        included in the secret message
%
%   So if the text file had the following line: 
%       'hello Gerogia purple crazy teCh cs1371 studenTs lOve homework 
%        matLAB'
%   Then the function would output: 
%       'GEORGIA TECH STUDENTS LOVE MATLAB'
% 
% Notes: 
%   - The text file may be more than one line
%   - There will be no punctuation in the file
%   - The output must be all capital letters
%   - Notice that there is no space at the end of the output
%
% Hints:
%   - strtok() may be useful here
%
% Test Cases:
%   secret1 = secretMessage('message1.txt')
%       secret1 = 'WE CAN DO THAT'
% 
%   secret2 = secretMessage('message2.txt')
%       secret2 = 'ALL GENERALIZATIONS ARE FALSE INCLUDING THIS ONE' 
%         
%   secret3 = secretMessage('message3.txt')
%       secret3 = 'ONE FISH TWO FISH RED FISH BLUE FISH'
% 
%==========================================================================
% PROBLEM 4. Who wears the pants?
%--------------------------------------------------------------------------
%
% Function Name: powerHolder
% Inputs  (1): - (char) Filename of a file containing a instant
%                       messaging/text conversation between two people
%                       dating
% Outputs (1): - (char) The name of the person who holds the power in the
%                       relationship.
%
% Function Description:
% Write a function, powerHolder, that takes in a instant messaging/text
% conversation between two people in a relationship and outputs who 
% speaking in that conversation holds the power in the relationship. This
% is defined simply by who says goodnight to the other first.
%
% Guaruntees:
%   - Someone will say goodnight. (Ignore case.)
%   - Between each speaker there will be exactly one blank line.
%
% Hints:
%   - It may be easier to use fgetl() instead of fgets() for ease in blank
%   line detection.
%   - Do NOT use fclose all or fclose('all'), just close files you open.
%
% Test Cases:
%
%   out1 = powerHolder('convo1.txt');
%           => 'Brittany'
%
%   out2 = powerHolder('convo2.txt');
%           => 'Alice'
%
%   out3 = powerHolder('convo3.txt');
%           => 'Leon'
%
%==========================================================================
% PROBLEM 5. Matlab Mad Libs
%--------------------------------------------------------------------------
%
% Function Name: madLibs
% Inputs  (2): - (char) name of txt file with missing nouns, verbs, and 
%                       adjectives 
%              - (char) name of txt file with a list of nouns, verbs and
%                       adjectives
% 
% Function Description:
%   Write a function called "madLibs" where the first input is the name of 
%   a text file containing a story with the keys: %n, %v, or %a, and the
%   second input is a the name of a text file with a comma-delimited list
%   of nouns on the first line, verbs on the second line, and adjectives on
%   the third line.
%
%   Replace the keys in the first text file with their corresponding part 
%   of speech from the seond text file, and write the result to a new file 
%   named the same as the original text file with the suffix '_fixed.txt'.
%
%   Use the words from the words txt file in the order they are listed.
% 
% Notes: 
%   - the second text file is guaranteed to always have three lines only,
%     with the first, second, and third lines containing the nouns, verbs,
%     and adjectives, respectively.
%   - All the words won't be used, but you are guaranteed enough words to
%     fill in the keys.
%   - The solution .p file will output a file with the same name as your
%     code is supposed to. So it will overwrite your file if you call the
%     solution file. Keep this in mind.
%
% Test Cases:
%
% madLibs('valentineMadlib.txt','wordlist1.txt')
%   -> should create a file 'valentineMadlib_fixed.txt' that looks like
%      'valentineMadlib_fixedSOLN.txt'
%
% madLibs('snowpocalypseMadlib.txt','wordlist2.txt')
%   -> should create a file 'snowpocalypseMadlib_fixed.txt' that looks like
%      'snowpocalypseMadlib_fixedSOLN.txt'
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.