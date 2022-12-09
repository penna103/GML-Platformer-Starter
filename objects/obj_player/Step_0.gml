/// @description Core Player Logic

// Player Inputs
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
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