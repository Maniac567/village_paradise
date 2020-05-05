var i;

var _time = o_game.hour_;

// change control var


// from dusk till dawn
if (_time >= 6 and _time <= 9)
{
	mode_color = 0;
	if (mode_color = clamp(mode_color, 0, 0.25)) {
	    for (var i = 0; i < 3; i ++) {
	        var_color[i+9] = lerp(var_color[i+3], var_color[i], mode_color*4);
	    }
	}
}

if (_time >= 10 and _time <= 17)
{
	mode_color = 0.26;
	if (mode_color = clamp(mode_color, 0.25, 0.5)) {
	    for (var i = 0; i < 3; i ++) {
	        var_color[i+9] = lerp(var_color[i], var_color[i+3], (mode_color-0.25)*4);
	    }
	}
}

if (_time >= 18 and _time <= 22)
{
	mode_color = 0.51;
	if (mode_color = clamp(mode_color, 0.5, 0.75)) {
	    for (var i = 0; i < 3; i ++) {
	        var_color[i+9] = lerp(var_color[i+3], var_color[i+6], (mode_color-0.5)*4);
	    }
	}
}

if (_time >= 23 or _time <= 5)
{
	mode_color = 0.76;
	if (mode_color = clamp(mode_color, 0.75, 1)) {
	    for (var i = 0; i < 3; i ++) {
	        var_color[i+9] = lerp(var_color[i+6], var_color[i+3], (mode_color-0.75)*4);
	    }
	}
}

