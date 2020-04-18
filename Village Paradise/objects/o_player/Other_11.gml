/// @description Shovel State
var _hole = instance_create_layer(x, y, "Instances", o_dirt_hole);
_hole.direction = direction_facing_*90;

switch direction_facing_
{
	case dir.right: _hole.x += 15 _hole.y -= 10 break;
	case dir.up: _hole.y -= 38 _hole.x -= 8; break;
	case dir.left: _hole.x -= 30 _hole.y -= 10 break;
	case dir.down: _hole.y += 10 _hole.x -= 7 break;
	default: break;
}

state_ = player.move;