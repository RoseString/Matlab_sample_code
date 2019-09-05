%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Dan Sun
% GT Email     : dsun33@gatech.edu
% Homework     : HW09
% Section      : GR
% Collaboration: "I worked on the homework assignment alone, using
%                  only course materials."
%
%
% Files provided with this homework:
%   hw09.m
%	Batmobile_Report_soln.txt
%	Mystery Machine_Report_soln.txt
%	Speed Racer_Report_soln.txt
%	UBF_Solution1.png
%	UBF_Solution2.png
%	UBF_Solution3.png
%	extrapCalc1.png
%	extrapCalc2.png
%	ABCs_numerical_methods.m
%   ABCs_hw09_pretest.p
%   racingReport_soln.p
%   estimateExtremum_soln.p
%   heartbeat_soln.p
%   UniqueBestFit_soln.p
%   extrapCalc_soln.p
%
% Files to submit:
%	ABCs_numerical_methods.m
%	racingReport.m
%	estimateExtremum.m
%	heartbeat.m
%	UniqueBestFit.m
%	extrapCalc.m
%   hw09.m
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
%  >> ABCs_hw09_pretest
%
% Alternatively, you can right button click the file in the Current Folder
% window and click "Run".  You cannot open the file by double clicking it.
% Be sure the pretest and your ABC file are in the same directory.
%
% The pretest is simply an aide to help you test your code.  While we
% strive to supply a quality pretest file for you to use, a sucessful
% result with a pretest file does not ensure awarded points on the
% homework.  The pretest is merely a guide to help you complete the ABCs.
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
% PROBLEM 1.  MATLAB Racing.
%--------------------------------------------------------------------------
%
% Function Name: racingReport
% Inputs  (3): - (double) A vector containing the coefficients of a
%                         polynomial for a car's velocity at any time (sec)
%              - (double) A number representing time (sec)
%              - (char) A string representing the car's name.
% Outputs (0): - None
% Outputs Files (1): - A .txt file containing your "report".
%
% Function Description:
%   Given a vector containing the coefficients of a polynomial that
%   describes a car's velocity at any time (in seconds), a desired time in
%   seconds, and the car's name, write a function called "racingReport"
%   that outputs a .txt "report" of the car's position, velocity, and
%   acceleration at that desired time.
%
%   For the problem, you need to calculate the coefficients of the
%   polynomial describing acceleration (which is the derivative of the
%   given velocity), and the coefficients of the polynomial describing
%   position (which is the integral of the given velocity; use a 0 for the
%   constant that comes in when you integrate).
%
%   Your output .txt file will be a "report" of the position, velocity, and
%   acceleration. It will be named like this, '<car name from
%   input>_Report.txt'. The units (m, m/s, m/s^2) need to be included in
%   this report, and %d should be used for all numerical values in
%   fprintf().
%
% Notes:
%   - You must calculate the exact accelerations, velocities, and positions
%     at the input time and specified time interval, NOT estimates from 
%     using the slope formula.
%   - You are *not* allowed to use the built-in functions polyder() or
%     polyint().
%   - The position, velocity, and acceleration of the car at a desired time 
%     can be negative.
%   - The length of the line of dashes used in the report is 38.
%   - Look at the solution .txt files for specific formatting questions.
%     You can highlight the text to see where there are spaces.
%
% Hints:
%   - You might find the polyval() function useful for this problem.
%   - You can right click two files in your current folder and click
%     compare.
%
% Test Cases:
%
%   racingReport([4500 -5], .5, 'Batmobile');
%       => output file should look like Batmobile_Report_soln.txt
%
%   racingReport([1 -25 1 -25], 5, 'Mystery Machine');
%       => output file should look like Mystery Machine_Report_soln.txt
%   
%   racingReport([4 7 -5 0], 12, 'Speed Racer');
%       => output file should look like Speed Racer_Report_soln.txt
%
% ==========================================================================
% PROBLEM 2.  I can do calculus with MATLAB?
% --------------------------------------------------------------------------
% 
% Function Name: estimateExtremum
% Inputs  (2): - (double) a vector of x coordinates
%              - (double) a vector of y coordinates 
% Outputs (1): - (double) a vector of the x and y coordinates of the extremum 
% 
% Function Description:
%   Write a function called "estimateExtremum" that takes in a set of x and y
%   coordinates corresponding to the graph of a function y = f(x) and outputs
%   the approximate coordinates of the function's local extremum (maximum or
%   minimum) as a 2x1 column vector.  
% 
%   Remember from calculus that a local minimum or maximum of a function
%   occurs where the derivative of the function equals zero. Using dy/dx and
%   the corresponding average x-value over each small interval, linearly
%   interpolate to find the x-value for which dy/dx equals 0. You should then
%   do further linear interpolation to find the y-value from the original
%   function that corresponds to the x-value of the extremum.
% 
% Notes: 
%   - The function is guaranteed to have exactly one extremum and an end
%     point will never be an extremum.
%   - The vector of x coordinates is guaranteed to be strictly increasing,
%     but the vector of y coordinates is not.
%   - When doing the first interpolation, the average x-value over the
%     interval from x1 to x2 is the midpoint of x1 and x2.
% 
% Test Cases:
%   x1 = 1:0.2:4;
%   y1 = 3.*x1.^4 - 11.*x1.^3 + 33.*x1.^2 - 99.*x1 + 54;
%   extremum1 = estimateExtremum(x1, y1);
%             extremum1 => [2.0317; -51.8306]
%
%   x2 = [1, 1.2, 1.5, 1.7, 2, 2.2, 2.5, 2.7, 3];
%   y2 = [-5, -4.08, -3, -2.48, -2, -1.88, -2, -2.28, -3];
%   extremum2 = estimateExtremum(x2, y2);
%             extremum2 => [2.2500; -1.9000]
%
%==========================================================================
% PROBLEM #. HeartBeat
%--------------------------------------------------------------------------
%
% Function Name: heartbeat 
% Inputs  (2): - (double) x values for the plot of a patient's heartbeat
%              - (double) y values for the plot of a patient's heartbeat
%              - (double) A 1x2 vector of the range describing normal
%                         blood pressure.
% Outputs (1): - (double) The area under the plot of the heartbeat.
%              - (string) Blood pressure condtion
%
% Function Description:
%    You are a doctor who has discovered a new way of determining a
%    patient's blood pressure condition from the absolute area under a plot
%    of their heartbeat. This is what you have discovered: depending on
%    certain factors in the patient, there is a range for what the healthy
%    area under a heartbeat plot should be. For demonstration, let's say
%    this range is from x1 to x2. Then let A represent the patient's actual
%    area under their heartbeat plot:
%
%       If A < x1, then this patient has 'Low Blood Pressure'.
%       If x1 <= A <= x2, then this patient has 'Normal Blood Pressure'.
%       If x2 < A, then this patient has 'High Blood Pressure'.
%
%    Write a function that takes in the x and y data for a plot of a
%    patient's heartbeat, the range of that patient's healthy range, and
%    outputs the area under their heartbeat plot and their blood pressure
%    condition. The area under the heartbeat plot should be a scalar
%    double, and the blood pressure condition will be one of the three
%    conditions in apostrophes above: 'Low Blood Pressure', 'Normal Blood
%    Pressure', 'High Blood Pressure'.
%
% Hints:
%  - This function requires the absolute area under the plot. So if there
%    are any "negative areas" below the x axis, then these will need to be
%    made positive in your calculations.
%  - Though this function analyzes plot data, and it may help you to look
%    at a plot of the data, there is no output plot of this function.
%  - This function is not intended to be medically accurate. Do not
%    use it diagnose your grandmother's blood pressure.
%
% Test Cases:
%
%    x1 = [ 0 , 1, 1.5, 2, 3, 4, 5, 6 , 6.5 ,7]; 
%    y1 = [ 0 , 0 , -1, 0 , 5 , 0 , -3 , 0, 1.5, 0];
%    tr1 = [9.250 10.000];
%    [area1,  cond1] = heartbeat(x1,y1,tr1);
%        => area1 = 9.25
%           cond1 = 'Normal Blood Pressure'
%
%    x2 = [ 0 , 1, 1.5, 2, 3, 4, 5, 6 , 6.5 ,7];
%    y2 = [ 0 , 0 , -1, 0 , 8 , 0 , -4 , 0, 2, 0];
%    tr2 = [10 13];
%    [area2,  cond2] = heartbeat(x2,y2,tr2);
%        => area2 = 13.5
%           cond2 = 'High Blood Pressure'
%
%
%    x3 = [ 0 , 1, 1.5, 2, 3, 4, 5, 6 , 6.5 ,7]; 
%    y3 = [ 0 , 0 , -1, 0 , 8 , 0 , -4 , 0, 2, 0];
%    tr3 = [13.6 16];
%    [area3,  cond3] = heartbeat(x3,y3,tr3)
%        => area3 = 13.5
%           cond3 = 'Low Blood Pressure'
%
%==========================================================================
% PROBLEM 4.   If The Data Fits...
%--------------------------------------------------------------------------
%
% Function Name: UniqueBestFit
% Inputs  (2): - (double) x-data
%              - (double) y-data 
% Outputs (0): - None
% Output Plots (1): Plot of the different subplots leading to a unique fit
%
% Function Description:
%   Write a function called "UniqueBestFit" that takes in x and y data and
%   creates a plot of all of the polynomial fits until the average absolute
%   difference between the input data and the fit is less than 0.75.
%	Each unique fit will be its own subplot, with two subplots per row. If
%	you do not already know curve fitting, you can get more information in
%	this article: 
%   http://en.wikipedia.org/wiki/Curve_fitting
%
%   Specifics:
%   - For each fit, you should calculate the average absolute difference
%	  (AAD) between the y-values obtained from evaluating the fitted curve
%	  at the original x-values and the original y values.
%   - Plot all the original points in each subplot with red "x"s.
%   - If the average absolute difference (mean absolute difference)
%     is less than 0.75, plot it in blue, otherwise, plot it in black.
%     NOTE: only plot the FIRST absolute difference less than 0.75 in blue.
%     All others will be black.
%   - Use 100 linearly spaced points between the smallest and largest x 
%     value for new x values when you are plotting the polynomial fit
%     curves.
%   - The title of the fitted plots should read '__ Order Fit', where the
%     blank is the ordinal number of the fit. Example, a first order fit
%     should read '1st Order Fit', while second order fit will read '2nd
%     Order Fit' and so on. 
%   - x-values are not guaranteed to be in any particular order, but the
%     1st x-value will correspond to the 1st y-value and so on.
%   - There is not guaranteed to be a fit with average absolute difference
%     strictly less than 0.75.
%   - You should continue plotting until you have reached the last *UNIQUE*
%     polynomial, even after you have found the first polynomial with AAD
%     less than 0.75.
%
% Constraints:
%   - You may assume that you are to begin with a 1st order fit, i.e. that
%     the input vector is a length of at least 2. Note that even though
%     only one plot will exist when the input vector is of length 2, you
%     must still adhere to the rule that there are to be enough space for
%     two subplots per row.
%   - You may assume that the input vectors are the same size.
%
% Test Cases:
%   UniqueBestFit(1:5,[5 1 15 9 8])
%       => should look like UBF_Solution1.png
%
%   UniqueBestFit([1 6 2 4 9 8 5 3], [0.5 0.9 1.5 2.0 0.1 0.1 1.3 0.2])
%       => should look like UBF_Solution2.png
%
%   UniqueBestFit([0.2 0.5 1.2 1.6 2.6 9.6],[1 3 1 6 7 0.1])
%       => should look like UBF_Solution3.png
%==========================================================================
% PROBLEM 5.  Exrapolate all the data!
%--------------------------------------------------------------------------
%
% Function Name: extrapCalc
% Inputs  (4): - (double) a vector of x values
%              - (double) a vector of y values
%              - (char)   a string of colors
%              - (double) a vector of bounds for the axes
% Outputs (0): - 
%
% Function Description:
%   Given a vector of x-valus, a vector of corresponding y-values, a
%	string of colors, and a vector describing bounds for the axes, write a
%	function called extrapCalc that extrapolates from the data using 3
%	different extrapolation methods. Your function should output 3 subplots
%	in one column. The first subplot should be titled 'Interp1' and will
%	use the function interp1 with the  method 'cubic' to perform the
%	extrapolations. The second subplot shoudl be title 'Spline' and will
%	use spline to extrapolate from the data. The third subplot should be
%	titled 'Polyfit' and should use polyfit to extrapolate from the data.
%	The polynomial produced from polyfit should have a degree of N-1, where
%	N is the number of x values being used for the extrapolation. 
%
%   Each subplot should cotain 5 lines. The first line should use the first
%   fifth of the data for extrapolation, the second line should use the
%   first two fifths of the data for extrapolation, and so on. You should
%   use all of the data points given to you to graph the extrapolation. The
%   fifth line should just be a plot of the actual data, not an
%   extrapolation. You are guaranteed that the length of the vectors given
%   to you will be divisible by 5. The lines must follow the color scheme
%   given to extrapCalc as an input. This means that the first line should
%   be graphed in the first color given in the color string and so on. You
%   are guaranteed that the color string will contain exactly 5 characters.
%   Additionally, the axes should be set to the range given as an input.
%   The vector for the bounds of the axes will be given in the form [xMin,
%   xMax, yMin, yMax]. Label the y-axis 'y values' and the x-axis 'x
%   values'.
%	
%
% Test Cases:
% 	x1 = linspace(0, 4*pi);
%   y1 = sin(x1);
%   x2 = linspace(0, 20, 50);
%   y2 = 5.*cos(x2);
%
%   extrapCalc(x1,y1,'yrbgk', [0, 14, -2, 2]);
%       => output graph should look like extrapCalc1.png
%
%   extrapCalc(x2,y2,'rgbmk', [0, 20, -8, 8]);
%       => output graph should look like extrapCalc2.png
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