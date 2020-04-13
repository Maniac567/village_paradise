//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "Hello! How are you doing today?";
		mySpeaker[i]	= id;
		myScripts[i]	= [create_instance_layer, 170,120,"Instances",obj_emote];
		
		//Line 1
		i++;
		myText[i]		= "How do you think our little village looks so far?";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= ["It looks great!", "It's okay..."];
		myTypes[i]		= 1;
		mySpeaker[i]	= o_player;
		//myScripts[i]	= [[create_instance_layer, 170,120,"Instances",obj_emote], [create_instance_layer, 170,120,"Instances",obj_examplechar]];
		myNextLine[i]	= [3,4];
		
		//Line 3
		i++;
		myText[i]		= "Yes! It does look great, doesn't it? Glad you agree with me.";
		mySpeaker[i]	= id;
		myNextLine[i]   = -1
		
		//Line 4
		i++;
		myText[i]		= "Yeah, I guess it could look more presentable, but maybe you can help?";
		//myEffects[i]	= [13,1, 18,0];
		mySpeaker[i]	= id;
		//myTextCol[i]	= [13, c_lime, 18, c_white];

		//Line 5
		//i++;
		//myText[i]		= "We both know blue is the best colour.";
		//myEmotion[i]	= 1;
		//myEmote[i]		= 0;
		//mySpeaker[i]	= id;
		//myTextCol[i]	= [14, c_aqua, 18, c_white];

		////Line 6
		//i++;
		//myText[i]		= "Say it... or else.";
		//myTextSpeed[i]	= [1,0.5, 10,0.1];
		//myEmotion[i]	= 0;
		//myEmote[i]		= 4;
		//mySpeaker[i]	= id;
		//myTextCol[i]	= [11, c_red, 18, c_white];

		////Line 7
		//i++;
		//myText[i]		= ["(sarcastically) Blue is the best colour.", "Green is the best colour."];
		//myTypes[i]		= 1;
		//myNextLine[i]	= [8,9];
		//myScripts[i]	= [[change_variable, id, "choice_variable", "blue"], [change_variable, id, "choice_variable", "green"]];
		//mySpeaker[i]	= o_player;

		////Line 8
		//i++;
		//myText[i]		= "Exactly! Thank you!";
		//myEmotion[i]	= 0;
		//myEmote[i]		= 0;
		//myNextLine[i]	= -1;
		//mySpeaker[i]	= id;

		////Line 9
		//i++;
		//myText[i]		= "Nooooooooooooooooooooooo!";
		//myTextSpeed[i]	= [1,1, 6,0.3, 10,1];
		//myEmotion[i]	= 2;
		//myEmote[i]		= 9;
		//mySpeaker[i]	= id;
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