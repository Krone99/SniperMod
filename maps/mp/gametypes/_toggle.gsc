#include maps\mp\_utility;
#include maps\mp\gametypes\_hud_util;
#include common_scripts\utility;

/*
File Version: 1.0
Regen toggle

Todo: Attach to an ingame menu.
*/

doThreads()
{
toggleRegen();
toggleAmmo();
toggleEquip();
}

toggleRegen()
{
for(;;)
	{
		self notifyOnPlayerCommand( "AS45", "+actionslot 45" );
		self waittill( "AS45" );
		
		wait 1;
		
if (self.regen == true) {
self.regen = false;
self.regeneq = false;
self.regeneqs = false;
self iPrintlnBold("All regen turned ^1Off");

} else if (self.regen == false) {
self.regen = true;
self.regeneq = true;
self.regeneqs = true;
self iPrintlnBold("All regen turned ^2On");
		}
	}
}

toggleAmmo()
{
for(;;)
	{
		self notifyOnPlayerCommand( "AS46", "+actionslot 46" );
		self waittill( "AS46" );
		
		wait 1;
		
if (self.regen == true) {
self.regen = false;
self iPrintlnBold("Ammo Regen ^1Off");

} else if (self.regen == false) {
self.regen = true;
self iPrintlnBold("Ammo Regen ^2On");
		}
	}
}

toggleEquip()
{
for(;;)
	{
		self notifyOnPlayerCommand( "AS47", "+actionslot 47" );
		self waittill( "AS46" );
		
		wait 1;
		
if (self.regeneq == true) {
self.regeneq = false;
self iPrintlnBold("Equip Regen ^1Off");

} else if (self.regeneq == false) {
self.regeneq = true;
self iPrintlnBold("Equip Regen ^2On");
		}
	}
}

toggleEquipsp()
{
for(;;)
	{
		self notifyOnPlayerCommand( "AS48", "+actionslot 48" );
		self waittill( "AS48" );
		
		wait 1;
		
if (self.regeneqs == true) {
self.regeneqs = false;
self iPrintlnBold("Special Equip Regen ^1Off");

} else if (self.regeneqs == false) {
self.regeneqs = true;
self iPrintlnBold("Special Equip Regen ^2On");
		}
	}
}