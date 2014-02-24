/*
Settings file - Change what you wish in here

	On = True
	Off = False

	LocalSettings["EnableAmmoRefill"] - Allow ammo refill
	LocalSettings["EnableDefaultSniper"] - Custom class or default "isnipe" sniper
	LocalSettings["EnableKillstreaks"] - Custom killstreaks or default
	LocalSettings["EnableEqRefill"] - Equipment Refill
	LocalSettings["EnableSpecRefill"] - Special Equipment Refill
	LocalSettings["EnableToggleRefill"] - Toggle Global refill
	LocalSettings["SpawnMessage"] - Toggle Spawn Message
	LocalSettings["SpawnMessageText"] - Spawn message text
	
	//  Damage File Shit
	LocalSettings["SniperDamage"] - Damage Snipers will do.
	LocalSettings["OtherGuns"] - The damage of all other guns, such as sidearms.
	0 = No hitmarkers
	1+ = Hitmarkers
	
	// Class Management System
	The follow options will be used to decide how the mod will handle classes.
	
	Class Options:
	
	iSnipe Setup
	LocalSettings["ClassModeiSnipe"] - Set to True; for iSnipe class system
	
	Weapon Loadout:
	
	LocalSettings["Sniper"] = Sniper name, etc: Cheytach
	LocalSettings["Sidearm"] = Etc: M9
	Attachment Loadout:
	
	LocalSettings["SniperAttach1"] = Etc: FMJ
	LocalSettings["SniperAttach2"] = Etc: Xmags
	Perks:
	
	LocalSettings["PerkSlot1"]
	LocalSettings["PerkSlot2"]
	LocalSettings["PerkSlot3"]
	
	Custom Class System
	LocalSettings["ClassModePlayer"] - Player custom classes (normal system)'
	
	Other Class Setup
	Default Assault Class
	This will control what the Assault default class gives you, to allow new players to have a sniper
	with Pro perks.
	
	Weapon Lodout
	LocalSettings["DefaultSniper"] = Sniper name, etc: Cheytach
	LocalSettings["DefaultSidearm"] = Etc: M9
	
	Attachment Loadout:
	LocalSettings["DefaultSniperAttach1"] = Etc: FMJ
	LocalSettings["DefaultSniperAttach2"] = Etc: Xmags
	
	Perks:
	LocalSettings["DefaultPerkSlot1"]
	LocalSettings["DefaultPerkSlot2"]
	LocalSettings["DefaultPerkSlot3"]
	
	
	LocalSettings["ClassChangeMidgame"] - Enable or disable mid game class change.
	Set to False if you pick iSnipe class

*/
LoadSettings()
{
	
	LocalSettings = [];
	
	LocalSettings["EnableAmmoRefill"] 	 		= true;
	LocalSettings["EnableDefaultSniper"] 	 	= false;
	LocalSettings["EnableKillstreaks"] 	 		= true;
	LocalSettings["EnableEqRefill"]				= true;
	LocalSettings["EnableSpecRefill"]			= true;
	LocalSettings["EnableLatencyMonitor"]   	= true;
	LocalSettings["EnableFrameRateMonitor"]		= true;
	LocalSettings["EnableToggleRefill"]			= true;
	LocalSettings["SpawnMessage"]				= true;
	LocalSettings["SpawnMessageText"]			= "71st Recon Sniper Mod: " + level.Version;
	
	//  Damage File Shit
	LocalSettings["SniperDamage"]				= 150;
	LocalSettings["OtherGuns"]					= 1;
	
	//  Class Setup
	
	
	// Default Assault Class
	LocalSettings["DefaultSniper"]				= "cheytac";
	LocalSettings["DefaultSidearm"]				= "beretta";
	LocalSettings["DefaultSniperAttach1"]		= "fmj";
	LocalSettings["DefaultSniperAttach2"]		= "xmags";
	LocalSettings["DefaultSidearmAttach"]		= "tactical";
	LocalSettings["DefaultPerkSlot1"]			= "specialty_fastreload";
	LocalSettings["DefaultPerkSlot2"]			= "specialty_bulletdamage";
	LocalSettings["DefaultPerkSlot3"]			= "specialty_extendedmelee";
	LocalSettings["DefaultEquipment"]			= "throwingknife_mp";
	
	
	
	
	/*
	self.regen = true;
	self.regeneq = true;
	self.regeneqs = true;
	*/

	//self.classchange = true;
	
	return LocalSettings;
}