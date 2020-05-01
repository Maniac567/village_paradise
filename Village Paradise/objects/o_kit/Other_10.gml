///@description Talk State

//---You can update variables here!---//
reset_dialogue_defaults();
var _talk_direction = point_direction(x, y, o_player.x, o_player.y);
get_direction_facing(_talk_direction);


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "Hello! How are you doing today?";
		mySpeaker[i]	= id;
		
		//Line 1
		i++;
		myText[i]		= ["Let's chat!", "See ya!"];
		myTypes[i]		= 1;
		mySpeaker[i]	= o_player;
		myNextLine[i]	= [2,-1];
		
		//Line 2
		i++;
		myText[i]		= "Did you know that you can run faster by holding 'LSHIFT' on the keyboard?";
		mySpeaker[i]	= id;
		
		//Line 3
		i++;
		myText[i]		= "Makes things much faster to get to places.";
		mySpeaker[i]	= id;

		#endregion
	break;
	
	case "green":
	#region If you chose green
		var i = 0;
		//Line 0
		myText[i]		= "I can't believe you like green better...";
		myTextSpeed[i]	= [1, 0.3];
		myEmotion[i]	= 2;
		myEmote[i]		= 9;
		mySpeaker[i]	= id;
		myTextCol[i]	= [26,c_lime, 31,c_white];
		
		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	break;
	
	case "blue":
	#region If you chose blue
		var i = 0;
		//Line 0
		myText[i]		= "Hey there, fellow blue lover!";
		myTextSpeed[i]	= [1,1, 10,0.5];
		myEmotion[i]	= 1;
		myEmote[i]		= 0;
		mySpeaker[i]	= id;
		myTextCol[i]	= [19,c_aqua, 23,c_white];
		
		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	break;
}