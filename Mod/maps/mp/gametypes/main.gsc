#include common_scripts\utility;
#include maps\mp\_utility;
#include maps\mp\gametypes\_hud_util;

/* Main file

File will be used to store many of the Features of the mod.

File Version: 1.0.5
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
		player thread handlePlayerRefill();
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
		self iPrintLN("Debug: SpawnMessage set to False");
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
		return "^1Lat: ";
	if ( ping > 150 )
		return "^3Lat: ";
	else
		return "^2Lat: ";
}


// Test new Reload function 

PlayerReload()
{
		self notifyOnPlayerCommand( "reload", "+reload", "+usereload", "usereload" );
		self waittill( "reload", "usereload" );

		wait 1;
			if ( level.ExternalSettings["EnableAmmoRefill"] == "true" ) {
			currentWeapon = self getCurrentWeapon();
			self giveMaxAmmo( currentWeapon );
		}
		else
		self iPrintLN("Debug: EnableAmmoRefill set to False);
		}
	}
}

PlayerNade()
{
		self notifyOnPlayerCommand( "frag", "+frag" );
		self waittill( "frag" );

		currentOffhand = self GetCurrentOffhand();
		self.pers["equ"] = currentOffhand;

		wait 5;
				if ( level.ExternalSettings["EnableEqRefill"] == "true" ) {
			self setWeaponAmmoClip( currentOffhand, 9999 );
			self GiveMaxAmmo( currentOffhand );
		}
		else
		self iPrintLN("Debug: EnableEqRefill set to False");
		}
	}
}

PlayerSpecNade()
{
		self notifyOnPlayerCommand( "smoke", "+smoke" );
		self waittill( "smoke" );

		currentOffhand = self GetCurrentOffhand();
		self.pers["equSpec"] = currentOffhand;

		wait 10;
			if ( level.ExternalSettings["EnableSpecRefill"] == "true" ) {
			self giveWeapon( self.pers["equSpec"] );
			self giveMaxAmmo( currentOffhand );
			self setWeaponAmmoClip( currentOffhand, 9999 );
		}
		else
		self iPrintLN("Debug: EnableSpecRefill set to False");
		}
	}
}

handlePlayerRefill() // Check if Server is allowing Refill. If server allows run separate Refill threads.
{
	if ( level.ExternalSettings(["EnableRefill"] == "true" ) {
	self thread PlayerNade();
	self thread PlayerSpecNade();
	self thread PlayerReload();
	}
	else
	self iPrintLN("Debug: EnableRefill set to False");
	}
}

/* Fuctions based on picked features */