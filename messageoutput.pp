class messageoutput{
	$timestamp = generate('/bin/date', '+%Y%d%m_%H:%M:%S')
	notice("Agent run starting at $timestamp ")
}
