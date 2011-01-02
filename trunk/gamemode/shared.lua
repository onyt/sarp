/*--------------------------------------------------------
Default teams. If you make a team above the citizen team, people will spawn with that team!
--------------------------------------------------------*/
TEAM_CITIZEN = AddExtraTeam("Citizen", Color(20, 150, 20, 255), {
	"models/player/Group01/Female_01.mdl",
	"models/player/Group01/Female_02.mdl",
	"models/player/Group01/Female_03.mdl",
	"models/player/Group01/Female_04.mdl",
	"models/player/Group01/Female_06.mdl",
	"models/player/Group01/Female_07.mdl",
	"models/player/group01/male_01.mdl",
	"models/player/Group01/Male_02.mdl",
	"models/player/Group01/male_03.mdl",
	"models/player/Group01/Male_04.mdl",
	"models/player/Group01/Male_05.mdl",
	"models/player/Group01/Male_06.mdl",
	"models/player/Group01/Male_07.mdl",
	"models/player/Group01/Male_08.mdl",
	"models/player/Group01/Male_09.mdl"},
[[The Citizen is the most basic level of society you can hold
besides being a hobo. 
You have no specific role in city life.]], {}, "citizen", 0, 45, 0, false, false)

TEAM_POLICE = AddExtraTeam("Civil Protection", Color(25, 25, 170, 255), "models/player/police.mdl", [[The protector of every citizen that lives in the city . 
You have the power to arrest criminals and protect innocents. 
Hit them with your arrest baton to put them in jail
Bash them with a stunstick and they might learn better than to disobey 
the law.
The Battering Ram can break down the door of a criminal with a warrant 
for his/her arrest.
The Battering Ram can also unfreeze frozen props(if enabled).
Type /wanted <name> to alert the public to this criminal
OR go to tab and warrant someone by clicking the warrant button]], {"arrest_stick", "unarrest_stick", "weapon_glock2", "stunstick", "door_ram", "weaponchecker"}, "cp", 40, 65, 0, true, true)

TEAM_GANG = AddExtraTeam("Gangster", Color(75, 75, 75, 255), {
	"models/player/Group03/Female_01.mdl",
	"models/player/Group03/Female_02.mdl",
	"models/player/Group03/Female_03.mdl",
	"models/player/Group03/Female_04.mdl",
	"models/player/Group03/Female_06.mdl",
	"models/player/Group03/Female_07.mdl",
	"models/player/group03/male_01.mdl",
	"models/player/Group03/Male_02.mdl",
	"models/player/Group03/male_03.mdl",
	"models/player/Group03/Male_04.mdl",
	"models/player/Group03/Male_05.mdl",
	"models/player/Group03/Male_06.mdl",
	"models/player/Group03/Male_07.mdl",
	"models/player/Group03/Male_08.mdl",
	"models/player/Group03/Male_09.mdl"}, [[The lowest person of crime. 
A gangster generally works for the Mobboss who runs the crime family. 
The Mobboss sets your agenda and you follow it or you might be punished.]], {}, "gangster", 40, 45, 0, false, false)

TEAM_MOB = AddExtraTeam("Mob boss", Color(25, 25, 25, 255), "models/player/gman_high.mdl", [[The Mobboss is the boss of the criminals in the city. 
With his power he coordinates the gangsters and forms an efficent crime
organization. 
He has the ability to break into houses by using a lockpick. 
The Mobboss also can unarrest you.]], {"lockpick", "unarrest_stick"}, "mobboss", 1, 60, 0, false, false)

TEAM_GUN = AddExtraTeam("Gun Dealer", Color(255, 140, 0, 255), "models/player/monk.mdl", [[A gun dealer is the only person who can sell guns to other 
people. 
However, make sure you aren't caught selling guns that are illegal to 
the public.
/Buyshipment <name> to Buy a  weapon shipment
/Buygunlab to Buy a gunlab that spawns P228 pistols]], {}, "gundealer", 3, 45, 0, false, false)

