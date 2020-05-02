///@description Talk State

//---You can update variables here!---//
reset_dialogue_defaults();
var _talk_direction = point_direction(x, y, o_player.x, o_player.y);
get_direction_facing(_talk_direction);

var _dialogue_choice = choose(0, 1);
var _current_dialogue = read_dialogue_map(global.dialogue, "kit_dialogue", 0);
var _dlength = array_length_1d(_current_dialogue);

var i = 0;
myText[i]		= "Hello! How are you doing today?";
mySpeaker[i]	= id;
		
//Line 1
i++;
myText[i]		= ["Let's chat!", "See ya!"];
myTypes[i]		= 1;
mySpeaker[i]	= o_player;
myNextLine[i]	= [2,-1];


switch(_dlength){
	case 1:
	#region One sentence

		i++;
		myText[i]		= _current_dialogue[_dialogue_choice, i-2];
		mySpeaker[i]	= id;

		#endregion
	break;
	
	case 2:
	#region Two Sentences
		i++;
		myText[i]		= _current_dialogue[_dialogue_choice, i-2];
		mySpeaker[i]	= id;
		
		i++;
		myText[i]		= _current_dialogue[_dialogue_choice, i-2];
		mySpeaker[i]	= id;
		
	#endregion
	break;
	
	case 3:
	#region Three Sentences
		i++;
		myText[i]		= _current_dialogue[_dialogue_choice, i-2];
		mySpeaker[i]	= id;
		
		i++;
		myText[i]		= _current_dialogue[_dialogue_choice, i-2];
		mySpeaker[i]	= id;
		
		i++;
		myText[i]		= _current_dialogue[_dialogue_choice, i-2];
		mySpeaker[i]	= id;
	#endregion
	break;
	
	case 4:
	#region Four Sentences
		i++;
		myText[i]		= _current_dialogue[_dialogue_choice, i-2];
		mySpeaker[i]	= id;
		
		i++;
		myText[i]		= _current_dialogue[_dialogue_choice, i-2];
		mySpeaker[i]	= id;
		
		i++;
		myText[i]		= _current_dialogue[_dialogue_choice, i-2];
		mySpeaker[i]	= id;
		
		i++;
		myText[i]		= _current_dialogue[_dialogue_choice, i-2];
		mySpeaker[i]	= id;
	#endregion
	break;
}