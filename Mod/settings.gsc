LoadSettings()
{
	
	LocalSettings = [];
	
	LocalSettings["EnableAmmoRefill"] 	 		= true;
	LocalSettings["EnableDefaultSniper"] 	 	= false;
	LocalSettings["EnableKillstreaks"] 	 		= true;
	LocalSettings["EnableEqRefill"]				= true;
	LocalSettings["EnableSpecRefill"]			= true;
	LocalSettings["EnableToggleRefill"]			= true;
	LocalSettings["SpawnMessage"]				= "71st Recon Sniper Mod:" + level.Version;
	
	// Recommended to only change if EnableToggleRefill is False.
	self.regen = true; // Ammo
	self.regeneq = true; // Grenades
	self.regeneqs = true; // Special Grenades
	
	// Mid-game class change
	self.classchange = true;
	
	return LocalSettings;
}