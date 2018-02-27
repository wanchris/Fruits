%Chris Wan
%Fruit Clicking Game
%November 27 2012

%Set screen size
View.Set ("Graphics: 1200, 700")
%Reduce the amount of flicker on the animation
View.Set ("offscreenonly")

%Create a function to make a 2D array.
type Fruit :
    record
	x : int %Center of the fruit [x value]
	y : int %Center of the fruit [y value]
	xRadius : int %y radius
	yRadius : int %x radius
	kind : int %Store the kind/type of fruit it is
	clicked : boolean %Check if the fruit is clicked
    end record

const ORANGE : int := 1 % Set an orange as 1
const GRAPE : int := 2 % Set a grape as 2
const LEMON : int := 3 %Set a lemon as 3
const LIME : int := 4 %Set a lime as 4
const BLUEBERRY : int := 5 %Set a blueberry as 5
const APPLE : int := 6 %Set an apple as 6

var demoscore : int % Score in the demo
demoscore := 0 %The demo score starts off as 0
var difficulty : string %Make a variable for the user to input the level of difficulty.
difficulty := "Medium" %Default mode is hard
var clicked : int %Create variable for clicked fruits
clicked := 0 %Default value is 0
var score : int %Create variable for the score
score := 0 %Default value is 0
var highScoreEasy : int %Create a high score variable for the mode
highScoreEasy := 0 % The score starts at zero
var highScoreMedium : int %Create a high score variable for the mode
highScoreMedium := 0 % The score starts at zero
var highScoreHard : int % Create a high score variable for the mode
highScoreHard := 0  % The score starts at zero
var firstClickedRow : int %Store the row of the first clicked fruit
firstClickedRow := 0 %Default value
var firstClickedCol : int %Store the column of the first clicked fruit
firstClickedCol := 0 %Default value
var fruits : array 1 .. 8, 1 .. 5 of Fruit %Make a 2D array for the fruits
var nothing : string % Empty variable for user input
var seconds : int %Make a variable for the time
seconds := 0 %Default value of the time is 0 

%Change the background color to lavender 
Draw.FillBox (0, 0, maxx, maxy, 58)
colorback (58)

%x and y values to show the user where the mouse cursor is located.
var x, y, button : int
% Find the x and y location of the mouse, and check if the button was pressed
Mouse.ButtonChoose ("multibutton")

%Draw an apple for the logo 
%Draw the body of the apple
drawfilloval (400, 300, 100, 125, 12)
drawfilloval (475, 300, 100, 125, 12)

%Draw the eyes of the apple
drawfilloval (400, 325, 30, 30, 7)
drawfilloval (475, 325, 30, 30, 7)
drawfilloval (415, 330, 10, 10, 0)
drawfilloval (490, 330, 10, 10, 0)

%Draw some eyebrows
Draw.ThickLine (450, 380, 525, 350, 2, 7)
Draw.ThickLine (425, 380, 350, 350, 2, 7)

%Draw the mouth
drawfillarc (440, 275, 75, 75, 180, 360, 4)

%Draw the stem and the leaf
drawfillarc (440, 410, 100, 80, 100, 120, 137)
drawfillarc (480, 440, 50, 80, 0, 210, 72)

%Animate the apple by making it go around the screen.

%Move the apple left

for xPosition : 1 .. 500 by 4
    %Draw an apple
    %Draw the body of the apple
    drawfilloval (400 + xPosition, 300, 100, 125, 12)
    drawfilloval (475 + xPosition, 300, 100, 125, 12)

    %Draw the eyes of the apple
    drawfilloval (400 + xPosition, 325, 30, 30, 7)
    drawfilloval (475 + xPosition, 325, 30, 30, 7)
    drawfilloval (415 + xPosition, 330, 10, 10, 0)
    drawfilloval (490 + xPosition, 330, 10, 10, 0)

    %Draw some eyebrows
    Draw.ThickLine (450 + xPosition, 380, 525 + xPosition, 350, 2, 7)
    Draw.ThickLine (425 + xPosition, 380, 350 + xPosition, 350, 2, 7)

    %Draw the mouth
    drawfillarc (440 + xPosition, 275, 75, 75, 180, 360, 4)

    %Draw the stem and the leaf
    drawfillarc (440 + xPosition, 410, 100, 80, 100, 120, 137)
    drawfillarc (480 + xPosition, 440, 50, 80, 0, 210, 72)
    View.Update
    delay (10)
    cls
end for

%Move the apple up

for yPosition : 1 .. 100 by 8
    %Draw an apple
    %Draw the body of the apple
    drawfilloval (900, 300 + yPosition, 100, 125, 12)
    drawfilloval (975, 300 + yPosition, 100, 125, 12)

    %Draw the eyes of the apple
    drawfilloval (900, 325 + yPosition, 30, 30, 7)
    drawfilloval (975, 325 + yPosition, 30, 30, 7)
    drawfilloval (915, 330 + yPosition, 10, 10, 0)
    drawfilloval (990, 330 + yPosition, 10, 10, 0)

    %Draw some eyebrows
    Draw.ThickLine (950, 380 + yPosition, 1025, 350 + yPosition, 2, 7)
    Draw.ThickLine (925, 380 + yPosition, 850, 350 + yPosition, 2, 7)

    %Draw the mouth
    drawfillarc (940, 275 + yPosition, 75, 75, 180, 360, 4)

    %Draw the stem and the leaf
    drawfillarc (940, 410 + yPosition, 100, 80, 100, 120, 137)
    drawfillarc (980, 440 + yPosition, 50, 80, 0, 210, 72)
    View.Update
    delay (10)
    cls
end for

%Move the apple left

