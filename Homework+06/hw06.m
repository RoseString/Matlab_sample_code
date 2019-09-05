%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Dan Sun
% GT Email     : dsun33@gatech.edu
% Homework     : hw06
% Course       : CS1371
% TA's Name    : Alan, Terry
% Section      : GR
% Collaboration: "I worked on the homework assignment alone, using
%                  only course materials."
%
% Files provided with this homework:  
%   hw06.m
%	ABCs_CellArrays
%   ABCs_HighLevelFileIO
%   ABCs_hw06_pretest
%	sortByHeader_soln.p
%   emailGen_soln.p
%   xlsFormula_soln.p
%   csv2xls_soln.p
%   minesweeper_soln.p
%   techscores.xls
%   voltages.xls
%   number.xls
%   cabbages.xls
%   data1.csv
%   data2.csv
%   data3.csv
%   data1_soln.csv
%   data2_soln.csv
%   data3_soln.csv
%   title1.csv
%   title2.csv
%   title3.csv
%   testdlm1.dlm
%   hw1grades.xls
%
% Files to submit:
%   hw06.m
%	ABCs_HighLevelFileIO.m
%   ABCs_CellArrays.m
%	sortByHeader.m
%   emailGen.m
%   xlsFormula.m
%   csv2xls.m
%   minesweeper.m
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
% Part of this homework is in two m-files starting with ABCs_.  Open this
% file in MATLAB and complete it according to the directions contained
% within.
%
% Once you are done, you can test your ABC file by running the pretest at
% the command prompt, like so:
%
%  >> ABCs_hw06_pretest
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
%	Cell Arrays
%   High Level File I/O
%
% Follow the directions carefully and make sure files names as well as
% function headers are written exactly as described in the problem text. If
% your function headers are not written as specified, then you will recieve
% an automatic zero for the problem.
%
% All drill problems must be functions (i.e. contain valid function
% headers).  Any scripts turned in will be given a 0 automatically.
%
%
%==========================================================================
% PROBLEM 1.  Sorting an Excel File
%--------------------------------------------------------------------------
%
% Function Name: sortByHeader
% Inputs  (2): - (char) The file name of an Excel file
%              - (char) The name of a header to sort by
% Outputs (1): - (cell) Cell array containing the sorted Excel data 
%
% Function Description:   
%	Given the file name of an Excel file, write a function called
%	"sortHeader" that sorts the data alphabetically by the data contained
%	in the column of the given header and returns the sorted data in a cell
%	array. Remember when you are sorting the rows that you must move all
%	information associated with the header as well. Your function must work
%	for any number of rows and columns.
% 
% Notes:
%    -The function should work for any excel file, not just techScores.xls 
%
% Test Cases:
%	x = 'techScores.xls';
%
%   scores = sortHeader(x, 'Opponent');
%   scores => 'Opponent'              'Tech Points'    'Opponent Points'
%             'Clemson'               [         30]    [             27]
%             'Clemson'               [         39]    [             34]
%             'Duke'                  [         49]    [             10]
%             'Florida State'         [         49]    [             44]
%             'Georgia'               [         24]    [             30]
%             'Iowa'                  [         14]    [             24]
%             'Jacksonville State'    [         37]    [             17]
%             'Miami'                 [         17]    [             33]
%             'Mississippi State'     [         42]    [             31]
%             'North Carolina'        [         24]    [              7]
%             'Vanderbilt'            [         56]    [             31]
%             'Virginia'              [         34]    [              9]
%             'Virginia Tech'         [         28]    [             23]
%             'Wake Forest'           [         30]    [             27]
%
%
%==========================================================================
% PROBLEM 2. How the heck are those GT emails generated?
%--------------------------------------------------------------------------
% Function Name: emailGen
% Inputs  (1): - (cell) cell array containing first names, last names and 
%                       a vector of doubles
% Outputs (1): - (cell) vertical cell array of GT emails
%
% Function Description:
%   Given a cell array that contains nested cells of first and last names
%   and a vector of doubles, write a function called "emailGen" that 
%   creates a new cell array of the GT usernames of each person.
%
%   The input cell array will contain within it 3 pieces of data: The first
%   will be a cell array containing first names, and the second will be a
%   cell array of the corresponding last names, and the last one will
%   be a vector of doubles.
%
%   The output will be cell array where each entry is the corresponding GT
%   email of that person, formatted like so:  
%
%     First Letter of First Name + Last Name + Number + '@gatech.edu'
%
%   For instance, if the input was {{'Jeremy'},{'Lin'},[17]} then
%   the output would be:
%
%           {'jlin17@gatech.edu'}
%
% Notes: 
%   - Emails generated are guaranteed to be unique (i.e. no repeats)
%   - Each element in the output cell array must be a string with all
%     letters lowercase.
%   - The cells and vectors within the input are guaranteed to be the same
%     length.
%   - You may find the function num2str() useful.
%
% Test Cases:
%   in = {{'David','Kristin','Chip'},{'Smith','Marsicano','Phillips'}, ...
%         [3 7 1]};
%   out = emailGen(in);
%       out -> {'dsmith3@gatech.edu'; 'kmarsicano7@gatech.edu'; ...
%               'cphillips1@gatech.edu'}
%
%
%==========================================================================
% PROBLEM 3.   Plug and Chug
%--------------------------------------------------------------------------
%
% Function Name: xlsFormula
% Inputs  (2): - (char) a string representing the name of a .xls file
%                (char) a string representing a formula to compute
% Outputs (0):
%
% Output files (1): - A .xls file that contains a new column of values
%                     computed from the formula
%
% Function Description:
%   One of the great things about Excel is how easy it is to manipulate
%   data using the formula feature. For example, typing '= A2 + B2' in the
%   cell C2 will insert the sum of the values contained in A2 and B2 into
%   C2. Then, clicking and dragging C2 down column C will populate the rest
%   of column C with the sums of the corresponding values in column A and 
%   column B (C3 will be '= A3 + B3', and so on). So in the tradition of CS
%   1371, you must accomplish this very same task using Matlab!
%   
%   Write a function called "xlsFormula" that populates a column of an
%   Excel spreadsheet using a given formula. The following provides a
%   simple example.
%
%   Input spreadsheet is called 'example.xls' and looks like:
%
%   Header A | Header B | Header C | Header D
%          1 |      1.1 |        0 |      2.5
%        3.9 |      4.4 |        0 |        6
%
%   The input formula will be formatted as <col3>=<col1><operator><col2>,
%   where col1, col2, and col3 are given as capital letters and the
%   operator can be '+', '-', '*', or '/'. In this example, let's have the
%   formula be 'C=A+D'.
%
%   Input formula: 'C=A+D'
%
%   Your job is to read the input file into Matlab, populate column C with
%   the values from column A added to the values from column D, and output
%   a new spreadsheet called 'example_new.xls'.
%
%   Output spreadsheet is called 'example_new.xls' and looks like:
%
%   Header A | Header B | Header C | Header D
%          1 |      1.1 |      3.5 |      2.5
%        3.9 |      4.4 |      9.9 |        6
%
% Notes: 
%   - The first row will always consist of header names
%   - The following rows will only contain numbers and none will be blank
%   - There will always be at least 2 columns and 2 rows
%   - You may find strtok(), switch statements, and num2cell() useful
%
% Test Cases:
%   xlsFormula('voltages.xls', 'D=C-B');
%     Output file should be named 'voltages_new.xls' and look like
%     'voltages_soln.xls'
%
%   xlsFormula('number.xls', 'B=A*A');
%     Output file should be named 'number_new.xls' and look like
%     'number_soln.xls'
%
%   xlsFormula('cabbages.xls', 'D=B/C');
%     Output file should be named 'cabbages_new.xls' and look like
%     'cabbages_soln.xls'
%
%
%==========================================================================
% PROBLEM 4. CSV to Excel Export
%--------------------------------------------------------------------------
%
% Function Name: csv2xls
% Inputs  (2): - (char)   A string of the file name that contains the data
%                          
%              - (char)   A string of the file name that contains the
%                           column headers
%                          
% Outputs (0): 
%
% Output files (1): - a .xls file that contains the sorted column headers
%                       and the data
% 
% Function Description:
%       You are given a csv file. It contains data but no headers. You are
%       given another text file that contains the corresponding headers of
%       the columns of data. Write a function that place the corresponding
%       headers on to the data and then sort the columns alphabetically
%       (a-z) by their corresponding header. The final data should be
%       exported as a .xls file with the same name as the original csv
%       file. The function num2cell may be useful.
% 
%
%
% Test Cases:
%   
%   csv2xls('data1.csv', 'title1.txt');
%       output file should look like data1_soln.xls
%
%   
%   csv2xls('data2.csv', 'title2.txt');
%       output file should look like data2_soln.xls
%      
% 
%   csv2xls('data3.csv', 'title3.txt');
%       output file should look like data3_soln.xls
%
%
%==========================================================================
% PROBLEM X.  Va Va Ka-Boom! 
%--------------------------------------------------------------------------
%
% Function Name: minesweeper
% Inputs  (1): - (cell) a cell array that represents a minesweeper game 
%                   board
% Outputs (1): - (cell) a cell array that represents a minesweeper game 
%                   board, including number hints
%
% Function Description:
%   Given a cell array which represents a minesweeper game board containing
%   some mines (denoted '*') and some clear/safe areas (denoted []), write
%   a function called "minesweeper" that counts how many mines surround
%   each clear area and outputs a cell array with these counts in the clear 
%   areas.
% 
%   For example, given:
%      {'*' '*' '*'
%       '*' []  '*'
%       '*' '*' []}
%
%   The function should return:
%      {'*' '*' '*'
%       '*' [7] '*'
%       '*' '*' [2]}
%
%   The numbers in the output cell array depend on the number of mines 
%   around that clear area. For the clear area at (2,2), the output 
%   contains 7 because the ring around (2,2) contains 7 mines. Similarly, 
%   we contains at (3,3) because the ring around (3,3) only contains 2 
%   mines.
%
% Note: 
%   All numbers in the output cell array will be between 0 and 8.
%   
% Hints:
%   - You may find isempty() and/or cell() useful.
%
% Test Cases:
%   board1 = {[] []  []
%             [] '*' []
%             [] []  []}
%   out1 = minesweeper(board1)
%       out1 => {[1],[1],[1]
%                [1],'*',[1]
%                [1],[1],[1]}
%
%   board2 = {[] '*' []
%             [] []  '*'
%             [] '*' []}
%   out2 = minesweeper(board2)
%       out2 => {[1],'*',[2]
%                [2],[3],'*'
%                [1],'*',[2]}
%
%   board3 = cell(5,6);
%   board3{2,3} = '*';
%   board3{3,5} = '*';
%   board3{4,1} = '*';
%   board3{5,4} = '*';
%   board3{1,3} = '*';
%   out3 = minesweeper(board3)
%       out3 => {[0],[2],'*',[2],[0],[0]
%                [0],[2],'*',[3],[1],[1]
%                [1],[2],[1],[2],'*',[1]
%                '*',[1],[1],[2],[2],[1]
%                [1],[1],[1],'*',[1],[0]}
%
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.