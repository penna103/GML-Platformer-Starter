/// @description Core Player Logic

// Player Inputs
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_down = keyboard_check(vk_down);
key_space = keyboard_check_pressed(vk_space);

// Calculate Movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv

if (place_meeting(x,y+1,obj_wall)) and (key_space)
{
	vsp = -jumpsp
}

// Horizontal Collision 
if (place_meeting(x+hsp,y,obj_wall))
{
	while (!place_meeting(x+sign(hsp),y,obj_wall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

// Vertical Collision
if (place_meeting(x,y+vsp,obj_wall))
{
	while (!place_meeting(x,y+sign(vsp),obj_wall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

// Animation
if (!place_meeting(x,y+1,obj_wall))
{
	sprite_index = spr_player_jump;
	if (vsp < 0) image_index = 2 else image_index = 5
}
else
{
	if (hsp == 0)
	{
		sprite_index = spr_player_walk
		image_speed = 0
	}
	else
	{
		sprite_index = spr_player_walk
		image_speed = 1
	}
}

if (hsp != 0) image_xscale = sign(hsp);


if (place_meeting(x,y+1,obj_wall)) and (key_down)
{
	if (hsp == 0)
	{
		sprite_index = spr_player_crouch
		image_speed = 0
	}
	else
	{
		sprite_index = spr_player_crouch
		image_speed = 1
	}
}