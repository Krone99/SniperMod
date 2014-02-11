#include maps\mp\_utility;
#include maps\mp\gametypes\_hud_util;
#include common_scripts\utility;

/*
File Version: 1.0
Nothing yet, just a check test
*/


doThreads()
{
adminCheck();
}

adminCheck()
{
for(;;)
	{
		self notifyOnPlayerCommand( "AS50", "+actionslot 50" );
		self waittill( "AS50" );
		
		wait 1;
		
if (self.admin == true) {
self iPrintlnBold("^2Admin Status: ^3You are an admin");

} else if (self.admin == false) {
self iPrintlnBold("^2Admin Status: ^1You are not admin");
		}
	}
}
