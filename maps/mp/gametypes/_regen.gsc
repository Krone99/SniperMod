#include maps\mp\_utility;
#include maps\mp\gametypes\_hud_util;
#include common_scripts\utility;

/*
File Version: 1.0
Regen Ammo & Equip
*/


doThreads()
{
	self thread ammoRegen();
	self thread ammoReload();
	self thread equipRegen();
	self thread specRegen();
}

ammoRegen()
{
	for(;;)
	{

		self notifyOnPlayerCommand( "reload", "+reload" );
		self waittill( "reload" );

		wait 1;
		if (self.regen == true) {
			currentWeapon = self getCurrentWeapon();
			self giveMaxAmmo( currentWeapon );
		}
	}
}

ammoReload()
{
	for(;;)
	{

		self notifyOnPlayerCommand( "usereload", "+usereload" );
		self waittill( "usereload" );

		wait 1;
		if (self.regen == true) {
			currentWeapon = self getCurrentWeapon();
			self giveMaxAmmo( currentWeapon );
		}
	}
}

equipRegen()
{

	for(;;)
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
	}
}

specRegen()
{

	for(;;)
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
	}
}