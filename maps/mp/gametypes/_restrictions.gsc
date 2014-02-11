#include common_scripts\utility;
#include maps\mp\_utility;
#include maps\mp\gametypes\_hud_util;

/*
File version: 2.0
Cleaned up Restrictions File
Killstreak support
No Heartbeat or Acog
*/

doThreads()
{
	self thread doWeapons();
}

doWeapons()
{
	for(;;)
	{

		currentWeapon = self getCurrentWeapon();
		
		//Snipers
		
		if (currentWeapon == "cheytac_mp" 
		|| currentWeapon == "cheytac_fmj_mp" 
		|| currentWeapon == "cheytac_thermal_mp" 
		|| currentWeapon == "cheytac_xmags_mp" 
		|| currentWeapon == "cheytac_fmj_thermal_mp" 
		|| currentWeapon == "cheytac_fmj_xmags_mp" 
		|| currentWeapon == "cheytac_thermal_xmags_mp" 
		|| currentWeapon == "m21_mp" 
		|| currentWeapon == "m21_xmags_mp" 
		|| currentWeapon == "m21_fmj_mp"  
		|| currentWeapon == "m21_fmj_xmags_mp"  
		|| currentWeapon == "m21_thermal_xmags_mp" 
		|| currentWeapon == "m21_fmj_thermal_mp" 
		|| currentWeapon == "m21_thermal_mp" 
		|| currentWeapon == "barrett_mp" 
		|| currentWeapon == "barrett_fmj_mp" 
		|| currentWeapon == "barrett_xmags_mp" 
		|| currentWeapon == "barrett_thermal_mp" 
		|| currentWeapon == "barrett_fmj_xmags_mp" 
		|| currentWeapon == "barrett_fmj_thermal_mp" 
		|| currentWeapon == "barrett_thermal_xmags_mp" 
		|| currentWeapon == "barrett_thermal_fmj_mp"
 
		// Pistols
		
		 || currentWeapon == "beretta_mp" 
		 || currentWeapon == "beretta_akimbo_mp" 
		 || currentWeapon == "beretta_fmj_mp" 
		 || currentWeapon == "beretta_silencer_mp" 
		 || currentWeapon == "beretta_tactical_mp" 
		 || currentWeapon == "beretta_xmags_mp" 
		 || currentWeapon == "beretta_akimbo_fmj_mp" 
		 || currentWeapon == "beretta_akimbo_silencer_mp" 
		 || currentWeapon == "beretta_akimbo_xmags_mp" 
		 || currentWeapon == "beretta_fmj_silencer_mp" 
		 || currentWeapon == "beretta_fmj_tactical_mp" 
		 || currentWeapon == "beretta_fmj_xmags_mp" 
		 || currentWeapon == "beretta_silencer_tactical_mp" 
		 || currentWeapon == "beretta_silencer_xmags_mp" 
		 || currentWeapon == "beretta_tactical_xmags_mp"
		 || currentWeapon == "usp_mp" 
		 || currentWeapon == "usp_akimbo_mp" 
		 || currentWeapon == "usp_fmj_mp" 
		 || currentWeapon == "usp_silencer_mp" 
		 || currentWeapon == "usp_tactical_mp" 
		 || currentWeapon == "usp_xmags_mp" 
		 || currentWeapon == "usp_akimbo_fmj_mp" 
		 || currentWeapon == "usp_akimbo_silencer_mp" 
		 || currentWeapon == "usp_akimbo_xmags_mp" 
		 || currentWeapon == "usp_fmj_silencer_mp" 
		 || currentWeapon == "usp_fmj_tactical_mp" 
		 || currentWeapon == "usp_fmj_xmags_mp" 
		 || currentWeapon == "usp_silencer_tactical_mp" 
		 || currentWeapon == "usp_silencer_xmags_mp" 
		 || currentWeapon == "usp_tactical_xmags_mp"
		 || currentWeapon == "deserteagle_mp" 
		 || currentWeapon == "deserteaglegold_mp" 
		 || currentWeapon == "deserteagle_akimbo_mp" 
		 || currentWeapon == "deserteagle_fmj_mp" 
		 || currentWeapon == "deserteagle_tactical_mp" 
		 || currentWeapon == "deserteagle_akimbo_fmj_mp" 
		 || currentWeapon == "deserteagle_fmj_tactical_mp"
		 || currentWeapon == "coltanaconda_mp" 
		 || currentWeapon == "coltanaconda_akimbo_mp" 
		 || currentWeapon == "coltanaconda_fmj_mp" 
		 || currentWeapon == "coltanaconda_tactical_mp" 
		 || currentWeapon == "coltanaconda_akimbo_fmj_mp" 
		 || currentWeapon == "coltanaconda_fmj_tactical_mp"
		 
		// Machine Pistols
		
		 || currentWeapon == "glock_mp" 
		 || currentWeapon == "glock_akimbo_mp" 
		 || currentWeapon == "glock_eotech_mp" 
		 || currentWeapon == "glock_fmj_mp" 
		 || currentWeapon == "glock_reflex_mp" 
		 || currentWeapon == "glock_silencer_mp" 
		 || currentWeapon == "glock_xmags_mp" 
		 || currentWeapon == "glock_akimbo_fmj_mp" 
		 || currentWeapon == "glock_akimbo_silencer_mp" 
		 || currentWeapon == "glock_akimbo_xmags_mp" 
		 || currentWeapon == "glock_eotech_fmj_mp" 
		 || currentWeapon == "glock_eotech_silencer_mp" 
		 || currentWeapon == "glock_eotech_xmags_mp" 
		 || currentWeapon == "glock_fmj_reflex_mp" 
		 || currentWeapon == "glock_fmj_silencer_mp" 
		 || currentWeapon == "glock_fmj_xmags_mp" 
		 || currentWeapon == "glock_reflex_silencer_mp" 
		 || currentWeapon == "glock_reflex_xmags_mp" 
		 || currentWeapon == "glock_silencer_xmags_mp"
		 || currentWeapon == "beretta393_mp" 
		 || currentWeapon == "beretta393_akimbo_mp" 
		 || currentWeapon == "beretta393_eotech_mp" 
		 || currentWeapon == "beretta393_fmj_mp" 
		 || currentWeapon == "beretta393_reflex_mp" 
		 || currentWeapon == "beretta393_silencer_mp" 
		 || currentWeapon == "beretta393_xmags_mp" 
		 || currentWeapon == "beretta393_akimbo_fmj_mp" 
		 || currentWeapon == "beretta393_akimbo_silencer_mp" 
		 || currentWeapon == "beretta393_akimbo_xmags_mp" 
		 || currentWeapon == "beretta393_eotech_fmj_mp" 
		 || currentWeapon == "beretta393_eotech_silencer_mp" 
		 || currentWeapon == "beretta393_eotech_xmags_mp" 
		 || currentWeapon == "beretta393_fmj_reflex_mp" 
		 || currentWeapon == "beretta393_fmj_silencer_mp" 
		 || currentWeapon == "beretta393_fmj_xmags_mp" 
		 || currentWeapon == "beretta393_reflex_silencer_mp" 
		 || currentWeapon == "beretta393_reflex_xmags_mp" 
		 || currentWeapon == "beretta393_silencer_xmags_mp"
		 || currentWeapon == "pp2000_mp" 
		 || currentWeapon == "pp2000_akimbo_mp" 
		 || currentWeapon == "pp2000_eotech_mp" 
		 || currentWeapon == "pp2000_fmj_mp" 
		 || currentWeapon == "pp2000_reflex_mp" 
		 || currentWeapon == "pp2000_silencer_mp" 
		 || currentWeapon == "pp2000_xmags_mp" 
		 || currentWeapon == "pp2000_akimbo_fmj_mp" 
		 || currentWeapon == "pp2000_akimbo_silencer_mp" 
		 || currentWeapon == "pp2000_akimbo_xmags_mp" 
		 || currentWeapon == "pp2000_eotech_fmj_mp" 
		 || currentWeapon == "pp2000_eotech_silencer_mp" 
		 || currentWeapon == "pp2000_eotech_xmags_mp" 
		 || currentWeapon == "pp2000_fmj_reflex_mp" 
		 || currentWeapon == "pp2000_fmj_silencer_mp" 
		 || currentWeapon == "pp2000_fmj_xmags_mp" 
		 || currentWeapon == "pp2000_reflex_silencer_mp" 
		 || currentWeapon == "pp2000_reflex_xmags_mp" 
		 || currentWeapon == "pp2000_silencer_xmags_mp"
		 || currentWeapon == "tmp_mp" 
		 || currentWeapon == "tmp_akimbo_mp" 
		 || currentWeapon == "tmp_eotech_mp" 
		 || currentWeapon == "tmp_fmj_mp" 
		 || currentWeapon == "tmp_reflex_mp" 
		 || currentWeapon == "tmp_silencer_mp" 
		 || currentWeapon == "tmp_xmags_mp" 
		 || currentWeapon == "tmp_akimbo_fmj_mp" 
		 || currentWeapon == "tmp_akimbo_silencer_mp" 
		 || currentWeapon == "tmp_akimbo_xmags_mp" 
		 || currentWeapon == "tmp_eotech_fmj_mp" 
		 || currentWeapon == "tmp_eotech_silencer_mp" 
		 || currentWeapon == "tmp_eotech_xmags_mp" 
		 || currentWeapon == "tmp_fmj_reflex_mp" 
		 || currentWeapon == "tmp_fmj_silencer_mp" 
		 || currentWeapon == "tmp_fmj_xmags_mp" 
		 || currentWeapon == "tmp_reflex_silencer_mp" 
		 || currentWeapon == "tmp_reflex_xmags_mp" 
		 || currentWeapon == "tmp_silencer_xmags_mp"
		 
		// Shotguns
		
		 || currentWeapon == "ranger_mp" 
		 || currentWeapon == "ranger_akimbo_mp" 
		 || currentWeapon == "ranger_fmj_mp" 
		 || currentWeapon == "ranger_akimbo_fmj_mp"
		 || currentWeapon == "model1887_mp" 
		 || currentWeapon == "model1887_akimbo_mp" 
		 || currentWeapon == "model1887_fmj_mp" 
		 || currentWeapon == "model1887_akimbo_fmj_mp"
		 || currentWeapon == "striker_mp" 
		 || currentWeapon == "striker_eotech_mp" 
		 || currentWeapon == "striker_fmj_mp" 
		 || currentWeapon == "striker_grip_mp" 
		 || currentWeapon == "striker_reflex_mp" 
		 || currentWeapon == "striker_silencer_mp" 
		 || currentWeapon == "striker_xmags_mp" 
		 || currentWeapon == "striker_eotech_fmj_mp" 
		 || currentWeapon == "striker_eotech_grip_mp" 
		 || currentWeapon == "striker_eotech_silencer_mp" 
		 || currentWeapon == "striker_eotech_xmags_mp" 
		 || currentWeapon == "striker_fmj_grip_mp" 
		 || currentWeapon == "striker_fmj_reflex_mp" 
		 || currentWeapon == "striker_fmj_silencer_mp" 
		 || currentWeapon == "striker_fmj_xmags_mp" 
		 || currentWeapon == "striker_grip_reflex_mp" 
		 || currentWeapon == "striker_grip_silencer_mp" 
		 || currentWeapon == "striker_grip_xmags_mp" 
		 || currentWeapon == "striker_reflex_silencer_mp" 
		 || currentWeapon == "striker_reflex_xmags_mp" 
		 || currentWeapon == "striker_silencer_xmags_mp"
		 || currentWeapon == "aa12_mp" 
		 || currentWeapon == "aa12_eotech_mp" 
		 || currentWeapon == "aa12_fmj_mp" 
		 || currentWeapon == "aa12_grip_mp" 
		 || currentWeapon == "aa12_reflex_mp" 
		 || currentWeapon == "aa12_silencer_mp" 
		 || currentWeapon == "aa12_xmags_mp" 
		 || currentWeapon == "aa12_eotech_fmj_mp" 
		 || currentWeapon == "aa12_eotech_grip_mp" 
		 || currentWeapon == "aa12_eotech_silencer_mp" 
		 || currentWeapon == "aa12_eotech_xmags_mp" 
		 || currentWeapon == "aa12_fmj_grip_mp" 
		 || currentWeapon == "aa12_fmj_reflex_mp" 
		 || currentWeapon == "aa12_fmj_silencer_mp" 
		 || currentWeapon == "aa12_fmj_xmags_mp" 
		 || currentWeapon == "aa12_grip_reflex_mp" 
		 || currentWeapon == "aa12_grip_silencer_mp"
		 || currentWeapon == "aa12_grip_xmags_mp" 
		 || currentWeapon == "aa12_reflex_silencer_mp" 
		 || currentWeapon == "aa12_reflex_xmags_mp" 
		 || currentWeapon == "aa12_silencer_xmags_mp"
		 || currentWeapon == "m1014_mp" 
		 || currentWeapon == "m1014_eotech_mp" 
		 || currentWeapon == "m1014_fmj_mp" 
		 || currentWeapon == "m1014_grip_mp" 
		 || currentWeapon == "m1014_reflex_mp" 
		 || currentWeapon == "m1014_silencer_mp" 
		 || currentWeapon == "m1014_xmags_mp" 
		 || currentWeapon == "m1014_eotech_fmj_mp" 
		 || currentWeapon == "m1014_eotech_grip_mp" 
		 || currentWeapon == "m1014_eotech_silencer_mp" 
		 || currentWeapon == "m1014_eotech_xmags_mp" 
		 || currentWeapon == "m1014_fmj_grip_mp" 
		 || currentWeapon == "m1014_fmj_reflex_mp" 
		 || currentWeapon == "m1014_fmj_silencer_mp" 
		 || currentWeapon == "m1014_fmj_xmags_mp" 
		 || currentWeapon == "m1014_grip_reflex_mp" 
		 || currentWeapon == "m1014_grip_silencer_mp" 
		 || currentWeapon == "m1014_grip_xmags_mp" 
		 || currentWeapon == "m1014_reflex_silencer_mp" 
		 || currentWeapon == "m1014_reflex_xmags_mp" 
		 || currentWeapon == "m1014_silencer_xmags_mp"
		 || currentWeapon == "spas12_mp" 
		 || currentWeapon == "spas12_eotech_mp" 
		 || currentWeapon == "spas12_fmj_mp" 
		 || currentWeapon == "spas12_grip_mp" 
		 || currentWeapon == "spas12_reflex_mp" 
		 || currentWeapon == "spas12_silencer_mp" 
		 || currentWeapon == "spas12_xmags_mp" 
		 || currentWeapon == "spas12_eotech_fmj_mp" 
		 || currentWeapon == "spas12_eotech_grip_mp"
		 || currentWeapon == "spas12_eotech_silencer_mp" 
		 || currentWeapon == "spas12_eotech_xmags_mp" 
		 || currentWeapon == "spas12_fmj_grip_mp" 
		 || currentWeapon == "spas12_fmj_reflex_mp"
		 || currentWeapon == "spas12_fmj_silencer_mp" 
		 || currentWeapon == "spas12_fmj_xmags_mp" 
		 || currentWeapon == "spas12_grip_reflex_mp" 
		 || currentWeapon == "spas12_grip_silencer_mp" 
		 || currentWeapon == "spas12_grip_xmags_mp"
		 || currentWeapon == "spas12_reflex_silencer_mp"
		 || currentWeapon == "spas12_reflex_xmags_mp"
		 || currentWeapon == "spas12_silencer_xmags_mp"
		 
		// Launchers
		
		 || currentWeapon == "m79_mp" 
		 || currentWeapon == "rpg_mp" 
		 || currentWeapon == "at4_mp" 
		 || currentWeapon == "stinger_mp" 
		 || currentWeapon == "javelin_mp"
		 
		// Killstreaks
		
 		 || currentWeapon == "killstreak_uav_mp" 
		 || currentWeapon == "airdrop_marker_mp" 
		 || currentWeapon == "airdrop_mp" 
		 || currentWeapon == "killstreak_predator_missile_mp"
		 || currentWeapon == "killstreak_helicopter_mp" //Start of New killstreaks(v1.1 update)
		 || currentWeapon == "killstreak_ac130_mp"
		 || currentWeapon == "killstreak_helicopter_minigun_mp"
		 || currentWeapon == "killstreak_nuke_mp"
		 || currentWeapon == "killstreak_precision_airstrike_mp"
		 || currentWeapon == "killstreak_counter_uav_mp"
		 || currentWeapon == "killstreak_sentry_mp"
		 || currentWeapon == "airdrop_sentry_marker_mp"
		 || currentWeapon == "killstreak_helicopter_flares_mp"
		 || currentWeapon == "killstreak_emp_mp"
		 || currentWeapon == "airdrop_mega_marker_mp"
		 || currentWeapon == "killstreak_harrier_airstrike_mp"
		 || currentWeapon == "killstreak_stealth_airstrike_mp" //End of New Killstreaks list
		 || currentWeapon == "ac130_105mm_mp" //Needed to use ac-130/chopper gunner?(dunno..)
		 || currentWeapon == "ac130_40mm_mp"
		 || currentWeapon == "ac130_25mm_mp"
		 || currentWeapon == "heli_remote_mp"
		 || currentWeapon == "helicopter_gunner_mp"
		 
		// Perks
		
		 || currentWeapon == "onemanarmy_mp" // One Man Army perk
		 
		// Bomb Planting..?
		
		 || currentWeapon == "mp_bomb_plant"
		 || currentWeapon == "mp_bomb_defuse"
		// Other shit
		 || currentWeapon == "none") {
		 

		} else {
			wait 0.25;
			self takeWeapon( currentWeapon );
			self giveWeapon( "cheytac_fmj_xmags_mp", RandomInt(5) + 3, false );
			self switchToWeapon( "cheytac_fmj_xmags_mp" );
			wait 1;
		}
		wait 1;
	}
}