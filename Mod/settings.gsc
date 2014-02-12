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
	
	
	return LocalSettings;
}