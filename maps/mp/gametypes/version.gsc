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
ModVersionMinor = 0;
ModStatus = Alpha;
level.Version = " v" + ModVersion + "." + ModVersionMinor + " " + ModStatus;
}
