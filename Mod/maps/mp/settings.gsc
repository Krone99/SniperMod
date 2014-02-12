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
	
	
	self.classchange - Midgame class change

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
	LocalSettings["EnableToggleRefill"]			= true;
	LocalSettings["SpawnMessage"]				= true;
	LocalSettings["SpawnMessageText"]			= "71st Recon Sniper Mod:" + level.Version;
		
	/*
	self.regen = true;
	self.regeneq = true;
	self.regeneqs = true;
	*/

	//self.classchange = true;
	
	return LocalSettings;
}