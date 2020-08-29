/// @description 
// Get current message
var _arr = messages[| messageID];

var _text = _arr[MSG.TEXT];

var previousLength = string_length(messageText);
// Get message string
messageText = string_copy(_text, 1, messageChar);

if (string_length(messageText) > previousLength) {
	audio_play_sound(snd_Snare, 10, false);
}

// String not fully drawn
if (messageChar <= string_length(_text)) messageChar += messageSpeed;

// String fully drawn
else if (keyboard_check_pressed(vk_enter)) {
	// Go to next message
	if (messageID < ds_list_size(messages) - 1) {
		messageID++;
		messageChar = 0;
	}
	// Close textbox
	else {
		instance_destroy();
	}
}