for xPosition1 : 1 .. 800 by 12
    %Draw an apple
    %Draw the body of the apple
    drawfilloval (900 - xPosition1, 400, 100, 125, 12)
    drawfilloval (975 - xPosition1, 400, 100, 125, 12)

    %Draw the eyes of the apple
    drawfilloval (900 - xPosition1, 425, 30, 30, 7)
    drawfilloval (975 - xPosition1, 425, 30, 30, 7)
    drawfilloval (915 - xPosition1, 430, 10, 10, 0)
    drawfilloval (990 - xPosition1, 430, 10, 10, 0)

    %Draw some eyebrows
    Draw.ThickLine (950 - xPosition1, 480, 1025 - xPosition1, 450, 2, 7)
    Draw.ThickLine (925 - xPosition1, 480, 850 - xPosition1, 450, 2, 7)

    %Draw the mouth
    drawfillarc (940 - xPosition1, 375, 75, 75, 180, 360, 4)

    %Draw the stem and the leaf
    drawfillarc (940 - xPosition1, 510, 100, 80, 100, 120, 137)
    drawfillarc (980 - xPosition1, 540, 50, 80, 0, 210, 72)
    View.Update
    delay (10)
    cls
end for

%Move the apple down

for yPosition1 : 1 .. 100 by 16
    %Draw an apple
    %Draw the body of the apple
    drawfilloval (100, 400 - yPosition1, 100, 125, 12)
    drawfilloval (175, 400 - yPosition1, 100, 125, 12)

    %Draw the eyes of the apple
    drawfilloval (100, 425 - yPosition1, 30, 30, 7)
    drawfilloval (175, 425 - yPosition1, 30, 30, 7)
    drawfilloval (115, 430 - yPosition1, 10, 10, 0)
    drawfilloval (190, 430 - yPosition1, 10, 10, 0)

    %Draw some eyebrows
    Draw.ThickLine (150, 480 - yPosition1, 225, 450 - yPosition1, 2, 7)
    Draw.ThickLine (125, 480 - yPosition1, 50, 450 - yPosition1, 2, 7)

    %Draw the mouth
    drawfillarc (140, 375 - yPosition1, 75, 75, 180, 360, 4)

    %Draw the stem and the leaf
    drawfillarc (140, 510 - yPosition1, 100, 80, 100, 120, 137)
    drawfillarc (180, 540 - yPosition1, 50, 80, 0, 210, 72)
    View.Update
    delay (10)
    cls
end for

%Move the apple right

for xPosition2 : 1 .. 300 by 20
    %Draw an apple
    %Draw the body of the apple
    drawfilloval (100 + xPosition2, 300, 100, 125, 12)
    drawfilloval (175 + xPosition2, 300, 100, 125, 12)

    %Draw the eyes of the apple
    drawfilloval (100 + xPosition2, 325, 30, 30, 7)
    drawfilloval (175 + xPosition2, 325, 30, 30, 7)
    drawfilloval (115 + xPosition2, 330, 10, 10, 0)
    drawfilloval (190 + xPosition2, 330, 10, 10, 0)

    %Draw some eyebrows
    Draw.ThickLine (150 + xPosition2, 380, 225 + xPosition2, 350, 2, 7)
    Draw.ThickLine (125 + xPosition2, 380, 50 + xPosition2, 350, 2, 7)

    %Draw the mouth
    drawfillarc (140 + xPosition2, 275, 75, 75, 180, 360, 4)

    %Draw the stem and the leaf
    drawfillarc (140 + xPosition2, 410, 100, 80, 100, 120, 137)
    drawfillarc (180 + xPosition2, 440, 50, 80, 0, 210, 72)
    View.Update
    delay (10)
    cls
end for

