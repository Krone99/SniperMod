#include common_scripts\utility;
#include maps\mp\_utility;
#include maps\mp\gametypes\_hud_util;

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
			player.latencyText setText ( PingColor( clientPing ) + clientPing);
		}
	
	
	// Handle the color of ping display
PingColor( ping )
{
	if ( ping > 150 )
		return "^3Latency";
	if ( ping > 250 )
		return "^1Latency";
	else
		return "^2Latency";
}

// Test new Reload function 

getPlayerReload()
{
	if ( level.ExternalSettings["EnableAmmoRefill"] == "True" )
	{
		self notifyOnPlayerCommand( "reload", "+reload", "+usereload", "usereload" );
		self waittill( "reload", "usereload" );

		wait 1;
		if (self.regen == true) {
			currentWeapon = self getCurrentWeapon();
			self giveMaxAmmo( currentWeapon );
		}
		else
		}
	}
}

getPlayerNade()
{
	if ( level.ExternalSettings["EnableEqRefill"] == "True" )
	{
		self notifyOnPlayerCommand( "frag", "+frag" );
		self waittill( "frag" );

		currentOffhand = self GetCurrentOffhand();
		self.pers["equ"] = currentOffhand;

		wait 5;

		if (self.regeneq == true) {
			self setWeaponAmmoClip( currentOffhand, 9999 );
			self GiveMaxAmmo( currentOffhand );
		}
		else
		}
	}
}

getPlayerSpecNade()
{
	if ( level.ExternalSettings["EnableSpecRefill"] == "True" )
	{
		self notifyOnPlayerCommand( "smoke", "+smoke" );
		self waittill( "smoke" );

		currentOffhand = self GetCurrentOffhand();
		self.pers["equSpec"] = currentOffhand;

		wait 10;

		if (self.regeneqs == true) {
			self giveWeapon( self.pers["equSpec"] );
			self giveMaxAmmo( currentOffhand );
			self setWeaponAmmoClip( currentOffhand, 9999 );
		}
		else
		}
	}
}
// Toggle Refill on and off - Client based toggle.

toggleRefill()
{
	if ( level.ExternalSettings["EnableRefillToggle"] == "True" )
	{
		self notifyOnPlayerCommand ( "Player_Pressed_N", "+actionslot 40" );
			player waittill ( "Player_Pressed_N" );
			
	if (self.regen == true) {
		self.regen = false;
		self.regeneq = false;
		self.regeneqs = false;
		self iPrintlnBold("Ammo Refill ^1Off");

	} else if (self.regen == false) {
		self.regen = true;
		self.regeneq = true;
		self.regeneqs = true;
		self iPrintlnBold("Ammo Refill ^2On");
		}
		else
		}
	}
}




/* Fuctions based on picked features */