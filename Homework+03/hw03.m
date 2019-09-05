%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Dan Sun
% GT Email     : dsun33@gatech.edu
% Homework     : hw03
% Course       : CS1371
% TA's Name    : Terry, Alan
% Section      : GR
% Collaboration: "I worked on the homework assignment alone, using
%                  only course materials."
%
%
% Files provided with this homework:
%   caesar_soln.p
%   dna2rna_soln.p
%   extrema_soln.p
%   ABCs_hw04_pretest.p
%	ABCs_strings.m
%
% Files to submit:
%   hw03.m
%	ABCs_strings.m
%	dna2rna.m
%	extrema.m
%	caesar.m
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
% If you have problems running the pretest, then you probably need a newer
% version of MATLAB.  Newer versions of MATLAB are available free to you.
% Please read David Smith's announcement "Matlab 'Free' Access" for further
% information.  Be sure the pretest and your ABC file are in the same
% directory.
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
%	strings and conditionals
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
% PROBLEM 1.  I wish I was Adenine, so I can get paired with U
%--------------------------------------------------------------------------
%
% Function Name: dna2rna
% Inputs  (1): - (char) a string representing a DNA sequence
% Outputs (1): - (char) a string representing an RNA sequence
%
% Function Description:
%   Deoxyribose Nucleic Acid (DNA) is composed of a unique sequences of
%   nucleotides that carry important genetic information. The DNA sequence
%   is transcribed into an RNA sequence, which is then translated into an
%   amino acid sequence, which then becomes one of many proteins used for a
%   variety of crucial cellular functions.
% 
%  For example, given a DNA sequence, 
% 
%  ATAGTACCGGTTACTGAAAATTGTTG
% 
%  This will get transcribed into an RNA sequence per the appropriate base
%  pairing:
% 
%     A ==> U
%     T ==> A      such that      DNA ==>  ATAGTACCGGTTACTGAAAATTGTTG
%     G ==> C                     RNA ==>  UAUCAUGGCCAAUGACUUUUAACAAC
%     C ==> G
%                                                                                                                                                                                                                                                                                                                        
%  Write a function called "dna2rna" that takes in a string
%  representing a DNA sequence and outputs a string representing a 
%  corresponding RNA sequence
%
% HINTS:
% - you might find logical indexing useful
% - It is guaranteed that all letters will be capital
%
% NOTES:
% - Make sure not to double convert! (i.e. do not reconvert G's from C's to
%   C's again)
% 
% Test Cases:
%
%  rna1 = dna2rna('ATAGTACCGGTTACTGAAAATTGTTG');
%     rna1 => 'UAUCAUGGCCAAUGACUUUUAACAAC'
%
%  rna2 = dna2rna('ATGATGGTCAGTAACGGGGCAAT');
%     rna2 = 'UACUACCAGUCAUUGCCCCGUUA'
%
%==========================================================================
% PROBLEM 2.  Extreme Matlab
%--------------------------------------------------------------------------
%
% Function Name: extrema
% Inputs  (1): - (char)  A string representing a quadratic function.
% Outputs (1): - (double)  A vector representing the [x,y] coordinates of
%                          its vertex.
%
% Function Description:
%   Let's say your little sister is taking an Algebra 1 class in middle
%   school and has this "stupid homework assignment with like a bajillion
%   problems", and she's so desperate for your help that she'll forgive all
%   the sisterly blackmail she has on you if you help her. So you write a
%   MATLAB function to do her homework for her!
%
%   Write a matlab function that takes in the string of a quadratic
%   function y (which will be of the form 'ax^2+bx+c'; where a, b, and c
%   are the numerical coefficients), and plugs coefficients into two simple
%   formulas for the x and y coordinates of the quadratic function's
%   vertex.
%
%   Here are the formulas you will use:
%   xcoordinate = -b./(2.*a)
%   ycoordinate = (4.*a.*c-b^2)./(4.*a)
%
%
% Hints:
%   - You might find str2num and strtok useful.
%   - Don't worry about rounding.
%   - There will always be three terms.
%   - You do not have to take negative terms into account.
%
% Test Cases:
%   vertex = extrema('25x^2+0x+10');
%       vertex => [0 10]
%
%   vertex = extrema_soln('500x^2+1000x+12');
%       vertex => [-1 -488]
% 
%   vertex = extrema('11x^2+484x+2');
%       vertex => [-22 -5322]
%
%
%==========================================================================
% PROBLEM 3. Cryptography
%--------------------------------------------------------------------------
%
% Function Name: caesar
% Inputs  (2): - (char) a string of unknown length
%              - (double) an integer describing the shift
% Outputs (1): - (char) a coded string using the Caesar cipher
%
% Caeser Cipher Information:
% 	The Caesar cipher is named after Julius Caesar, who, according to 
% 	Suetonius, used it with a shift of three to protect messages of 
% 	military significance. It is unknown how effective the Caesar cipher
% 	was at the time, but it is likely to have been reasonably secure
%   because most of Caesar's enemies would have been illiterate and
% 	others would have assumed that the messages were written in an unknown 
%   foreign language.
% 
%   Caesar ciphers can still be found today in children's toys such as
%   secret decoder rings. A Caesar shift of thirteen is also performed in
%   the ROT13 algorithm, a simple method often used to obscure text such as
%   joke punchlines and spoilers online.
%
%	In the Caesar cipher, each letter is shifted by the specified amount.
%	For example, if the shift is 3, then the letter 'a' would be coded as
%	the letter 'd'. 
%
% Function Description:
%	The function takes in a string and then uses the Caesar cipher to 
%	encode it. Only letters (both upper case and lower case) should be
%	encoded using the Caesar cipher. Any other characters such as spaces,
%	periods, etc., should not be encoded.
%
% Notes:
%   - The Caesar cipher should work for both positive and negative integers
%     that indicate the shift given by the second input.
%   - There is no limit to the value of the shift number in the second 
%     input.
% 
% Hints:
%   - The mod() function may be useful.
%
% Test Cases:
%	coded1 = caesar('Thank you Mario!', 4);
%       coded1 => 'Xlero csy Qevms!'
%
%   coded2 = caesar('Iba vby Wypujlzz pz pu huvaoly jhzasl!', -7);
%       coded2 => 'But our Princess is in another castle!'
%
%   coded3 = caesar('Uh, why isn''t this cipher working?', -26);
%       coded3 => 'Uh, why isn''t this cipher working?'
%
%   coded4 = caesar('uggcf://jjj.lbhghor.pbz/jngpu?i=9LsJE438jxt', 65);
%       coded4 => 'https://www.youtube.com/watch?v=9YfWR438wkg'
%
%==========================================================================
% PROBLEM 4.  aLl MiXeD uP
%--------------------------------------------------------------------------
%
% Function Name: switchCase
% Inputs  (2): - (char) a string containg a word or phrase
%              - (char) a string determining how to modify the previous
%                 input
% Outputs (1): - (char) the modified string
%
% Function Description:
%   Write a function called "switchCase" that takes in a string containing
%   a word or phrase and another string containing directions, and outputs
%   the modified word or phrase based on the directions. There can be 4
%   different ways of modifying the string:
%
%           - 'Title Case' -> Capitalizes the first letter of every word.
%                             Everything else is lowercase. 
%           - 'Camel Case' -> Capitalizes the first letter of every word
%                             EXCEPT the first one. Everything else is
%                             lowercase. All the spaces are removed.
%           - 'Da Vinci'   -> Reverses the string.
%           - '1337'       -> Changes each of the following letters into 
%                             it's respective number replacement.
%                             '1' should replace 'l'
%                             '2' should replace 'z'
%                             '3' should replace 'e'
%                             '4' should replace 'a'
%                             '5' should replace 's'
%                             '6' should replace 'g'
%                             '7' should replace 't'
%                             '8' should replace 'b'
%                             '9' should replace 'j'
%                             '0' should replace 'o'
%                             Each of the replacements should work for
%                             capitalized letters as well.
%
%
% Test Cases:
%   new_string = switchCase('there AND back again', 'Title Case');
%       new_string => 'There And Back Again'
%
%   new_string = switchCase('What is better than UPPER or lower case?',...
%   'Camel Case');
%       new_string => 'whatIsBetterThanUpperOrLowerCase?'
%
%   new_string = switchCase('Hannah!', 'Da Vinci');
%       new string => '!hannaH'
%
%   new_string = switchCase('Now I can talk like a REAL hacker!', '1337');
%       new_string => 'N0w I c4n 741k 1ik3 4 R341 h4ck3r!'
%==========================================================================
% PROBLEM 5.  Bazinga!
%--------------------------------------------------------------------------
%
% Function Name: rpsls
% Inputs  (2): - (string) Player 1's move 
%              - (string) Player 2's move
% Outputs (1): - (string) A sentence describing who won 
%
% Function Description:
%   Let's play a game of rock-paper-scissors-lizard-spock! Given the moves
%   of two players, write a function called rpsls that determines who won
%   the game of rpsls. The function should output:
%                'Player 1 wins!' if player 1 wins
%                'Player 2 wins!' if player 2 wins 
%                'It's a tie!' if both players choose the same move.
%                       (remember, to get matlab to put a <'> in a string,
%                       you must type <''> ex: 'It''s a tie')
%
%   In rpssl, there are five possible moves: 'rock', 'paper', 'scissors',
%   'lizard', and 'spock'. You are guaranteed that the two inputs will be
%   lower case and one of these five moves. Each move can beat two moves and
%   be beaten by two moves. The criteria are as follows:
%   
%   1. Rock beats scissors and lizard
%   2. Paper beats rock and spock
%   3. Scissors beats paper and lizard
%   4. Lizard beats paper and spock
%   5. Spock beats rock and scissors
%
%   More information on rpsls can be found here:
%   http://en.wikipedia.org/wiki/Rock-paper-scissors-lizard-Spock
%
% Hints:
%	You might find strcmp useful.
%
% Test Cases:
%   [game1] = rpsls('spock','rock');
%       game1 => 'Player 1 wins!'
%
%	[game2] = rpsls('lizard','scissors');
%		game2 => 'Player 2 wins!'
%
%	[game3] = rpsls('paper','paper');
%		game3 => 'It''s a tie!'
% 
%==========================================================================
% PROBLEM 6.  I've got the magic in me!
%--------------------------------------------------------------------------
%
% Function Name: isMagic
% Inputs  (1): - (double)  A NxN array
% Outputs (1): - (logical) A logical value representing whether the array
%                          is a magic square or not
% Function Description:
%   Write a function called "isMagic" that takes an NxN array and returns 
%   a logical value describing whether the array is a magic square or not.
%   By definition a magic square is an array where all the columns, rows,
%   and diagonals add up to the magic constant, defined by:
%
%                               N(N^2 + 1)
%               magicConstant = ----------
%                                    2
%
%   where N is the number of rows/columns. In addition, a magic square
%   contains all the integers from 1 to N^2. This function should check for
%   for all these properties, and then return a logical true/false on
%   whether or not the array satisfies these conditions.
%
%
% Hints:
%   - You may find the diag(), sort(), and all() functions useful.
%
% Test Cases:
%   arr1 = [8     1     6
%           3     5     7
%           2     9     4];
%   out1 = isMagic(arr1);
%   out1 => false
% 
%   arr2 = [16     2     3    13
%            5    11    10     8
%            9     7     6    12
%            4    14    15     1];
%   out2 = isMagic(arr2);
%   out2 => true;
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
