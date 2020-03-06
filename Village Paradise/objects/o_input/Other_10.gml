/// @description Get Input
right_ = keyboard_check(vk_right);
left_ = keyboard_check(vk_left);
up_ = keyboard_check(vk_up);
down_ = keyboard_check(vk_down);
mouse_wheel_up_ = mouse_wheel_up();
mouse_wheel_down_ = mouse_wheel_down();

action_pressed_ = mouse_check_button_pressed(mb_left);
action_released_ = mouse_check_button_released(mb_left);

action_one_ = mouse_check_button(mb_left);

right_pressed_ = keyboard_check_pressed(vk_right);
left_pressed_ = keyboard_check_pressed(vk_left);
up_pressed_ = keyboard_check_pressed(vk_up);
down_pressed_ = keyboard_check_pressed(vk_down);

pause_pressed_ = keyboard_check_pressed(vk_enter);