TEAM_MEDIC = AddExtraTeam("Medic", Color(47, 79, 79, 255), "models/player/hostage/hostage_01.mdl", [[With your medical knowledge, you heal players to proper 
health. 
Without a medic, people can not be healed. 
Left click with the Medical Kit to heal other players.
Right click with the Medical Kit to heal yourself.]], {"med_kit"}, "medic", 3, 45, 0, false, false)

TEAM_COOK = AddExtraTeam("Cook", Color(238, 99, 99, 255), "models/player/mossman.mdl", [[As a cook, it is your responsibility to feed the other members 
of your city. 
You can spawn a microwave and sell the food you make:
/Buymicrowave]], {}, "cook", 2, 45, 0, 0, false)

TEAM_CHIEF = AddExtraTeam("Civil Protection Chief", Color(20, 20, 255, 255), "models/player/combine_soldier_prisonguard.mdl", [[The Chief is the leader of the Civil Protection unit. 
Coordinate the police forces to bring law to the city
Hit them with arrest baton to put them in jail
Bash them with a stunstick and they might learn better than to 
disobey the law.
The Battering Ram can break down the door of a criminal with a 
warrant for his/her arrest.
Type /wanted <name> to alert the public to this criminal
Type /jailpos to set the Jail Position]], {"arrest_stick", "unarrest_stick", "weapon_deagle2", "stunstick", "door_ram", "weaponchecker"}, "chief", 1, 75, 0, false, true, TEAM_POLICE)

TEAM_MAYOR = AddExtraTeam("Mayor", Color(150, 20, 20, 255), "models/player/breen.mdl", [[The Mayor of the city creates laws to serve the greater good 
of the people.
If you are the mayor you may create and accept warrants.
Type /wanted <name>  to warrant a player
Type /jailpos to set the Jail Position
Type /lockdown initiate a lockdown of the city. 
Everyone must be inside during a lockdown. 
The cops patrol the area
/unlockdown to end a lockdown]], {}, "mayor", 1, 85, 0, true, false/*, {TEAM_CHIEF, TEAM_POLICE}*/)
/*
--------------------------------------------------------
HOW TO MAKE AN EXTRA CLASS!!!!
--------------------------------------------------------

You can make extra classes here. Set everything up here and the rest will be done for you! no more editing 100 files without knowing what you're doing!!!
Ok here's how:

To make an extra class do this:
AddExtraTeam( "<NAME OF THE CLASS>", Color(<red>, <Green>, <blue>, 255), "<Player model>" , [[<the description(it can have enters)>]], { "<first extra weapon>","<second extra weapon>", etc...}, "<chat command to become it(WITHOUT THE /!)>", <maximum amount of this team> <the salary he gets>, 0/1/2 = public /admin only / superadmin only, <1/0/true/false Do you have to vote to become it>,  true/false DOES THIS TEAM HAVE A GUN LICENSE?, TEAM: Which team you need to be to become this team)

The real example is here: it's the Hobo:		*/

