/// @description @function wordwrapString(text, width, delimiter, wordsplitSize)
/// @param text
/// @param  width
/// @param  delimiter
/// @param  wordsplitSize
///@description Breake string into word wrap lines by delimiter
///@param {String} text
///@param {Integer} width
///@param {String} delimiter
///@param {Integer} wordsplitSize
///@return {String} returns a given string, word wrapped to a pixel width, with line break characters inserted between words.

	var currentText = string(argument0)
	var width = argument1;
	var delimiter = string(argument2);
	var worldsplitSize = argument3;

	var spacePosition = -1;
	var currentPosition = 1;
	var result = "";

	// TODO optimalization required (line width calc)
	while (string_length(currentText) >= currentPosition) {
		if (string_width(string_hash_to_newline(string_copy(currentText, 1, currentPosition))) > width) {
			if (spacePosition != -1) {
				result += string_copy(currentText, 1, spacePosition) + delimiter;
				currentText = string_copy(currentText, spacePosition + 1, string_length(currentText) - (spacePosition));
				currentPosition = 1;
				spacePosition = -1;
			} else {
				if (worldsplitSize > 0) {
					result += string_copy(currentText, 1, currentPosition - 1) + delimiter;
					currentText = string_copy(currentText, currentPosition, string_length(currentText) - (currentPosition - 1));
					currentPosition = 1;
					spacePosition = -1;
				}
			}
		}
		if (string_char_at(currentText, currentPosition) == " ") {
			spacePosition = currentPosition;
		}
		currentPosition++;
	}

	if (string_length(currentText) > 0) {
		result += currentText;
	}
	return result;
