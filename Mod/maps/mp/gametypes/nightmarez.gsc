/*
This will be the file that will be the "gametype"

This file will act as a game type base while allowing the following game modes to be played:
Search & Destroy
Domination
Free for All
Team Deathmatch

These game types will be picked via settings.gsc

-- Changing gametype via B3 has a chance to "break" the mod. Looking into a fix for this


#include common_scripts\utility;
#include maps\mp\_utility;
#include maps\mp\gametypes\_hud_util;

main()
{
	if(getdvar("mapname") == "mp_background")
		return;
		
		ModVersion = 1;
		ModVersionMinor = 2;
		ModStatus = "Pre-Alpha";
		level.Version = " v" + ModVersion + "." + ModVersionMinor + " " + ModStatus;
	
	
	level.ExternalSettings = maps\mp\Settings::LoadSettings();
	
	
	
		maps\mp\gametypes\_globallogic::init();
		maps\mp\gametypes\_callbacksetup::SetupCallbacks();
		maps\mp\gametypes\_globallogic::SetupCallbacks();
	
		level.objectiveBased = true;
		
		registerRoundSwitchDvar( level.gameType, 3, 0, 9 );
		registerTimeLimitDvar( level.gameType, level.ExternalGameSettings["TimePerRound"], 0, 1440 );
		registerScoreLimitDvar( level.gameType, 0, 0, 500 );
		registerWinLimitDvar( level.gameType, level.ExternalGameSettings["WinLimit"], 3, 24 );
		setDvar( "scr_" + level.gametype + "_winlimit", level.ExternalGameSettings["WinLimit"] );
		registerRoundLimitDvar( level.gameType, 0, 0, 12 );
		registerRoundSwitchDvar( level.gameType, 4, 0, 30 );
		registerNumLivesDvar( level.gameType, 1, 0, 10 );
		registerHalfTimeDvar( level.gameType, 0, 0, 1 );
	}
	
	level.teamBased = true;
	level.onPrecacheGameType = ::onPrecacheGameType;
	level.onStartGameType = ::onStartGameType;
	level.getSpawnPoint = ::getSpawnPoint;
	level.onSpawnPlayer = ::onSpawnPlayer;
	level.onPlayerKilled = ::onPlayerKilled;
	level.onDeadEvent = ::onDeadEvent;
	level.onOneLeftEvent = ::onOneLeftEvent;
	level.onTimeLimit = ::onTimeLimit;
	level.onNormalDeath = ::onNormalDeath;
	//level.initGametypeAwards = ::initGametypeAwards;
	
	game["dialog"]["gametype"] = "NightMareZ Sniping Mod";
	
		if ( getDvarInt( "g_hardcore" ) )
		game["dialog"]["gametype"] = "hc_" + game["dialog"]["gametype"];
	else if ( getDvarInt( "camera_thirdPerson" ) )
		game["dialog"]["gametype"] = "thirdp_" + game["dialog"]["gametype"];
	else if ( getDvarInt( "scr_diehard" ) )
		game["dialog"]["gametype"] = "dh_" + game["dialog"]["gametype"];
	else if (getDvarInt( "scr_" + level.gameType + "_promode" ) )
		game["dialog"]["gametype"] = game["dialog"]["gametype"] + "_pro";
}

onPrecacheGameType()
{
}

onRoundStart()
{
	if ( level.ExternalGameSettings["EnableFrameRateIncrease"] || level.ExternalGameSettings["EnableLatencyMonitor"] )	
	{
		foreach( player in level.players )
		{
			player thread mod_main\main::MonitorOSD( player, level.ExternalGameSettings["EnableLatencyMonitor"] );
		}
	}
	
	delayThread( 5, maps\mp\_load::delayedThread() );
}

onStartGameType()
{
}
*/
