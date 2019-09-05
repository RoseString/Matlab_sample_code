%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Dan Sun
% GT Email     : dsun33@gatech.edu
% Homework     : hw07
% Course       : CS1371
% TA's Name    : Terry, Alan
% Section      : GR
% Collaboration: "I worked on the homework assignment alone, using
%                  only course materials."
%               
%
% Files provided with this homework:  
%   hw07.m
%	ABCs_structures.m
%   ABCs_structureArrays.m
%   ABCs_hw07_pretest.p
%	whodunit_soln.p
%   policeRoster_soln.p
%	evolvePokemon_soln.p
%	pandora_soln.p
%   jeopardy_soln.p
%   roster1.xls
%   roster2.xls
%   pandoraSongs.mat
%   jTest1.mat
%   
%
% Files to submit:
%   hw07.m
%	ABCs_structures.m
%	whodunit.m
%	policeRoster.m
%	evolvePokemon.m
%	pandora.m
%   jeopardy.m
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
%  >> ABCs_hw07_pretest
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
% PROBLEM 1. Who Stole the Cookie from the Cookie Jar
%--------------------------------------------------------------------------
%
% Function Name: whodunit
% Inputs  (2): - (struct) a structure array of people
%              - (double) a range of heights
%              - (double) a range of weights
%              - (double) a a range of shoe sizes
% Outputs (1): - (struct) a structure array of possible suspects
%
% Function Description:
%   Detective matlab, we need your help to catch a criminal!
% 
%   Write a function, whoDunnit, that analyzes a structure array of
%   information of police lineups using the inputted ranges of specific
%   information and output a structure array of the possible suspects.  The
%   input structure array will be a 1xN structure array with the following
%   fields:
%
%       - Name
%       - Height
%       - Weight
%       - ShoeSize
%
%   The ranges of information will be a vector with the first index being
%   the minimum value of the attribute, and the second index being the
%   maximum value of the attribute.  If a suspect falls in the range of
%   each attribute (height, weight, and shoe size) INCLUSIVE, then he is
%   concidered a suspect, and he should be included in the output structure
%   array.  If a suspect doesn't fall in all of the ranges, then he should
%   not be included in the output structure array.
% 
%
% Test Cases:
% 	struct1 = struct('Name', {'Matt', 'Alan', 'Chris', 'Connor'}, ...
%                    'Height', {77, 74, 70, 72}, ...
%                    'Weight', {245, 225, 175, 200}, ...
%                    'ShoeSize', {14, 12, 10, 11});
% 
%  out = whodunit(struct1, [73, 78], [220, 250], [12 14]);
%       out => struct('Name', {'Matt', 'Alan'}, 'Height', {77, 74}, ...
%                     'Weight', {245, 225}, 'ShoeSize', {14, 12})
%
%
%==========================================================================
% PROBLEM 2. Open up the Rolodex!
%--------------------------------------------------------------------------
%
% Function Name: policeRoster
% Inputs  (1): - (string) A filename to an excel file containing all of
%						  the officers at the station
% Outputs (1): - (struct) A 1xN Structure Array of all of the officers
% 
% Function Description:
%	Time to take stock of who's who down at the station. Lately, 
%	everyone has had there information stored in online 
%	spreadsheets, but the higher-ups are getting fed up with excel and 
%	want to use more MATLAB! Who knew?
%
%	Write a function that takes in a filename for an excel file containing
%	information about the various police officers at the precinct and
%	converts it into a structure array. The first column can be any size
%	but will always be the field names. Every following column represents
%	an officer. There can be any number of personnel at the precinct but
%	each person will have an element for each field.
% 
% Test Cases:
% 	
% 	filename1 = 'roster1.xls'
% 	filename2 = 'roster2.xls'
% 
%  roster1 = policeRoster(filename1);
%     log1 = isequal(roster1,policeRoster_soln(filename1));
%	  log1 ==> true
% 
%  roster2 = policeRoster(filename2);
%     log2 = isequal(roster2,policeRoster_soln(filename2));
%     log2 ==> true
%
%
%==========================================================================
% PROBLEM 3.  What? Evee Is Evolving!
%--------------------------------------------------------------------------
%
% Function Name: evolvePokemon
% Inputs  (2): - (struct) A structure array containing various Pokemon's
%                names and their evolutions
%              - (char) A name of a Pokemon
% Outputs (1): - (cell or char) A cell array containing the names of the 
%                input Pokemon and its evolution line, OR the string
%                '<input name> is not a Pokemon.', with <input name> being 
%                replaced by the second input.
%
% Function Description:
%   Hello, there! Glad to meet you! Welcome to the world of Pokemon! My
%   name is Professor Oak! People affectionately refer to me as the Pokemon
%   Professor.
%
%   This world is inhabited far and wide by creatures called Pokemon. Some
%   Pokemon can evolve into new, stronger Pokemon. Why, my grandson Gary 
%   started with a Squirtle, which later on evolved into a Wartortle, and 
%   then a Blastoise. Others, like Ditto, do not evolve into any other
%   Pokemon, nor do other Pokemon evolve into it. Pokemon nature truly is
%   full of mysteries, and I have spent every day trying to unravel them.
%   To make a complete guide on all the Pokemon in the world...That is my
%   dream! 
%
%   Are you interested in helping me with my Pokemon research? Excellent! 
%   But first, I need to see if your programming skills are sufficient.
%   Write a function called "evolvePokemon" that takes in a structure array
%   as an input and returns a cell array of all subsequent evolutions of
%   that pokemon. Each structure from the input structure array, which
%   we'll call a Pokedex from now on, has two fields containing information
%   about a Pokemon. The first field, "Name", contains a Pokemon's name as
%   a string. The second field, "Evolution", contains the name of the
%   Pokemon that the Pokemon indicated in the Name field evolves into, also
%   represented as a string. If a Pokemon indicated in the Name field does
%   not evolve into another Pokemon, the value for the Evolution field of
%   that structure will be an empty string.
%
%   This is an example of some structures from the Pokedex:
%
%       Name: 'Squirtle'
%       Evolution: 'Wartortle'
%
%   This structure contains information about Squirtle. We can see from the 
%   second field that Squirtle evolves into Wartortle. Now let's look at 
%   another structure:
%
%       Name: 'Wartortle'
%       Evolution: 'Blastoise'
%   
%   This is Wartortle, the evolved form of Squirtle. Here, we can see that
%   Wartortle evolves into Blastoise. Now let's wrap this example up by
%   looking at one more structure:
%
%       Name: 'Blastoise'
%       Evolution: ''
%
%   This is Blastoise, the evolved form of Wartortle. Since the Evolution
%   field has an empty string as its value, we can infer that Blastoise 
%   does not evolve into another Pokemon. We can also say that Blastoise is 
%   the fully evolved form of Squirtle.  Therefore, if given 'Squirtle' as 
%   the Pokemon's name for the second input, assuming that the Pokedex 
%   includes those three structures mentioned above, your function should 
%   return {'Squirtle', 'Wartortle', 'Blastoise'}.
%   
%   Further, if the second input cannot be found in the Name field of any 
%   structure from the Pokedex, then your function should output 
%   '<input name> is not a Pokemon.' as a string (not a cell!), with 
%   <input name> being replaced by the actual second input (i.e. an input
%   of 'Shaggy' will return 'Shaggy is not a Pokemon.').
%
%   Now, get going, and don't forget to do your best!
%
% Notes:
%   - This problem should be solved using structure concepts. Do not write 
%     a loop that contains, as of now, 719 conditionals (or 720 if you 
%     count Missingno.).
%   - If a Pokemon listed in the Pokedex can evolve, the Pokedex is 
%     guaranteed to have all structure(s) pertaining to its evolution line.
%   - Structure(s) pertaining to a Pokemon's evolution(s) will not 
%     necessarily be located next to the structure pertaining to that
%     pre-evolved Pokemon in the Pokedex, nor will these Pokemon 
%     necessarily appear in the Pokedex in order from pre-evolved to fully 
%     evolved form.
%   - If an input Pokemon's name can be found in the Name fields of the 
%     Pokedex, but that Pokemon does not evolve into any other Pokemon, 
%     then the output should just be a single cell containing the input 
%     Pokemon's name.
%   - The Evolution field of a structure will never contain names of
%     multiple Pokemon.
%
% Test Cases:
% pokedex = struct('Name', {'Charizard','Riolu','Chandelure',...
%     'Aerodactyl','Lucario','Charmeleon','Murkrow','Lombre',...
%     'Honchkrow','Litwick','Lotad','Skarmory','Lampent','Charmander',...
%     'Ludicolo'}, 'Evolution', {'','Lucario','','','','Charizard',...
%     'Honchkrow','Ludicolo','','Lampent','Lombre','','Chandelure',...
%     'Charmeleon',''});
%
%     murkrow = evolvePokemon(pokedex, 'Murkrow')
%         murkrow => {'Murkrow', 'Honchkrow'}
%
%     charmander = evolvePokemon(pokedex, 'Charmander')
%         charmander => {'Charmander', 'Charmeleon', 'Charizard'}
%
%     aerodactyl = evolvePokemon(pokedex, 'Aerodactyl')
%         aerodactyl => {'Aerodactyl'}
%
%     alwaysBetterThanYou = evolvePokemon(pokedex, 'Gary Oak')
%         alwaysBetterThanYou => 'Gary Oak is not a Pokemon.'
%
%
%==========================================================================
% PROBLEM 4.   I didn't know Pandora used matlab...
%--------------------------------------------------------------------------
%
% Function Name: pandora
% Inputs  (2): - (struct) A 1x1 struct of data about a "Now Playing" song.
%                (struct) A 1xN struct of data about possible next songs.
% Outputs (1): - (char) A string of the song title of what song should
%                       play next
%
% Function Description:
%   Write a function called pandora.m that takes in two inputs: a 1x1
%   structure containing data about the song that is "currently playing",
%   and a 1xN structure containing data about possible songs that could be
%   played next. This problem is based off of popular music streaming
%   website, Pandora.com, which plays random songs that are all similar. So
%   your function needs to find which song of those in the second input is
%   most similar to the "Now Playing" song.
%
%   The data about each song is contained in a 1x1 structure (or one index
%   of a structure array), and an example of how this data is stored for
%   Dog Days Are Over by Florence + The Machine is shown below:
%
%       dogDays = 
%
%                Artist: 'Florence + The Machine'
%                 Title: 'Dog Days Are Over'
%                 Album: 'Lungs'
%                 Genre: [1x1 struct] %shown below in dogDays.Genre
%                   Key: 'Major'
%                Vocals: 'Female'
%     DrivingInstrument: [1x1 struct] %shown below in dogDays.DrivingInstrument
%            Popularity: 90
%
%
%           dogDays.Genre = 
%                  Genre: 'Alternative'
%          RelatedGenres: {'Rock'  'Soul'  'Blues'}
%
%           dogDays.DrivingInstrument =
%             Instrument: 'Percussion'
%     RelatedInstruments: {'Full Band'  'Vocals'}
%
%
%   -So the Artist, Title, and Album field in each song's structure
%   contains strings of that song's respective artist, title, and album.
%   -The Genre field in each song's structure also contains its own
%    structure, with fields for Genre and RelatedGenres: Genre has a string
%    of the song's genre; RelatedGenres contains a 1xN cell array of genres
%    that the song is related it.
%   -The Key field contains a string of whether the song is in a Major or
%    Minor key. 'Major' or 'Minor' will be the only two string in this
%    field.
%   -The Vocals field contains the gender of the vocalist in the song. So
%    either 'Male' or 'Female'.
%   -The DrivingInstrument field is a lot like the Genre field, and
%    contains a structure of its own. This structure is a 1x1 with the
%    fields Instrument and RelatedInstruments: Instrument contains a string
%    of the driving instrument in the song; RelatedInstrument contains a
%    string of driving instruments that are similar.
%   -The Popularity field contains an integer between 0 and 100
%    (inclusive), and this integer represents a popularity rating of the
%    song. 100 represents the maximum popularity, while 0 represents no
%    popularity whatsoever.
%
%   How to compare songs:
%       -You will only need to compare data in the fields for Genre, Key,
%        Vocals, DrivingInstrument, and Popularity. The formula you should
%        use for this problem will deal with percentages of how similar
%        specific fields are between songs:
%       -Genre field: treat this as either a 100%, 75%, or a 0% match.
%        100% match if both songs have the same genre, and a 75% match if
%        the NowPlaying song's genre is in the other song's related genres.
%        0% match if nothing matches at all.
%       -Key: 100% match if the songs have the same key, and 0% key if not.
%        Remember 'Major' and 'Minor' are the only options here.
%       -Vocals: 100% match is the songs have the same gender vocalist. 0%
%        match if not.
%       -DrivingInstrument: similar to Genre, so can either be 100%,75%, or
%        0% match. 100% match if songs have the same driving instrument, and
%        a 75% match if the nowPlaying song's driving instrument is in the
%        next song's related instruments.
%       -Popularity: For this, use the formula 100 - (difference in
%        popularities) for the percent match. So if one song has a
%        popularity of 90 and another has a popularity of 75, then this
%        would be an 85% match.
%
%   Using all of the percent matches for the five different fields you have
%   to compare, calculate the overall percent match for the two songs using
%   these weights:
%       25%: Genre similarity
%       20%: Key similarity
%       20%: Vocal similarity
%       25%: DrivingInstrument similarity
%       10%: Popularity similarity
%
%   The song from the "possible next songs" input that has the most
%   similarity with the "now playing" song will be the song that should be
%   played next, so output this song's title.
%
%
% Notes: 
%   - The fieldnames for both of your inputs are always guaranteed to be in
%     the same order: Artist, Genre, Key, Vocals, DrivingInstrument,
%     Popularity.
%   - Pandora doesn't actually use matlab.
%
% Hints:
%   - You are allowed to give a switch statement a cell array for any of
%     its cases, rather than manually typing out the options for that case.
%
% Test Cases:
%
%   load('pandoraSongs.mat')
%   songs1 = [makeYouFeel alreadyHome dogDays warpath countingStars];
%   songs2 = [alreadyHome warpath everlong dogDays countingStars];
%
%   [nextSong1] = pandora(everlong, songs1);
%       nextSong1 => 'Counting Stars'
%   
%   [nextSong2] = pandora(makeYouFeel, songs2);
%       nextSong2 => 'Already Home'
%
%
%==========================================================================
% PROBLEM 5.  I'll take Matlab for $1000, Alex
%--------------------------------------------------------------------------
%
% Function Name: jeopardy
% Inputs  (3): - (struct) Jeopardy board
%              - (struct) The players
%              - (cell) Clues in order
% Outputs (2): - (struct) The players with earnings
%              - (string) The name of the winning player
%
% Function Description:
% Given a jeopardy board, the players, and the clues in the order they are
% guessed, write a function called jeopardy that computes the earnings of
% each player and the winner. The jeopardy board will be an MxN structure 
% array with the fields 'answer' and 'value'. The 'answer' field will 
% always contain a string with the correct answer to the clue. The 'value'
% field will always contain a double that specifies the value of that clue
% in dollars. 
% 
% The player input is a 1x3 structure array with the fields 'name',
% 'answer', and 'order'. The 'name' field contains the player's name as a
% string. The 'answer' field contains a cell array of the answers the
% player gives. So the nth spot in the answer cell array corresponds to the
% nth clue in the clues cell array, The 'order' field contains a vector of
% the order in which the player buzzed in. The nth position in the order
% field corresponds to the order in which they responded to the nth clue.
% So a value of 1 at index 5 would indicate that the person was the first
% to respond to question 5.
%
% The clues cell array will consist of the coordinates of the clues in
% order. Each coordinate will be given as a 1x2 vector [row, column]. These
% correspond to a position on the board.  
%
% The way jeopardy is played is that a clue is asked, and then all the
% players have the opportunity to buzz in and give the answer. The first 
% person to buzz in has an opportunity to answer the question. If they get
% the answer correct, then they get the dollar amount of the clue added on
% to their winnings. If they get the answer wrong, then the dollar amount
% of the clue is subtracted from their earnings. If a player buzzes in and
% gets the question wrong, then the other players have a chance to answer.
% For the purpose of this problem, you may assume that a player will always
% buzz in to try and answer the question if they are able to. 
%
% For this problem, you will play a round of jeopardy using all of the
% clues in the clue cell array. At the end of the game, you should output
% the structure of players with an additional field 'earnings', which
% should contain the dollar amount that player earned as a double. You
% should also output the name of the winning player. 
%
%
% Notes:
%   - Remember that a player will always answer the question if able
%   - For this problem, there are no daily doubles or final jeopardy. If
%   you don't know what this means, don't worry about it. And then go watch
%   an episode of jeopardy. (7:30 on ABC)
%   - You can assume there will never be a tie.
%   - Players can earn negative dollar amounts.
%   - Capitilization does not matter when comparing answers. So 'answer' is
%   essentially the same as 'Answer'
%
% Test Cases:
% 
%   load('jTest1.mat')
%
%   [modifiedPlayers1, winner1] = jeopardy(board1, players1, clues1)
%       [modifiedPlayers1.earnings] => [0, 300, -600]
%        winner1 => 'Cameron'
%
%   [modifiedPlayers2, winner2] = jeopardy(board2, players2, clues2)
%       [modifiedPlayers2.earnings] => [681, 281, 398]
%        winner2 => 'Watson'
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.