--VAR without /!!!			The name    the color(what you see in tab)                   the player model					The description
TEAM_HOBO = AddExtraTeam("Hobo", Color(80, 45, 0, 255), "models/player/corpse1.mdl", [[The lowest member of society. All people see you laugh. 
You have no home.
Beg for your food and money
Sing for everyone who passes to get money
Make your own wooden home somewhere in a corner or 
outside someone else's door]], {"weapon_bugbait"}, "hobo", 40, 0, 0, false)
//No extra weapons           say /hobo to become hobo  Maximum hobo's = 5		his salary = 0 because hobo's don't earn money.          0 = everyone can become hobo ,      false = you don't have to vote to become hobo
// MAKE SURE THAT THERE IS NO / IN THE TEAM NAME OR IN THE TEAM COMMAND:
// TEAM_/DUDE IS WROOOOOONG !!!!!!
// HAVING "/dude" IN THE COMMAND FIELD IS WROOOOOOOONG!!!!
//ADD TEAMS UNDER THIS LINE:

TEAM_THIEF = AddExtraTeam("Thief", Color(51,153,51,255), "models/player/odessa.mdl", [[Go steal stuff.]], {"lockpick", "keypad_cracker"}, "thief", 4, 45, 0, false)
TEAM_HITMAN = AddExtraTeam("Hitman", Color(153,102,0,255), "models/player/leet.mdl", [[Go take hits for cash.]], {}, "hitman", 2, 45, 0, false)
--TEAM_DRUGDEALER = AddExtraTeam("Drug Dealer", Color(0,51,51,255), "models/player/soldier_stripped.mdl", [[Sell drugs for cash.]], {"pocket"}, "drugdealer", 2, 45, 0, false)
TEAM_BANKER = AddExtraTeam("Banker", Color(0,136,255,255), "models/player/hostage/hostage_02.mdl", [[Store stuff for cash.]], {}, "banker", 2, 50, 0, false)
TEAM_CULTLEADER = AddExtraTeam("Cult Leader", Color(155,125,51,255), "models/player/guerilla.mdl", [[Lead a religous group.
You decide if it is good or bad.
Preach to people in an attempt to recruit them.
Side with the mobboss, or the cops, or on your own.
Develop rituals, and follow them through.
The choice is yours.]], {}, "cultleader", 1, 60, 0, false)
TEAM_CULTFOLLOWER = AddExtraTeam("Cult Follower", Color(226,187,101,255), "models/player/arctic.mdl", [[Follow your leader.
Preform the rituals, or get banished.
Don't like your leader, leave.]], {}, "cultfollower", 40, 50, 0, false)
TEAM_HEAVYARMSDEALER = AddExtraTeam("Heavy Arms Dealer", Color(255,180,30,255), "models/player/Phoenix.mdl", [[Sell heavy weapons to the town.]], {}, "heavyarmsdealer", 3, 50, 0, false)
TEAM_BARTENDER = AddExtraTeam("Bartender", Color(99,0,122,255), "models/player/eli.mdl", [[Open a bar.
You can sell beer and cigarettes.]], {}, "bartender", 2, 50, 0, false)
TEAM_BODYGUARD = AddExtraTeam("Body Guard", Color(0,68,89,255), "models/player/swat.mdl", [[Guard people.]], {}, "bodygaurd", 5, 55, 0, false)
--TEAM_PACKMULE = AddExtraTeam("Packmule", Color(27,48,33,255), "models/jumpsuitrob.mdl", [[You transport the 'goods' during raids.]], {"pm_pocket"}, "packmule", 2, 50, 0, false)






/*
--------------------------------------------------------
HOW TO MAKE A DOOR GROUP
--------------------------------------------------------
AddDoorGroup("NAME OF THE GROUP HERE, you see this when looking at a door", Team1, Team2, team3, team4, etc.)

WARNING: THE DOOR GROUPS HAVE TO BE UNDER THE TEAMS IN SHARED.LUA. IF THEY ARE NOT, IT MIGHT MUCK UP!


The default door groups, can also be used as examples:
*/
AddDoorGroup("Cops and Mayor Only", TEAM_CHIEF, TEAM_POLICE, TEAM_MAYOR)
--AddDoorGroup("Gun Dealer Only", TEAM_GUN)
AddDoorGroup("Everybody")


/*
--------------------------------------------------------
HOW TO MAKE An agenda
--------------------------------------------------------
AddAgenda(Title of the agenda, Manager (who edits it), Listeners (the ones who just see and follow the agenda))

WARNING: THE AGENDAS HAVE TO BE UNDER THE TEAMS IN SHARED.LUA. IF THEY ARE NOT, IT MIGHT MUCK UP!

The default agenda's, can also be used as examples:
*/
AddAgenda("Gangster's Agenda", TEAM_MOB, {TEAM_GANG})
AddAgenda("Police Agenda", TEAM_MAYOR, {TEAM_CHIEF, TEAM_POLICE})
AddAgenda("Cult Agenda", TEAM_CULTLEADER, {TEAM_CULTLEADER, TEAM_CULTFOLLOWER})