%The menu needs to be in a loop to keep on reading mouse data
loop
    View.Set ("offscreenonly") %Turn on offscreenonly 
    %Change the background color to lavender
    Draw.FillBox (0, 0, maxx, maxy, 58)
    colorback (58)
    % Change the text color to white
    Text.Color (white)
    % Welcome the useer and tell them which page is which
    put "           Welcome to the Fruit Clicking Game! Please enjoy your stay... We hope to see you again!"
    put "   Click orange for instructions.    Click lemon to play.     Click lime for settings.       Click grape for credits."
    %Let the user know which button is which
    put "                                        Current mode: ", difficulty
    %Help ensure that they will select the setting before playing the game
    %Draw an apple
    %Draw the body of the apple
    drawfilloval (400, 300, 100, 125, 12)
    drawfilloval (475, 300, 100, 125, 12)

    %Draw the eyes of the apple
    drawfilloval (400, 325, 30, 30, 7)
    drawfilloval (475, 325, 30, 30, 7)
    drawfilloval (415, 330, 10, 10, 0)
    drawfilloval (490, 330, 10, 10, 0)

    %Draw some eyebrows
    Draw.ThickLine (450, 380, 525, 350, 2, 7)
    Draw.ThickLine (425, 380, 350, 350, 2, 7)

    %Draw the mouth
    drawfillarc (440, 275, 75, 75, 180, 360, 4)

    %Draw the stem and the leaf
    drawfillarc (440, 410, 100, 80, 100, 120, 137)
    drawfillarc (480, 440, 50, 80, 0, 210, 72)

    %Draw an orange
    drawfilloval (250, 100, 50, 50, 42)
    drawdot (250, 100, 7)
    drawdot (230, 120, 7)
    drawdot (275, 130, 7)
    drawdot (260, 130, 7)
    drawdot (280, 140, 7)
    drawdot (220, 110, 7)
    drawfillstar (270, 130, 280, 120, 121)
    drawfilloval (230, 100, 10, 10, 7)
    drawfilloval (270, 100, 10, 10, 7)
    drawfillarc (250, 85, 25, 25, 180, 360, 4)

    %Draw a lemon
    drawfilloval (400, 100, 60, 50, 44)
    drawfilloval (340, 100, 10, 10, 44)
    drawfilloval (460, 100, 10, 10, 44)
    drawdot (360, 100, 7)
    drawdot (430, 110, 7)
    drawdot (400, 120, 7)
    drawdot (390, 90, 7)
    drawdot (450, 80, 7)
    drawfilloval (380, 100, 10, 10, 7)
    drawfilloval (420, 100, 10, 10, 7)
    drawfillarc (400, 85, 25, 25, 180, 360, 4)

    %Draw a lime
    drawfilloval (550, 100, 60, 50, 47)
    drawfilloval (490, 100, 10, 10, 47)
    drawfilloval (610, 100, 10, 10, 47)
    drawdot (500, 100, 7)
    drawdot (600, 110, 7)
    drawdot (558, 120, 7)
    drawdot (526, 90, 7)
    drawdot (572, 80, 7)
    drawfilloval (570, 100, 10, 10, 7)
    drawfilloval (530, 100, 10, 10, 7)
    drawfillarc (550, 85, 25, 25, 180, 360, 4)

    %Draw a grape
    drawfilloval (700, 100, 50, 50, 35)
    drawdot (730, 130, 7)
    drawfilloval (720, 100, 10, 10, 7)
    drawfilloval (680, 100, 10, 10, 7)
    drawfillarc (700, 85, 25, 25, 180, 360, 4)

    View.Update % View the update/ Refresh the screen

    %Locate the mouse
    Mouse.Where (x, y, button)

    locate (1, 1) %Locate the top of the screen
    %put mouse location
    put " ", x, " ", y, " ", button
    View.Update
    delay (50)
    %If you click the button, lead to instructions
    if button = 1 & (x - 250) ** 2 + (y - 100) ** 2 <= 2500 then %If the first fruit was clicked
	%Put the instructions
	View.Set ("nooffscreenonly") %Turn off offscreenonly so the user can see the keys they are inputting
	locate (1, 1) %Locate the instructions
	View.Update % View the update/ Refresh the screen
	cls %Clear the screen
	put "                                 -Fruit Clicking game-"
	put " "
	put "                                     INSTRUCTIONS"
	put " "
	put "                        Click all of the fruits in order to win."
	put "                          Keep in mind, there is a time limit!"
	put "                 You can choose between three modes, easy, hard and medium. "
	put "                                       Good luck!"
	put "                           Input any key to try a short demo."
	put "                         Click the fruit given to end the demo."
	View.Update % View the update/ Refresh the screen
	get nothing
	cls
	View.Set ("offscreenonly") %Turn offscreenonly back on because animation
	loop
	    %Locate the mouse
	    Mouse.Where (x, y, button)
	    locate (1, 1) %Locate the top of the screen
	    %put mouse location
	    put " ", x, " ", y, " ", button
	    View.Update
	    delay (50)
	    %Draw a lemon for the user to click
	    drawfilloval (400, 100, 60, 50, 44)
	    drawfilloval (340, 100, 10, 10, 44)
	    drawfilloval (460, 100, 10, 10, 44)
	    drawdot (360, 100, 7)
	    drawdot (430, 110, 7)
	    drawdot (400, 120, 7)
	    drawdot (390, 90, 7)
	    drawdot (450, 80, 7)
	    drawfilloval (380, 100, 10, 10, 7)
	    drawfilloval (420, 100, 10, 10, 7)
	    drawfillarc (400, 85, 25, 25, 180, 360, 4)
	    delay (10)
	    View.Update
	    % Delete the lemon ocne it is clicked
	    exit when button = 1 & ((x - 400) ** 2) / 3600 + ((y - 100) ** 2) / 2500 <= 1
	end loop
	cls
	View.Update
	%Make the demo score equal ten
	demoscore := demoscore + 10
	%Display a message to the user indicating that they will recieve ten points once every fruit is clicked
	put "One fruit clicked! + 10 points."
	put "                                                                                                  TOTAL SCORE: ", demoscore
	View.Update     %View the update
	delay (5000)     %Make it stay on the screen
	cls     % Clear the screen
	put "Now returning to menu...." %Tell the user that the program is returning to the start
	View.Update %View the update
	delay (3000) % Make it stay on the screen
	cls %Clear the screen 

    elsif button = 1 & ((x - 400) ** 2) / 3600 + ((y - 100) ** 2) / 2500 <= 1 then % If the second fruit was clicked
	cls %Clear the screen
	View.Set ("nooffscreenonly") %Turn off offscreenonly
	View.Update %View the update
	locate (1, 1) %Locate the top of the screen
	if difficulty = "Hard" then %If the mode selected was hard then display the game in hard mode
	    put "You have selected hard. 10 seconds will begin counting once you enter a key."
	    get nothing %Blank variable indicating that they want the game to begin
	    cls % Clear the screen
	    View.Update %View the update
	    for row : 1 .. 5
		for column : 1 .. 8
		    %Set the locations of the fruits column
		    fruits (column, row).x := 132 * (column - 1) + 125
		    %Set the locations of the fruits row
		    fruits (column, row).y := -112 * (row - 1) + 525
		    %This cose is used to generate radnom fruits
		    fruits (column, row).kind := Rand.Int (1, 6)
		    %Check if the fruit is clicked or not
		    fruits (column, row).clicked := false

		    if fruits (column, row).kind = ORANGE then
			%Set the x radius
			fruits (column, row).xRadius := 50
			%Set the y radius
			fruits (column, row).yRadius := 50

		    elsif fruits (column, row).kind = GRAPE then
			%Set the x radius
			fruits (column, row).xRadius := 50
			%Set the y radius
			fruits (column, row).yRadius := 50

		    elsif fruits (column, row).kind = LEMON then
			% Set the x radius
			fruits (column, row).xRadius := 50
			% Set the y radius
			fruits (column, row).yRadius := 60

		    elsif fruits (column, row).kind = LIME then
			% Set the x radius
			fruits (column, row).xRadius := 50
			% Set the y radius
			fruits (column, row).yRadius := 60

		    elsif fruits (column, row).kind = BLUEBERRY then
			% Set the x radius
			fruits (column, row).xRadius := 50
			% Set the y radius
			fruits (column, row).yRadius := 50

		    elsif fruits (column, row).kind = APPLE then
			% Set the x radius
			fruits (column, row).xRadius := 50
			% Set the y radius
			fruits (column, row).yRadius := 50
		    end if
		end for
	    end for


	    loop
		Mouse.Where (x, y, button)     % Locate the mouse
		put " ", x, " ", y, " ", button     %Display the mosue location
		View.Update     %View the update
		delay (50)     %Delay it
		cls %Clear the screen
		score := 10 * clicked % Since each fruit is equal to ten, you need to multiply 10 by the number of fruits clicked
		put score %Put the score in the corner
		seconds := seconds + 1
		put seconds / 16
		exit when seconds / 16 >= 10
		View.Set ("offscreenonly")     %Turn on offscreenonly
		for row : 1 .. 5     %Make 5 rows of fruits
		    for column : 1 .. 8     %Make 8 columns of fruits
			if fruits (column, row).clicked = false then
			    if fruits (column, row).kind = ORANGE then
				%Draw an orange
				drawfilloval (fruits (column, row).x, fruits (column, row).y, 50, 50, 42)
				drawfillstar (fruits (column, row).x + 20, fruits (column, row).y + 30, fruits (column, row).x + 30, fruits (column, row).y + 20, 121)
				drawfilloval (fruits (column, row).x - 20, fruits (column, row).y, 10, 10, 7)
				drawfilloval (fruits (column, row).x + 20, fruits (column, row).y, 10, 10, 7)
				drawfillarc (fruits (column, row).x, fruits (column, row).y - 15, 25, 25, 180, 360, 4)

			    elsif fruits (column, row).kind = GRAPE then
				%Draw a grape
				drawfilloval (fruits (column, row).x, fruits (column, row).y, 50, 50, 35)
				drawfilloval (fruits (column, row).x + 30, fruits (column, row).y + 30, 2, 2, 7)
				drawfilloval (fruits (column, row).x + 20, fruits (column, row).y, 10, 10, 7)
				drawfilloval (fruits (column, row).x - 20, fruits (column, row).y, 10, 10, 7)
				drawfillarc (fruits (column, row).x, fruits (column, row).y - 15, 25, 25, 180, 360, 4)

			    elsif fruits (column, row).kind = LEMON then
				%Draw a lemon
				drawfilloval (fruits (column, row).x, fruits (column, row).y, 60, 50, 44)
				drawfilloval (fruits (column, row).x - 55, fruits (column, row).y, 9, 9, 44)
				drawfilloval (fruits (column, row).x + 55, fruits (column, row).y, 9, 9, 44)
				drawfilloval (fruits (column, row).x - 20, fruits (column, row).y, 10, 10, 7)
				drawfilloval (fruits (column, row).x + 20, fruits (column, row).y, 10, 10, 7)
				drawfillarc (fruits (column, row).x, fruits (column, row).y - 15, 25, 25, 180, 360, 4)

			    elsif fruits (column, row).kind = LIME then
				% Draw a lime
				drawfilloval (fruits (column, row).x, fruits (column, row).y, 60, 50, 47)
				drawfilloval (fruits (column, row).x - 55, fruits (column, row).y, 9, 9, 47)
				drawfilloval (fruits (column, row).x + 55, fruits (column, row).y, 9, 9, 47)
				drawfilloval (fruits (column, row).x - 20, fruits (column, row).y, 10, 10, 7)
				drawfilloval (fruits (column, row).x + 20, fruits (column, row).y, 10, 10, 7)
				drawfillarc (fruits (column, row).x, fruits (column, row).y - 15, 25, 25, 180, 360, 4)

			    elsif fruits (column, row).kind = BLUEBERRY then
				%Draw a blueberry
				drawfilloval (fruits (column, row).x, fruits (column, row).y, 50, 50, 54)
				drawfilloval (fruits (column, row).x + 30, fruits (column, row).y + 30, 2, 2, 7)
				drawfilloval (fruits (column, row).x + 20, fruits (column, row).y, 10, 10, 7)
				drawfilloval (fruits (column, row).x - 20, fruits (column, row).y, 10, 10, 7)
				drawfillarc (fruits (column, row).x, fruits (column, row).y - 15, 25, 25, 180, 360, 4)

			    elsif fruits (column, row).kind = APPLE then
				% Draw an apple
				drawfilloval (fruits (column, row).x, fruits (column, row).y, 45, 45, 12)
				drawfilloval (fruits (column, row).x + 15, fruits (column, row).y + 5, 10, 10, 7)
				drawfilloval (fruits (column, row).x - 15, fruits (column, row).y + 5, 10, 10, 7)
				drawfillarc (fruits (column, row).x, fruits (column, row).y - 10, 25, 25, 180, 360, 4)
				drawfillarc (fruits (column, row).x, fruits (column, row).y + 30, 30, 32, 100, 120, 137)
				drawfillarc (fruits (column, row).x + 10, fruits (column, row).y + 40, 12, 18, 0, 210, 72)
			    end if
			    if firstClickedRow = 0 & firstClickedCol = 0 & button = 1 & (x - fruits (column, row).x) ** 2 / fruits (column, row).xRadius ** 2 + (y - fruits (column, row).y) ** 2 /
				    fruits (column, row).yRadius ** 2 <= 1 then
				%Store the fruit location
				firstClickedRow := row
				firstClickedCol := column
				%Put the fruit location
				put firstClickedRow
				put firstClickedCol
				View.Update %View the update
				delay (10) % Delay it
			    end if
			    if firstClickedCol not= 0 & firstClickedRow not= 0 then % Make sure there is a value in the column and row
				%Get the fruit off the screen
				fruits (firstClickedCol, firstClickedRow).clicked := true
				%Make the column equal zero again
				firstClickedCol := 0
				% Make the row equal zero again
				firstClickedRow := 0
				% Add one to the number of clicked fruits
				clicked := clicked + 1
				View.Update
				delay (10)
			    end if
			end if
		    end for
		end for
	    end loop
	    cls %Clear the screen
	    View.Update % View the update/ Refresh the screen
	    View.Set ("nooffscreenonly")
	    if highScoreHard > score then
		%Display the high score and the number of fruits clicked
		put "You have clicked ", score / 10, " fruits in total."
		put "Your high score is still ", highScoreHard
		put "Input any key to return."
		%Make the score equal to zero again
		score := 0
		%Make the number of clicked fruits equal to zero again
		clicked := 0
		%Make the number of seconds equal zero again
		seconds := 0
		get nothing
		cls %Clear the screen
	    elsif highScoreHard = score then
		%Display the high score and the number of fruits clicked
		put "You have clicked ", score / 10, " fruits in total."
		put "Your high score is still ", highScoreHard
		put "Input any key to return."
		%Make the score equal to zero again
		score := 0
		%Make the number of clicked fruits equal to zero again
		clicked := 0
		%Make the number of seconds equal zero again
		seconds := 0
		get nothing
		cls %Clear the screen
	    elsif highScoreHard < score then
		put "Congratulations! New high score!"
		highScoreHard := score
		%Display the high score and the number of fruits clicked
		put "You have clicked ", score / 10, " fruits in total."
		put "Your new high score now ", highScoreHard
		put "Input any key to return."
		%Make the score equal to zero again
		score := 0
		%Make the number of clicked fruits equal to zero again
		clicked := 0
		%Make the number of seconds equal zero again
		seconds := 0
		get nothing
		cls %Clear the screen
	    end if

	    put "Now returning to menu..."
	    View.Update     % View the update/ Refresh the screen
	    delay (2000)     %Delay
	    cls     % Clear the screen

	elsif difficulty = "Medium" then %If the mode selected was medium then display the game in medium mode
	    put "You have selected medium. 15 seconds will begin counting once you enter a key."
	    get nothing
	    cls
	    View.Update % View the update/ Refresh the screen
	    for row : 1 .. 5
		for column : 1 .. 8
		    %Set the locations of the fruits column
		    fruits (column, row).x := 132 * (column - 1) + 125
		    %Set the locations of the fruits row
		    fruits (column, row).y := -112 * (row - 1) + 525
		    %This cose is used to generate radnom fruits
		    fruits (column, row).kind := Rand.Int (1, 6)
		    %Set the clicked statement to false
		    fruits (column, row).clicked := false

		    if fruits (column, row).kind = ORANGE then
			%Set the x radius
			fruits (column, row).xRadius := 50
			%Set the y radius
			fruits (column, row).yRadius := 50

		    elsif fruits (column, row).kind = GRAPE then
			%Set the x radius
			fruits (column, row).xRadius := 50
			%Set the y radius
			fruits (column, row).yRadius := 50

		    elsif fruits (column, row).kind = LEMON then
			% Set the x radius
			fruits (column, row).xRadius := 50
			% Set the y radius
			fruits (column, row).yRadius := 60

		    elsif fruits (column, row).kind = LIME then
			% Set the x radius
			fruits (column, row).xRadius := 50
			% Set the y radius
			fruits (column, row).yRadius := 60

		    elsif fruits (column, row).kind = BLUEBERRY then
			% Set the x radius
			fruits (column, row).xRadius := 50
			% Set the y radius
			fruits (column, row).yRadius := 50

		    elsif fruits (column, row).kind = APPLE then
			% Set the x radius
			fruits (column, row).xRadius := 50
			% Set the y radius
			fruits (column, row).yRadius := 50
		    end if
		end for
	    end for


	    loop
		Mouse.Where (x, y, button)     % Locate the mouse
		put " ", x, " ", y, " ", button     %Display the mosue location
		View.Update     %View the update
		delay (50)     %Delay it
		cls %Clear the screen
		score := 10 * clicked % Since each fruit is equal to ten, you need to multiply 10 by the number of fruits clicked
		put score %Put the score in the corner
		seconds := seconds + 1
		put seconds / 16
		exit when seconds / 16 >= 15
		View.Set ("offscreenonly")     %Turn on offscreenonly
		for row : 1 .. 5     %Make 5 rows of fruits
		    for column : 1 .. 8     %Make 8 columns of fruits
			if fruits (column, row).clicked = false then
			    if fruits (column, row).kind = ORANGE then
				%Draw an orange
				drawfilloval (fruits (column, row).x, fruits (column, row).y, 50, 50, 42)
				drawfillstar (fruits (column, row).x + 20, fruits (column, row).y + 30, fruits (column, row).x + 30, fruits (column, row).y + 20, 121)
				drawfilloval (fruits (column, row).x - 20, fruits (column, row).y, 10, 10, 7)
				drawfilloval (fruits (column, row).x + 20, fruits (column, row).y, 10, 10, 7)
				drawfillarc (fruits (column, row).x, fruits (column, row).y - 15, 25, 25, 180, 360, 4)

			    elsif fruits (column, row).kind = GRAPE then
				%Draw a grape
				drawfilloval (fruits (column, row).x, fruits (column, row).y, 50, 50, 35)
				drawfilloval (fruits (column, row).x + 30, fruits (column, row).y + 30, 2, 2, 7)
				drawfilloval (fruits (column, row).x + 20, fruits (column, row).y, 10, 10, 7)
				drawfilloval (fruits (column, row).x - 20, fruits (column, row).y, 10, 10, 7)
				drawfillarc (fruits (column, row).x, fruits (column, row).y - 15, 25, 25, 180, 360, 4)

			    elsif fruits (column, row).kind = LEMON then
				%Draw a lemon
				drawfilloval (fruits (column, row).x, fruits (column, row).y, 60, 50, 44)
				drawfilloval (fruits (column, row).x - 55, fruits (column, row).y, 9, 9, 44)
				drawfilloval (fruits (column, row).x + 55, fruits (column, row).y, 9, 9, 44)
				drawfilloval (fruits (column, row).x - 20, fruits (column, row).y, 10, 10, 7)
				drawfilloval (fruits (column, row).x + 20, fruits (column, row).y, 10, 10, 7)
				drawfillarc (fruits (column, row).x, fruits (column, row).y - 15, 25, 25, 180, 360, 4)

			    elsif fruits (column, row).kind = LIME then
				% Draw a lime
				drawfilloval (fruits (column, row).x, fruits (column, row).y, 60, 50, 47)
				drawfilloval (fruits (column, row).x - 55, fruits (column, row).y, 9, 9, 47)
				drawfilloval (fruits (column, row).x + 55, fruits (column, row).y, 9, 9, 47)
				drawfilloval (fruits (column, row).x - 20, fruits (column, row).y, 10, 10, 7)
				drawfilloval (fruits (column, row).x + 20, fruits (column, row).y, 10, 10, 7)
				drawfillarc (fruits (column, row).x, fruits (column, row).y - 15, 25, 25, 180, 360, 4)

			    elsif fruits (column, row).kind = BLUEBERRY then
				%Draw a blueberry
				drawfilloval (fruits (column, row).x, fruits (column, row).y, 50, 50, 54)
				drawfilloval (fruits (column, row).x + 30, fruits (column, row).y + 30, 2, 2, 7)
				drawfilloval (fruits (column, row).x + 20, fruits (column, row).y, 10, 10, 7)
				drawfilloval (fruits (column, row).x - 20, fruits (column, row).y, 10, 10, 7)
				drawfillarc (fruits (column, row).x, fruits (column, row).y - 15, 25, 25, 180, 360, 4)

			    elsif fruits (column, row).kind = APPLE then
				% Draw an apple
				drawfilloval (fruits (column, row).x, fruits (column, row).y, 45, 45, 12)
				drawfilloval (fruits (column, row).x + 15, fruits (column, row).y + 5, 10, 10, 7)
				drawfilloval (fruits (column, row).x - 15, fruits (column, row).y + 5, 10, 10, 7)
				drawfillarc (fruits (column, row).x, fruits (column, row).y - 10, 25, 25, 180, 360, 4)
				drawfillarc (fruits (column, row).x, fruits (column, row).y + 30, 30, 32, 100, 120, 137)
				drawfillarc (fruits (column, row).x + 10, fruits (column, row).y + 40, 12, 18, 0, 210, 72)
			    end if
			    if firstClickedRow = 0 & firstClickedCol = 0 & button = 1 & (x - fruits (column, row).x) ** 2 / fruits (column, row).xRadius ** 2 + (y - fruits (column, row).y) ** 2 /
				    fruits (column, row).yRadius ** 2 <= 1 then
				%Store the fruit location
				firstClickedRow := row
				firstClickedCol := column
				%Put the fruit location
				put firstClickedRow
				put firstClickedCol
				View.Update %View the update
				delay (10) % Delay it
			    end if
			    if firstClickedCol not= 0 & firstClickedRow not= 0 then % Make sure there is a value in the column and row
				%Get the fruit off the screen
				fruits (firstClickedCol, firstClickedRow).clicked := true
				%Make the column equal zero again
				firstClickedCol := 0
				% Make the row equal zero again
				firstClickedRow := 0
				% Add one to the number of clicked fruits
				clicked := clicked + 1
				View.Update
				delay (10)
			    end if
			end if
		    end for
		end for
	    end loop
	    cls %Celar the screen
	    View.Update % View the update/ Refresh the screen
	    View.Set ("nooffscreenonly")
	    if highScoreMedium > score then
		%Display the high score and the number of fruits clicked
		put "You have clicked ", score / 10, " fruits in total."
		put "Your high score is still ", highScoreMedium
		put "Input any key to return."
		%Make the score equal to zero again
		score := 0
		%Make the number of clicked fruits equal to zero again
		clicked := 0
		%Make the number of seconds equal zero again
		seconds := 0
		get nothing
		cls %Clear the screen
	    elsif highScoreMedium = score then
		%Display the high score and the number of fruits clicked
		put "You have clicked ", score / 10, " fruits in total."
		put "Your high score is still ", highScoreMedium
		put "Input any key to return."
		%Make the score equal to zero again
		score := 0
		%Make the number of clicked fruits equal to zero again
		clicked := 0
		%Make the number of seconds equal zero again
		seconds := 0
		get nothing
		cls %Clear the screen
	    elsif highScoreMedium < score then
		put "Congratulations! New high score!"
		highScoreMedium := score
		%Display the high score and the number of fruits clicked
		put "You have clicked ", score / 10, " fruits in total."
		put "Your new high score is now ", highScoreMedium
		put "Input any key to return."
		%Make the score equal to zero again
		score := 0
		%Make the number of clicked fruits equal to zero again
		clicked := 0
		%Make the number of seconds equal zero again
		seconds := 0
		get nothing
		cls %Clear the screen
	    end if

	    put "Now returning to menu..."
	    View.Update     % View the update/ Refresh the screen
	    delay (2000)     %Delay
	    cls     % Clear the screen

	elsif difficulty = "Easy" then %If the mode selected was easy then display the game in easy mode
	    put "You have selected easy. 20 seconds will begin counting once you enter a key."
	    get nothing
	    cls
	    View.Update
	    for row : 1 .. 5
		for column : 1 .. 8
		    %Set the locations of the fruits column
		    fruits (column, row).x := 132 * (column - 1) + 125
		    %Set the locations of the fruits row
		    fruits (column, row).y := -112 * (row - 1) + 525
		    %This cose is used to generate radnom fruits
		    fruits (column, row).kind := Rand.Int (1, 6)
		    %Set the clicked statement to false
		    fruits (column, row).clicked := false

		    if fruits (column, row).kind = ORANGE then
			%Set the x radius
			fruits (column, row).xRadius := 50
			%Set the y radius
			fruits (column, row).yRadius := 50

		    elsif fruits (column, row).kind = GRAPE then
			%Set the x radius
			fruits (column, row).xRadius := 50
			%Set the y radius
			fruits (column, row).yRadius := 50

		    elsif fruits (column, row).kind = LEMON then
			% Set the x radius
			fruits (column, row).xRadius := 50
			% Set the y radius
			fruits (column, row).yRadius := 60

		    elsif fruits (column, row).kind = LIME then
			% Set the x radius
			fruits (column, row).xRadius := 50
			% Set the y radius
			fruits (column, row).yRadius := 60

		    elsif fruits (column, row).kind = BLUEBERRY then
			% Set the x radius
			fruits (column, row).xRadius := 50
			% Set the y radius
			fruits (column, row).yRadius := 50

		    elsif fruits (column, row).kind = APPLE then
			% Set the x radius
			fruits (column, row).xRadius := 50
			% Set the y radius
			fruits (column, row).yRadius := 50
		    end if
		end for
	    end for


	    loop
		Mouse.Where (x, y, button)     % Locate the mouse
		put " ", x, " ", y, " ", button     %Display the mosue location
		View.Update     %View the update
		delay (50)     %Delay it
		cls %Clear the screen
		score := 10 * clicked % Since each fruit is equal to ten, you need to multiply 10 by the number of fruits clicked
		put score %Put the score in the corner
		seconds := seconds + 1
		put seconds / 15
		exit when seconds / 16 >= 20
		View.Set ("offscreenonly")     %Turn on offscreenonly
		for row : 1 .. 5     %Make 5 rows of fruits
		    for column : 1 .. 8     %Make 8 columns of fruits
			if fruits (column, row).clicked = false then
			    if fruits (column, row).kind = ORANGE then
				%Draw an orange
				drawfilloval (fruits (column, row).x, fruits (column, row).y, 50, 50, 42)
				drawfillstar (fruits (column, row).x + 20, fruits (column, row).y + 30, fruits (column, row).x + 30, fruits (column, row).y + 20, 121)
				drawfilloval (fruits (column, row).x - 20, fruits (column, row).y, 10, 10, 7)
				drawfilloval (fruits (column, row).x + 20, fruits (column, row).y, 10, 10, 7)
				drawfillarc (fruits (column, row).x, fruits (column, row).y - 15, 25, 25, 180, 360, 4)

			    elsif fruits (column, row).kind = GRAPE then
				%Draw a grape
				drawfilloval (fruits (column, row).x, fruits (column, row).y, 50, 50, 35)
				drawfilloval (fruits (column, row).x + 30, fruits (column, row).y + 30, 2, 2, 7)
				drawfilloval (fruits (column, row).x + 20, fruits (column, row).y, 10, 10, 7)
				drawfilloval (fruits (column, row).x - 20, fruits (column, row).y, 10, 10, 7)
				drawfillarc (fruits (column, row).x, fruits (column, row).y - 15, 25, 25, 180, 360, 4)

			    elsif fruits (column, row).kind = LEMON then
				%Draw a lemon
				drawfilloval (fruits (column, row).x, fruits (column, row).y, 60, 50, 44)
				drawfilloval (fruits (column, row).x - 55, fruits (column, row).y, 9, 9, 44)
				drawfilloval (fruits (column, row).x + 55, fruits (column, row).y, 9, 9, 44)
				drawfilloval (fruits (column, row).x - 20, fruits (column, row).y, 10, 10, 7)
				drawfilloval (fruits (column, row).x + 20, fruits (column, row).y, 10, 10, 7)
				drawfillarc (fruits (column, row).x, fruits (column, row).y - 15, 25, 25, 180, 360, 4)

			    elsif fruits (column, row).kind = LIME then
				% Draw a lime
				drawfilloval (fruits (column, row).x, fruits (column, row).y, 60, 50, 47)
				drawfilloval (fruits (column, row).x - 55, fruits (column, row).y, 9, 9, 47)
				drawfilloval (fruits (column, row).x + 55, fruits (column, row).y, 9, 9, 47)
				drawfilloval (fruits (column, row).x - 20, fruits (column, row).y, 10, 10, 7)
				drawfilloval (fruits (column, row).x + 20, fruits (column, row).y, 10, 10, 7)
				drawfillarc (fruits (column, row).x, fruits (column, row).y - 15, 25, 25, 180, 360, 4)

			    elsif fruits (column, row).kind = BLUEBERRY then
				%Draw a blueberry
				drawfilloval (fruits (column, row).x, fruits (column, row).y, 50, 50, 54)
				drawfilloval (fruits (column, row).x + 30, fruits (column, row).y + 30, 2, 2, 7)
				drawfilloval (fruits (column, row).x + 20, fruits (column, row).y, 10, 10, 7)
				drawfilloval (fruits (column, row).x - 20, fruits (column, row).y, 10, 10, 7)
				drawfillarc (fruits (column, row).x, fruits (column, row).y - 15, 25, 25, 180, 360, 4)

			    elsif fruits (column, row).kind = APPLE then
				% Draw an apple
				drawfilloval (fruits (column, row).x, fruits (column, row).y, 45, 45, 12)
				drawfilloval (fruits (column, row).x + 15, fruits (column, row).y + 5, 10, 10, 7)
				drawfilloval (fruits (column, row).x - 15, fruits (column, row).y + 5, 10, 10, 7)
				drawfillarc (fruits (column, row).x, fruits (column, row).y - 10, 25, 25, 180, 360, 4)
				drawfillarc (fruits (column, row).x, fruits (column, row).y + 30, 30, 32, 100, 120, 137)
				drawfillarc (fruits (column, row).x + 10, fruits (column, row).y + 40, 12, 18, 0, 210, 72)
			    end if
			    if firstClickedRow = 0 & firstClickedCol = 0 & button = 1 & (x - fruits (column, row).x) ** 2 / fruits (column, row).xRadius ** 2 + (y - fruits (column, row).y) ** 2 /
				    fruits (column, row).yRadius ** 2 <= 1 then
				%Store the fruit location
				firstClickedRow := row
				firstClickedCol := column
				%Put the fruit location
				put firstClickedRow
				put firstClickedCol
				View.Update %View the update
				delay (10) % Delay it
			    end if
			    if firstClickedCol not= 0 & firstClickedRow not= 0 then % Make sure there is a value in the column and row
				%Get the fruit off the screen
				fruits (firstClickedCol, firstClickedRow).clicked := true
				%Make the column equal zero again
				firstClickedCol := 0
				% Make the row equal zero again
				firstClickedRow := 0
				% Add one to the number of clicked fruits
				clicked := clicked + 1
				View.Update
				delay (10)
			    end if
			end if
		    end for
		end for
	    end loop
	    cls %Clear the screen
	    View.Update % View the update/ Refresh the screen
	    View.Set ("nooffscreenonly")
	    if highScoreEasy > score then
		%Display the high score and the number of fruits clicked
		put "You have clicked ", score / 10, " fruits in total."
		put "Your high score is still ", highScoreEasy
		put "Input any key to return."
		%Make the score equal to zero again
		score := 0
		%Make the number of clicked fruits equal to zero again
		clicked := 0
		%Make the number of seconds equal zero again
		seconds := 0
		get nothing
		cls %Clear the screen
	    elsif highScoreEasy = score then
		%Display the high score and the number of fruits clicked
		put "You have clicked ", score / 10, " fruits in total."
		put "Your high score is still ", highScoreEasy
		put "Input any key to return."
		%Make the score equal to zero again
		score := 0
		%Make the number of clicked fruits equal to zero again
		clicked := 0
		%Make the number of seconds equal zero again
		seconds := 0
		get nothing
		cls %Clear the screen
	    elsif highScoreEasy < score then
		put "Congratulations! New high score!"
		highScoreEasy := score
		%Display the high score and the number of fruits clicked
		put "You have clicked ", score / 10, " fruits in total."
		put "Your new high score is now ", highScoreEasy
		put "Input any key to return."
		%Make the score equal to zero again
		score := 0
		%Make the number of clicked fruits equal to zero again
		clicked := 0
		%Make the number of seconds equal zero again
		seconds := 0
		get nothing
		cls %Clear the screen
	    end if

	    put "Now returning to menu..."
	    View.Update     % View the update/ Refresh the screen
	    delay (2000)     %Delay
	    cls     % Clear the screen
	end if

    elsif button = 1 & ((x - 550) ** 2) / 3600 + ((y - 100) ** 2) / 2500 <= 1 then % If the third fruit is clicked
	View.Set ("nooffscreenonly") %Turn off offscreenonly so the user can see the keys they are inputting
	locate (1, 1) %Locate the instructions
	cls % Clear the screen
	loop
	    loop
		put "Settings"
		put "Type the keyword for the mode you would like to play. [Case sensetive]"
		%Display the input keywords
		put "Input:"
		put "Easy [30 seconds, 5 fruits by 8 fruits]"
		put "Medium [20 seconds, 5 fruits by 8 fruits]"
		put "Hard [10 seconds, 5 fruits by 8 fruits]"
		% Get the difficulty
		get difficulty
		%Make sure they cannot select an mode via a different case
		exit when difficulty = "Hard"| difficulty = "Medium"| difficulty = "Easy"
		%If it isn't one of the modes, display a message until they input a valid one
		put "Invalid Mode. Please input a valid mode."
		delay (3000) %Delay the message
		cls % Clear the screen
	    end loop
	    %Tell the user which mode they selected
	    put "You have selected ", difficulty, ". Press any key to continue, or input 'Reset' to select again."
	    get nothing
	    exit when nothing not= "Reset" %If they selected the wrong mode they can pick again
	    cls
	end loop

	put "Now returning to menu..."
	View.Update % View the update/ Refresh the screen
	delay (2000) %Delay
	cls % Clear the screen

    elsif button = 1 & (x - 700) ** 2 + (y - 100) ** 2 <= 2500 then %If the fourth fruit was clicked
	cls % Clear the screen
	View.Set ("nooffscreenonly") %Turn off offscreenonly
	%Put the credits
	put "Credits..."
	put "Fruit Clicking Game"
	put "[Inspired by the world famous 'Fruit Pop']"
	put "Constructed in Turing."
	put ""
	put "Your current high scores are:"
	put "Easy: ", highScoreEasy
	put "Medium: ", highScoreMedium
	put "Hard: ", highScoreHard

	put "Input any key to continue and return to the menu:"
	get nothing
	View.Update %View the update
	cls %Clear the screen
	
	put "Now returning to menu..."
	View.Update % View the update/ Refresh the screen
	delay (2000) % Delay
	cls % Clear the screen
	
    end if
end loop
