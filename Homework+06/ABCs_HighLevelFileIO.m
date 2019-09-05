% DO NOT CHANGE THIS LINE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [xlsNum xlsText xlsRaw dlmArray] = ABCs_HighLevelFileIO(dlm1, dlm2, xls1, xls2)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% ABCs of High Level File I/O
%
%
% Directions:
% Write the code to satisify the following directions. For each part, store
% your answer in the variable that is specified within the parentheses. 
%   Ex. Add 1 + 1. (GT)
% That means store the value of 1 + 1 in the variable GT. 
%
% Given Input Variables:
%   1. dlm1 - Given delimited (.dlm) file 
%   2. dlm2 - .dlm file name to write to
%   3. xls1 - Given excel (.xls) file 
%   4. xls2 - .xls file name to write to
% Note: All files input variables will be in the format  
% i.e.: dlm = 'file.dlm'

% a) Reading an Excel worksheet. Read in an Excel file whose filename is
% given as an input to this function in xls1.  Store the resultant outputs
% in (xlsNum), (xlsText), and (xlsRaw).
[xlsNum, xlsText, xlsRaw] = xlsread(xls1);
% b) Writing Excel files. Write the xlsText data to xls2.
xlswrite(xls2, xlsText);
% c) Reading a delimited text file. Read in the values of dlm1 that is
% delimited with the character '*'. (dlmArray)
dlmArray = dlmread(dlm1, '*');
% e) Writing a delimited text file. Write a copy of dlmArray that is
% delimited with '^'. (dlm2)
dlmwrite(dlm2, dlmArray);
end