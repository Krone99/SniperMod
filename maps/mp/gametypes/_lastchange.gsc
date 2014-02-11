#include maps\mp\_utility;
#include maps\mp\gametypes\_hud_util;
#include common_scripts\utility;

/*
File Version: 1.0
Testing for Midgame class change
*/


doThreads()
{
toggleClass();
}

toggleClass()
{
for(;;)
	{
		self notifyOnPlayerCommand( "AS55", "+actionslot 55" );
		self waittill( "AS55" );
		
		wait 1;
		
if (self.classchange == true) {
setClientDvar( "ui_allow_classchange", "1" );
self iPrintlnBold("Class changing allowed");

} else if (self.classchange == false) {
setClientDvar( "ui_allow_classchange", "0" );
self iPrintlnBold("Class changing is currently not allowed");
		}
	}
}