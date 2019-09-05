%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Dan Sun
% GT Email     : dsun33@gatech.edu
% Homework     : hw01
% Course       : CS1371
% Instructor   : Omojokun, Smith
% Lecture Time : TueTh 12:00
% TA's Name    : Alan, Terry
% Section      : GR
% Collaboration: "I worked on the homework assignment alone, using
%                  only course materials."
%
%
% Files provided with this homework:  
%	wreckIt_soln.p
%	marbles_soln.p
%	oddAndDivisible_soln.p
%	DistForm_soln.p
%	ABCs_functions.m
%   ABCs_pretest_functions.p
%   CS 1371 Homework Guide.pdf
%   ABCs_HomeworkOverview.m
%   ABCS_pretest_HomeworkOverview.p
%
% Files to submit:
%   hw01.m
%	ABCs_functions.m
%	wreckIt.m
%	marbles.m
%	oddAndDivisible.m
%	DistForm.m
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
% SEMICOLON USE
%--------------------------------------------------------------------------
%
% From now on, you should be using semicolons at the end of each line of
% code to suppress the outputs.  This means your code will not print values
% onto the screen. By using semicolons, your code will run much faster.  In
% addition, grading your code will also take less time.  You are therefore
% strongly encouraged to use semicolons to suppress all of your outputs.
%
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
% move on to another student until you comment your code.
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
%  >> ABCs_pretest_functions
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
%	Functions
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
% PROBLEM 1. He's Going The Distance
%--------------------------------------------------------------------------
%
% Function Name: DistForm 
% Inputs  (4): - (double)   A number depicting the x value of the point 1
%              - (double)   A number depicting the y value of the point 1
%              - (double)   A number depicting the x value of the point 2
%              - (double)   A number depicting the y value of the point 2
% Outputs (1): - (double)   The distance between the two points
% 
% Function Description:
%
%   Write a function called "DistForm" that uses the distance formula to
%   find the distance between two points.  The points will be broken into
%   their components for the input values.  So, the first two input values
%   will be the x and y values, respectively, of the first point, and the
%   last two inputs will be the x and y values, respectively, of the second
%   point.
%
% Notes:
%   - In case you forgot... http://en.wikipedia.org/wiki/Distance
%
% Test Cases
%   out1 = DistForm(4,5,7,9);
%       out1 => 5
%
%   out2 = DistForm(4,3,-7,-10);
%       out2 => 17.0294
%
%   out3 = DistForm(0,0,0,0);
%       step3 => 0
%
%==========================================================================
% PROBLEM 2. I'M GONNA WRECK IT!
%--------------------------------------------------------------------------
%
% Function Name: wreckIt 
% Inputs  (3): - (double)   A number depicting the force of a single hit
%              - (double)   A number depicting the total number of hits
%                               performed
%              - (double)   A number depicting the critical load of the
%                               structure
% Outputs (1): - (logical)  A logical depicting whether the building will 
%                               be wrecked.
%
% Function Description:
%
%   In Disney's game "Fix-It Felix, Jr.", "Wreck-It" Ralph aims to destroy
%   buildings by pummling them with his massive (and impressive) fists and
%   lightning speed. However, Ralph has brains as well as brawn.
%   Believe it or not, good ol' Ralph is an engineer.  He knows that he
%   needs to excert the proper amount of force in order to overcome the
%   building's critical load (the amount of load - or force - that the
%   structure can withstand before buckling - or collapsing).  A man with a
%   plan, "Wreck-It" Ralph uses MATLAB to help him figure out what he needs
%   to do for the upcoming levels.
% 
%   Write a function called "wreckIt" that calculates the net force of
%   Ralph's hits and compares it to the critical load of the building.  The
%   function will output a logical true if Ralph would successfully wreck
%   the building (net load is greater than or equal to the critical load),
%   and a logical false if the building withstands Ralph's efforts (net
%   load is less than the critical load).
%
% Hints:
%   - the use of logical operators might prove useful
%           == "is equal"
%           <  "is less than"
%           >  "is greater than"
%           <= "is less than or equal to"
%           >= "is greater than or equal to"
%   - logical operators *ALWAYS* return a logical
%           i.e. 4 >= 3 returns true
%                5 == 10 returns false
%   - Assume force and critical load inputs are of the same units
%
% Test Cases:
%   wrecked1 = wreckIt(900,5,3000);
%       wrecked1 => true
%
%   wrecked2 = wreckIt(874.5,12,20000);
%       wrecked2 => false
%
%   wrecked3 = wreckIt(125,25,5000);
%       wrecked3 => false
%
%==========================================================================
% PROBLEM 3. How many marbles?
%--------------------------------------------------------------------------
%
% Function Name: marbles
% Inputs  (3): - (double) height of the container
%              - (double) diameter of the container
%              - (double) estimated diameter of a marble
% Outputs (1): - (double) estimated number of marbles
%
% Function Description:
%   There is a contest in the local mall.  There is a giant cylinder shaped
%   glass container full of marbles.  The winner of the contest is the
%   person who can get the closest guess to the number of marbles is.  In
%   order to give your guess, you will use the given dimensions of the
%   cylinder containter and the estimated diameter of one marble.
%
%   Write a function named "marbles" that takes in the height of the
%   container (in inches), the diameter of the container (in inches), and
%   the estimated diameter of a marble (in inches), and use it to determine
%   the estimated number of marbles in the container (numMarblesEst).
%   Because you can't have a fraction of a marble, you should round UP to
%   the nearest marble (ie. 47.3 marbles becomes 48 marbles)
%
% Formulas Needed:
%   - You will need the following formulas for this problem:
%         ~ Volume of Cylinder: pi.*(radius.^2).*height
%         ~ Volume of Sphere: (4/3).*pi.*(radius.^3)
%   - The number of marbles is estimated to be number of marbles (volume)
%     that can fit into the total volume of the container.  Do not try to
%     account for any empty space between marbles.
%
% Test Cases:
%   heightC1 = 75;
%   diameterC1 = 10;
%   diameterMarEst1 = 3;
%
%   estNumMarbles1 = marbles(heightC1, diameterC1, diameterMarEst1);
%       estNumMarbles1 => 417
%
%   heightC2 = 30;
%   diameterC2 = 5;
%   diameterMarEst2 = 1.5;
% 
%   estNumMarbles2 = marbles(heightC2, diameterC2, diameterMarEst2);
%       estNumMarbles2 => 334
%==========================================================================
% PROBLEM 4. Oddly Invisible?
%--------------------------------------------------------------------------
% 
% Function Name: oddAndDivisible
% Inputs  (3): - (double) a number to check
%              - (double) first divisor
%              - (double) second divisor
% Outputs (1): - (logical) logical to see if the first input is odd and
%                          divisible by the second and third inputs
%
% Function Description:
%   Write a function, oddAndDivisible, that checks to see if the first
%   input is odd and divisible by the second and third inputs.  If all the
%   conditions are met, the function should output true.  If even
%   one of these conditions are not met, then the function should output
%   false.
%
% Example:
%   If the function call was:
%
%       log = oddAndDivisible(35, 5, 7)
%
%   First, it checks to see if 35 is odd (which it is).  It would then
%   check to see if 35 is divisible by 5 (which it is).  It would then
%   check to see if 35 is divisible by 7 (which it is).  Because all of
%   these conditions are true, then:
%   
%       log => true
%
%   However, if the call was:
%
%       log = oddAndDivisible(30, 5, 6)
%
%   First it checks to see if 30 is odd (which it isn't).  Therefore
%
%       log => false
%
% Notes:
%   - All numbers will be real, positive integers (Zero will not be given)
%   - logical operators will prove useful
%
%
% Test Cases:
%
%   log1 = oddAndDivisible(35, 5, 7);
%       log1 => true
%
%   log2 = oddAndDivisible(30, 5, 6);
%       log1 => false
% 
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
