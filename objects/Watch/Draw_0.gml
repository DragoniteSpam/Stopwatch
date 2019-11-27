var current = get_timer();
var elapsed = (current - time) / 1000000;
if (elapsed > 60) {
	var text = string(elapsed div 60) + ":" + string(elapsed % 60);
} else {
	var text = string(elapsed);
}

draw_clear((elapsed > 20 * 60) ? c_yellow : c_green);
draw_text_colour(room_width / 2, room_height / 2, text, c_black, c_black, c_black, c_black, 1);

if (keyboard_check(vk_anykey)) {
	time = current;
}