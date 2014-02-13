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
	level thread onPlayerConnect();
	level.ExternalSettings = maps\mp\settings::LoadSettings();
}


onPlayerConnect()
{
	for(;;)
	{
		level waittill( "connected", player );
		player thread onPlayerSpawned();
		thread LatencyDisplay( player, level.ExternalSettings["EnableLatencyMonitor"] );
	}
}

onPlayerSpawned()
{
	self endon("disconnect");
	
	for(;;)
	{
	self waittill("spawned_player");
	EachPlayerSpawnEvent();
	}
}

EachPlayerSpawnEvent()
{
		if ( level.ExternalSettings["SpawnMessage"] )
		{
		self iPrintLN(level.ExternalSettings["SpawnMessageText"]);
		}
		else
		self iPrintLN("");
		{
	}
}





/* Server checks & features based off a _settings file */

//Onscreen Ping Display
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
	
	player.FullbrightText = createFontString( "objective", 1.25 );
	player.FullbrightText setPoint( "TOPRIGHT", "TOPRIGHT", -3, 20);
	player.FullbrightText .sort 				= 1;
	player.FullbrightText .foreground 			= false;
	player.FullbrightText .hidewheninmenu 		= true;
	player.FullbrightText .alpha				= 0.75;
	
	// Set the text to be displayed and check function is "Switched on"
	while( true )
	{
		clientPing = getPlayerPing( player getEntityNumber());
		
		if ( drawPing )
		{
			player.latencyText setText( PingColor( clientPing ) + clientPing);
		}
		
		if ( level.ExternalSettings["EnableFrameRateIncrease"] )	
		{	
			if ( !player.pers["fullbright"] )
			{
				player.FullbrightText setText( "^1Fullbright: OFF" );
			}
			
			else
			{
				player.FullbrightText setText( "^2Fullbright: ON" );
			}
		}
		wait ( 1 );	
	}
}
	
// Handle the color of ping display
PingColor( ping )
{
	if ( ping > 250 )
		return "^1Latency: ";
	if ( ping > 150 )
		return "^3Latency: ";
	else
		return "^2Latency: ";
}

// Test new Reload function 

PlayerReload()
{
	if ( level.ExternalSettings["EnableAmmoRefill"] == "true" )
	{
		self notifyOnPlayerCommand( "reload", "+reload", "+usereload", "usereload" );
		self waittill( "reload", "usereload" );

		wait 1;
			currentWeapon = self getCurrentWeapon();
			self giveMaxAmmo( currentWeapon );
		}
		else
		}
	}
}

PlayerNade()
{
	if ( level.ExternalSettings["EnableEqRefill"] == "true" )
	{
		self notifyOnPlayerCommand( "frag", "+frag" );
		self waittill( "frag" );

		currentOffhand = self GetCurrentOffhand();
		self.pers["equ"] = currentOffhand;

		wait 5;

			self setWeaponAmmoClip( currentOffhand, 9999 );
			self GiveMaxAmmo( currentOffhand );
		}
		else
		}
	}
}

PlayerSpecNade()
{
	if ( level.ExternalSettings["EnableSpecRefill"] == "true" )
	{
		self notifyOnPlayerCommand( "smoke", "+smoke" );
		self waittill( "smoke" );

		currentOffhand = self GetCurrentOffhand();
		self.pers["equSpec"] = currentOffhand;

		wait 10;

			self giveWeapon( self.pers["equSpec"] );
			self giveMaxAmmo( currentOffhand );
			self setWeaponAmmoClip( currentOffhand, 9999 );
		}
		else
		}
	}
}

/* Fuctions based on picked features */