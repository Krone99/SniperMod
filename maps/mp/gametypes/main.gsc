/* Main file. All sub files (regen, toggle etc) will be merged into this file in the future

To-do: Merge current working features into this file.
Recode current working features into a better design
Add new features further protections and advanced features for server hosts.

*/
init()
{	
	// Placeholder
}

/* Server checks & features based off a _settings file */

// Onscreen Ping Display
LatencyDisplay( player, drawPing )
{
	player endon ("disconnect");
		player endon ("death");
	
	// Add text display to the screen
	player.latencyText = createFontString( "objective", 1.5 );
	player.latencyText setPoint( "TOPRIGHT", "TOPRIGHT", -3, 3);
	player.latencyText.sort 				= 1;
	player.latencyText.foreground 			= false;
	player.latencyText.hidewheninmenu 		= true;
	player.latencyText.alpha				= 0.75;
	
	// Set the text to be displayed and check function is "Switched on"
	while( true )
	{
		clientPing = getPlayerPing ( player getEntityNumber());
		
		if ( drawPing )
		{
			player.latencyText setText ( GetColorForPing( clientPing ) + clientPing);
		}
	
	
	// Handle the color of ping display
GetColorForPing ( ping )
{
	if ( ping > 150 )
		return "^3";
	if ( ping > 250 )
		return "^1";
	else
		return "^2";
}
/* Fuctions based on picked features */