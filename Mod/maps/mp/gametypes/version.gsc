#include common_scripts\utility;
#include maps\mp\_utility;
#include maps\mp\gametypes\_hud_util;

// Version check 
doThreads()
{
modVersion();
}


modVersion()
{
ModVersion = 1;
ModVersionMinor = 2;
ModStatus = "Pre-Alpha";
level.Version = " v" + ModVersion + "." + ModVersionMinor + " " + ModStatus;
}
