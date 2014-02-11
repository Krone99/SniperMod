/* Main file. All sub files (regen, toggle etc) will be merged into this file in the future

To-do: Merge current working features into this file.
Recode current working features into a better design
Add new features further protections and advanced features for server hosts.

*/

varChecks()
{
self.admin = false;
self.regen = true;
self.regeneq = true;
self.regeneqs = true;
self.classchange = true;
}

adminStatus() // Still being worked on
{
if (self isHost() || self.guid == "guid" && self.playername == "name")
   self.admin = true;
else
   self.admin = false;
}

/* Server checks & features based off a _settings file */

/* Fuctions based on picked features */