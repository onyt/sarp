rp_languages = {}
-- DO NOT remove the english language!, you can edit it though
rp_languages.english = {
	-- admin things
	need_admin = "You need admin privileges in order to be able to %s",
	need_sadmin = "You need super admin privileges in order to be able to %s",
	no_jail_pos = "No jail position",
	invalid_x = "Invalid %s! %s", 
	
	-- F1 menu
	get_mod = "Get the mod at garrysmod.org!",
	mouse_wheel_to_scroll = "Use mousewheel to scroll",
	
	--money things:
	customer_price = "Customer price: ",
	reset_money = "%s has reset all player's money!",
	has_given = "%s has given you %s",
	you_gave = "You gave %s %s",
	npc_killpay = "%s for killing an NPC!",
	
	payday_message = "Payday! You received %s!",
	payday_unemployed = "You received no salary because you are unemployed!",
	payday_missed = "Pay day missed! (you're arrested)",
	
	property_tax = "Property tax! %s",
	property_tax_cant_afford = "You couldn't pay the taxes! Your property has been taken away from you!",
	
	--Players
	wanted = "Wanted by Police!",
	youre_arrested = "You have been arrested for %d seconds!",
	hes_arrested = "%s has been arrested for %d seconds!",
	hes_unarrested = "%s has been released from jail!",
	health = "Health: ",
	job = "Job: ",
	salary = "Salary: ",
	wallet = "Wallet: ",
	warrant_request = "%s requests a search warrant for %s",
	warrant_request2 = "Search warrant request sent to Mayor %s!",
	warrant_approved = "Search warrant approved for %s!",
	warrant_approved2 = "You are now able to search his house.",
	warrant_denied = "Mayor %s has denied your search warrant request.",
	warrant_expired = "The search warrant for %s has expired!",
	wanted_by_police = "%s is wanted by the police!",
	wanted_expired = "%s is no longer wanted by the Police.",
	rpname_changed = "%s changed their RPname to: %s",
	
	--teams
	need_to_be_before = "You need to be %s first in order to be able to become %s",
	need_to_make_vote = "You need to make a vote to become a %s!",
	team_limit_reached = "Can not become %s as the limit is reached",
	wants_to_be = "%s\nwants to be\n%s", 
	has_not_been_made_team = "%s has not been made %s!",
	job_has_become = "%s has been made a %s!",
	
	--disasters
	zombie_approaching = "WARNING: Zombies are approaching!",
	zombie_leaving = "Zombies are leaving.",
	zombie_spawn_not_exist = "Zombie Spawn %s does not exist.",
	zombie_spawn_removed = "You have removed this zombie spawn.",
	zombie_spawn_added = "You have added a zombie spawn.",
	zombie_maxset = "Maximum amount of zombies is now set to %s",
	zombie_enabled = "Zombies are now enabled.",
	zombie_disabled = "Zombies are now disabled.",
	meteor_approaching = "WARNING: Meteor storm approaching!",
	meteor_passing = "Meteor storm passing.",
	meteor_enabled = "Meteor Storms are now enabled.",
	meteor_disabled = "Meteor Storms are now disabled.",
	earthquake_report = "Earthquake reported of magnitude %sMw",
	earthtremor_report = "Earth tremor reported of magnitude %sMw",
	
	--keys, vehicles and doors
	keys_allowed_to_coown = "You are allowed to co-own this\n(Press Reload with keys or press F2 to co-own)\n",
	keys_other_allowed = "Allowed to co-own:\n",
	keys_allow_ownership = "(Press Reload with keys or press F2 to allow ownership)",
	keys_disallow_ownership = "(Press Reload with keys or press F2 to disallow ownership)",
	keys_owned_by = "Owned by: ",
	keys_cops_and_mayor = "All cops and the mayor",
	keys_unowned = "Unowned\n(Press Reload with keys or press F2 to own)",
	keys_everyone = "(Press Reload with keys or press F2 to enable for everyone)",
	keys_cops = "(Press Reload with keys or press F2 to set to cops and mayor only)",
	door_unown_arrested = "You can not own or unown things while arrested!",
	door_unownable = "This door can not be owned or unowned!",
	door_sold = "You have sold this for %s",
	door_already_owned = "This door is already owned by someone!",
	door_cannot_afford = "You can not afford this door!",
	vehicle_cannot_afford = "You can not afford this vehicle!",
	door_bought = "You've bought this door for %s",
	vehicle_bought = "You've bought this vehicle for %s",
	door_need_to_own = "You need to own this door in order to be able to %s",
	door_rem_owners_unownable = "You can not remove owners while Door is non-ownable!",
	door_add_owners_unownable = "You can not add owners while Door is non-ownable!",
	rp_addowner_already_owns_door = "%s already owns (or is already allowed to own) this door!",
	
	-- talking
	hear_noone = "Noone can hear you %s!",
	hear_everyone = "Everyone can hear you!",
	hear_certain_persons = "Players who can hear you %s: ",
	
	whisper = "whisper",
	yell = "yell",
	advert = "[Advert]",
	radio = "radio",
	request = "(REQUEST!)",
	group = "(group)",
	
	--Notifies
	disabled = "%s is disabled! %s", 
	limit = "You have reached the %s limit!", 
	have_to_wait = "You need to wait another %d seconds before using %s!", 
	must_be_looking_at = "You need to be looking at a %s!", 
	incorrect_job = "You do not have the right job to %s", 
	unavailable = "This %s is unavailable", 
	unable = "You are unable to %s. %s", 
	cant_afford = "You can not afford this %s",
	created_x = "%s created a %s", 
	cleaned_up = "Your %s were cleaned up.",
	you_bought_x = "You have bought a %s for %s", 
	
	created_first_jailpos = "You have created the first jail position!",
	added_jailpos = "You have added one extra jail position!",
	reset_add_jailpos = "You have removed all jail positions and you have added a new one here.",
	created_spawnpos = "%s's spawn position created.",
	updated_spawnpos = "%s's spawn position updated.",
	do_not_own_ent = "You do not own this entity!",
	cannot_drop_weapon = "Can't drop this weapon!",
	team_switch = "Jobs switched successfully!",
	
	--misc
	could_not_find = "Could not find %s",
	f3tovote = "Hit F3 to vote",
	listen_up = "Listen up:", --In rp_tell
	nlr = "New Life Rule: Do Not Revenge Arrest/Kill.",
	reset_settings = "You have reset all settings!",
	must_be_x = "You must be a %s in order to be able to %s.",
	agenda_updated = "The agenda has been updated",
	job_set = "%s has set his/her job to '%s'",
	demoted = "%s has been demoted",
	demoted_not = "%s has not been demoted",
	demote_vote_started = "%s has started a vote for the demotion of %s",
	demote_vote_text = "Demotion nominee:\n%s", --s is the reason here
	lockdown_started = "The mayor has initiated a Lockdown, please return to your homes!",
	lockdown_ended = "The lockdown has ended",
	gunlicense_requested = "%s has requested %s a gun license",
	gunlicense_granted = "%s has granted %s a gun license",
	gunlicense_denied = "%s has denied %s a gun license",
	gunlicense_question_text = "Grant %s a gun license?",
	gunlicense_remove_vote_text = "%s has started a vote for the gun license removal of %s",
	gunlicense_remove_vote_text2 = "Revoke gunlicense:\n%s", --where %s is the reason
	gunlicense_removed = "%s's license has been removed!",
	gunlicense_not_removed = "%s's license has  NOT been removed!",
	vote_specify_reason = "You need to specify a reason!",
	vote_started = "The vote is created",
	vote_alone = "You have won the vote since you are alone in the server.",
	jail_punishment = "Punishment for disconnecting! Jailed for: %d seconds.",
	admin_only = "admin only!", -- when doing /addjailpos
	chief_or = "Chief or",-- when doing /addjailpos
	
	dead_in_jail = "You now are dead until your jail time is up!",
	died_in_jail = "%s has died in jail!",
	
	--lottery
	lottery_started = "There is a lottery! Participate for %s",
	lottery_entered = "You entered the lottery for %s",
	lottery_not_entered = "%s did not enter the lottery",
	lottery_noone_entered = "Noone has entered the lottery",
	lottery_won = "%s has won the lottery! He has won %s",
	
	--hungermod 
	starving = "Starving!",
	
	--F4menu 
	--Tab 1
	give_money = "Give money at the one you're looking at",
	drop_money = "Drop money",
	change_name = "Change your DarkRP name",
	go_to_sleep = "Go to sleep/wake up",
	drop_weapon = "Drop current weapon",
	buy_health = "Buy health(%s)",
	request_gunlicense = "Request gunlicense",
	demote_player_menu = "Demote a player",
	
	
	searchwarrantbutton = "Make a player wanted",
	unwarrantbutton = "Remove the wanted status from a player",
	noone_available = "Noone available",
	request_warrant = "Request a search warrant for a player",
	make_wanted = "Make someone wanted",
	make_unwanted = "Make someone unwanted",
	set_jailpos = "Set the jail position",
	add_jailpos = "Add a jail position",
	
	set_custom_job = "Set a custom job(press enter to activate)",
	
	set_agenda = "Set the agenda(press enter to activate)",
	
	initiate_lockdown = "Initiate a lockdown",
	stop_lockdown = "Stop the lockdown",
	start_lottery = "Start a lottery",
	give_license_lookingat = "Give <lookingat> a gun license",
	
	--second tab
	job_name = "Name: ",
	job_description = "Description: " ,
	job_weapons = "Weapons: ",
	
	--entities tab
	buy_a = "Buy %s: %s",
	
	--licenseweaponstab
	license_tab = [[License weapons
	
	Tick the weapons people should be able to get WITHOUT a license!
	]],
	license_tab_other_weapons = "Other weapons:",
	
	
	--Help!
	cophelp = [[Things Cops need to know
	Please don't abuse your job
	When you arrest someone they are auto transported to jail.
	They are auto let out of jail after %d seconds
	Type /warrant [Nick|SteamID|Status ID] to set a search warrant for a player.
	Type /wanted [Nick|SteamID|Status ID] to alert everyone to a wanted suspect
	Type /unwanted [Nick|SteamID|Status ID] to clear the suspect
	Type /jailpos to set the jail position
	Type /cophelp to toggle this menu, /x to close it]],
	
	mayorhelp = [[Type /warrant [Nick|SteamID|Status ID] to set a search warrant for a player.
	Type /wanted [Nick|SteamID|Status ID] to alert everyone to a wanted suspect.
	Type /unwanted [Nick|SteamID|Status ID] to clear the suspect.
	Type /lockdown to initiate a lockdown
	Type /unlockdown to end a lockdown
	Type /mayorhelp toggles this menu, /x closes it]],
	
	adminhelp = [[/enablestorm enables meteor storms
	/disablestorm Disables meteor storms
	You can change the price of weapons, jailtimer, max gangsters, ect.
	To do this press F1 then scroll down and you will see all of the console commands
	If you edit the init.lua file you can save the vars.
	/jailpos sets the jailposition!
	/setspawn <team> - Enter teamname Ex. police, mayor, gangster
	/adminhelp toggles this menu, /x closes it]],
	
	mobhelp = [[As the mob boss, you decide what you want the other Gangsters to do
	You get an Unarrest Stick which you can use to break people out of jail
	/agenda <Message> (Sets the Gangsters' agenda. Use // to go to the next line
	Type /mobbosshelp toggles this menu, /x closes it]],
	
	gangster_agenda = "Gangster's agenda",
	
	hints = 
	--English hints:
	{"Roleplay according to the Server Rules!",
	"You can be arrested for buying or owning an illegal weapon!",
	"Type /sleep to fall asleep.",
	"You may own a handgun, but use it only in self defence.",
	"All weapons can NOT shoot unless you see through the sight post!",
	"If you are a cop, do your job properly or you could get demoted.",
	"Type /buyshipment <Weapon name> to buy a shipment of weapons (e.g: /buyshipment ak47).",
	"Type /buy <Pistol name/item name> to buy a pistol, e.g: /buy glock.",
	"Type /buyammo <Ammo type> to buy ammo. Ammo types are: [rifle | shotgun | pistol]",
	"If you wish to bail a friend out of jail, go to your designated Police Department and negotiate!",
	"Press F1 to see RP help.",
	"If you get arrested, don't worry - you will be auto unarrested in a few minutes.",
	"If you are a chief or admin, type /jailpos or /addjail to set the positions of the first (and extra) jails.",
	"You will be teleported to jail if you get arrested!",
	"If you're a cop and see someone with an illegal weapon, arrest them and confiscate it.",
	"Type /sleep to fall asleep.",
	"Your money and RP name are saved by the server.",
	"Type /buyhealth to refil your health to 100%",
	"Type /buydruglab to buy a druglab. be sure you sell your drugs!",
	"Press F2 or reload with keys to open the keys menu",
	"You will be teleported to a jail if you get arrested!",
	"Type /price <Price> while looking at a druglab,  Gun Lab or a Microwave to set the customer purchase price.",
	"Type /warrant [Nick|SteamID|UserID] to get a search warrant for a player.",
	"Type /wanted or /unwanted [Nick|SteamID|UserID] to set a player as wanted/unwanted by the Police.",
	"Type /drop to drop the weapon you are holding.",
	"Type /gangster to become a Gangster.",
	"Type /mobboss to become a mob boss.",
	"Type /buymicrowave to buy a Microwave Oven that spawns food.",
	"Type /dropmoney <Amount> to drop a money amount.",
	"Type /buymoneyprinter to buy a Money Printer.",
	"Type /medic - To become a Medic.",
	"Type /gundealer - To become a Gun Dealer.",
	"Type /buygunlab - to buy a Gun Lab.",
	"Type /cook - to become a Cook.",
	"Type /cophelp to see what you need to do as a cop.",
	"Type /buyfood <Type> (e.g: /buyfood melon)",
	"Type /rpname <Name> to choose your roleplay name.",
	"Type /call <Name> to call someone!",
	}
}

//Dutch bitches!
rp_languages.dutch = {
	-- admin things
	need_admin = "Je hebt administrator toegang nodig om %s te kunnen doen",
	need_sadmin = "Je hebt superadmin toegang nodig om %s te kunnen doen",
	no_jail_pos = "Er is geen gevangenis positie!",
	invalid_x = "Ongeldig(e) %s! %s", 
	
	-- F1 menu
	get_mod = "Verkrijg DarkRP op garrysmod.org!",
	mouse_wheel_to_scroll = "Gebruik je muiswiel om te scrollen",
	
	--money things:
	customer_price = "klantenprijs: ",
	reset_money = "%s heeft iedereen zijn geld gereset!",
	has_given = "%s heeft jou %s gegeven",
	you_gave = "Jij hebt %s %s gegeven",
	npc_killpay = "%s verdiend voor het vermoorden van een NPC",
	
	payday_message = "Loon! je hebt %s verdiend!",
	payday_unemployed = "Je hebt geen salaris ontvangen omdat je werkloos bent!",
	payday_missed = "Je hebt je loon gemist! Je zit in de gevangenis!",
	
	property_tax = "BTW over je eigendom! %s",
	property_tax_cant_afford = "Je kon de belasting niet betalen, nu is je eigendom je ontnomen!",
	
	--Players
	wanted = "Gezocht!",
	youre_arrested = "Je bent gearresteerd voor %d seconden!",
	hes_arrested = "%s is gearresteerd voor %d seconden!",
	hes_unarrested = "%s is vrij uit de gevangenis!",
	health = "Levens: ",
	job = "Baan: ",
	salary = "Salaris: ",
	wallet = "portemonnee: ",
	warrant_request = "%s verzoekt een huiszoekingsbevel voor %s",
	warrant_request2 = "Uw verzoek wordt bekeken! %s!",
	warrant_approved = "Het huiszoekingsbevel is geaccepteerd! %s!",
	warrant_approved2 = "Nu kun je zijn huis doorzoeken!",
	warrant_denied = "De mayor %s heeft je huiszoekingsbevel afgewezen.",
	warrant_expired = "Het huiszoekingsbevel voor %s is verlopen!",
	wanted_by_police = "%s wordt gezocht!",
	wanted_expired = "%s wordt niet meer gezocht",
	rpname_changed = "%s heeft zijn RPname veranderd naar: %s",
	
	--teams
	need_to_be_before = "Je moet eerst een %s zijn voordat je een %s kan worden!",
	need_to_make_vote = "Je moet eerst een vote maken om %s te kunnen worden!",
	team_limit_reached = "Je kan geen %s worden omdat het limiet bereikt is.",
	wants_to_be = "%s\nwil een\n%s zijn", 
	has_not_been_made_team = "%s is geen %s geworden!",
	job_has_become = "%s is een %s geworden!",
	
	--disasters
	zombie_approaching = "PAS OP: er komen zombies aan!",
	zombie_leaving = "De zombies vertrekken!",
	zombie_spawn_not_exist = "Zombie Spawn %s bestaat niet.",
	zombie_spawn_removed = "Je hebt deze zombie spawn verwijderd",
	zombie_spawn_added = "Je hebt een zombie spawn toegevoegd.",
	zombie_maxset = "Het maximaal aantal zombies is nu %s",
	zombie_enabled = "Zombies zijn nu aangezet.",
	zombie_disabled = "Zombies zijn nu uitgeschakeld.",
	meteor_approaching = "PAS OP: er komen meteoren aan!",
	meteor_passing = "Het gevaar voor meteoren is geweken.",
	meteor_enabled = "Meteoor stormen zijn nu aangezet",
	meteor_disabled = "Meteoor stormen zijn nu uitgeschakeld",
	earthquake_report = "Aardbeving gemeten met een kracht van %sMw",
	earthtremor_report = "Lichte aardbeving gemeten met een kracht van %sMw",
	
	--keys, vehicles and doors
	keys_allowed_to_coown = "Jij mag mede-eigenaar zijn\n(Druk op reload met de keys of druk op F2 om mede-eigenaar te zijn\n",
	keys_other_allowed = "%s mag mede-eigenaar zijn\n",
	keys_allow_ownership = "(Druk op reload met de keys of druk op F2 om eigenaarschap toe te staan",
	keys_disallow_ownership = "(Druk op reload met de keys of druk op F2 om eigenaarschap niet toe te staan",
	keys_owned_by = "Eigenaar: ",
	keys_cops_and_mayor = "De politie en de mayor.",
	keys_unowned = "Geen eigenaar\n(Druk op reload met de keys of druk op F2 om eigenaar te worden)",
	keys_everyone = "(Druk op reload met de keys of druk op F2 om deze deur voor iedereen te maken",
	keys_cops = "(Druk op reload met de keys of druk op F2 om het politie en mayor only te maken",
	door_unown_arrested = "Je kan geen dingen kopen als je gearresteerd bent.",
	door_unownable = "Deze deur mag geen eigenaar hebben",
	door_sold = "Je hebt dit voor %s verkocht!",
	door_already_owned = "Deze deur heeft al een eigenaar!",
	door_cannot_afford = "Je kan deze deur niet betalen!",
	vehicle_cannot_afford = "Je kan dit vehikel niet betalen!",
	door_bought = "Je hebt deze deur gekocht voor %s!",
	vehicle_bought = "Je hebt dit vehikel gekocht voor %s",
	door_need_to_own = "Je moet eigenaar van de deur zijn om %s te kunnen doen",
	door_rem_owners_unownable = "Je kan geen eigenaren verwijderen terwijl de deur geen eigenaren mag hebben!",
	door_add_owners_unownable = "Je kan geen eigenaren toevoegen terwijl de deur geen eigenaren mag hebben!",
	rp_addowner_already_owns_door = "%s is al (mede) eigenaar van deze deur!",
	
	-- talking
	hear_noone = "Niemand hoort je %s!",
	hear_everyone = "Iedereen kan je horen!",
	hear_certain_persons = "Mensen die je horen %s: ",
	
	whisper = "fluisteren",
	yell = "schreeuwen",
	advert = "[Advertentie]",
	radio = "radio",
	request = "(112!)",
	group = "(groep)",
	
	--Notifies
	disabled = "%s is uitgeschakeld! %s", 
	limit = "Je hebt het %s limit bereikt!", 
	have_to_wait = "Je moet %d seconden wachten voordat je weer %s kan doen!", 
	must_be_looking_at = "Je moet naar een %s staan kijken!", 
	incorrect_job = "Je hebt niet de goede baan om %s te kunnen doen!", 
	unavailable = "Deze %s is niet beschikbaar", 
	unable = "Je kan %s niet doen. %s", 
	cant_afford = "Je kan %s niet betalen!",
	created_x = "%s heeft een %s gemaakt", 
	cleaned_up = "Jouw %ss zijn verwijderd.",
	you_bought_x = "Je hebt een %s voor %s gekocht!", 
	
	created_first_jailpos = "Je hebt de eerste gevangenispositie gecre�erd",
	added_jailpos = "Je hebt een extra gevangenispositie toegevoegd!",
	reset_add_jailpos = "Je hebt alle gevangenisposities verwijderd en een nieuwe toegevoegd!",
	created_spawnpos = "Spawn positie van %s is aangemaakt!",
	updated_spawnpos = "Spawn positie van %s is ge�pdate!",
	do_not_own_ent = "Je bent niet de eigenaar van dit object!",
	cannot_drop_weapon = "Kan dit wapen niet laten vallen!",
	team_switch = "Banen succesvol gewisseld!",
	
	--misc
	could_not_find = "Kan %s niet vinden",
	f3tovote = "Druk op F3 te stemmen",
	listen_up = "Let op:", --In rp_tell
	nlr = "New Life Rule: Als je gedood wordt mag je je dood niet wreken of de dader arresteren.",
	reset_settings = "Je hebt alle instellingen gereset.",
	must_be_x = "Je moet eerst een %s zijn om een %s te kunnen worden.",
	agenda_updated = "De agenda is vernieuwd",
	job_set = "%s heeft zijn baan naar '%s' veranderd!",
	demoted = "%s is ontslagen!",
	demoted_not = "%s is niet ontslagen",
	demote_vote_started = "%s is een referendum gestart voor het ontslag van %s",
	demote_vote_text = "Ontslagene:\n%s", --s is the reason here
	lockdown_started = "De mayor heeft een Lockdown gestart, blijf alstublieft binnen!",
	lockdown_ended = "De lockdown is ge�indigd!",
	gunlicense_requested = "%s verzoekt een %s gun license",
	gunlicense_granted = "%s heeft %s een gun license gegeven",
	gunlicense_denied = "%s heeft de gun license van %s afgewezen",
	gunlicense_question_text = "%s een gun license geven?",
	gunlicense_remove_vote_text = "%s heeft een referendum geplaatst voor het afnemen van de license van %s",
	gunlicense_remove_vote_text2 = "gun license afnemen?:\n%s", --where %s is the reason
	gunlicense_removed = "Gun license van %s is afgenomen!",
	gunlicense_not_removed = "Gun license van %s is NIET afgenomen!",
	vote_specify_reason = "Je moet een rede invoeren!",
	vote_started = "Het referendum is geplaatst!",
	vote_alone = "Je hebt het referendum gewonnen omdat je in je uppie zit.",
	jail_punishment = "Straf omdat je hem gepeert bent! In de gevangenis voor: %d seconden!",
	admin_only = "administrator only!", -- when doing /addjailpos
	chief_or = "Chief of",-- when doing /addjailpos
	
	dead_in_jail = "Je bent nu dood totdat je uit de gevangenis mag!",
	died_in_jail = "%s is in de gevangenis gestorven",
	
	--lottery
	lottery_started = "Er is een loterij! Doe mee voor %s!",
	lottery_entered = "Je doet mee aan de loterij voor %s",
	lottery_not_entered = "Je doet NIET mee aan de loterij!",
	lottery_noone_entered = "Niemand doet mee aan de loterij!",
	lottery_won = "%s heeft de loterij gewonnen! hij heeft %s gewonnen!",
	
	--hungermod 
	starving = "Uitgehongerd!",
	
	--F4menu 
	--Tab 1
	give_money = "Geef geld aan de persoon naar wie je kijkt",
	drop_money = "laat geld vallen",
	change_name = "Verander je RPName",
	go_to_sleep = "Ga slapen/word wakker",
	drop_weapon = "Laat huidige wapen vallen",
	buy_health = "Koop levens(%s)",
	request_gunlicense = "Verzoek gun license",
	demote_player_menu = "Referendum voor ontslag speler",
	
	
	searchwarrantbutton = "Verkrijg een huiszoekingsbevel",
	unwarrantbutton = "Laat een huiszoekingsbevel verlopen",
	noone_available = "Er is niemand!",
	request_warrant = "Verzoek een huiszoekingsbevel voor een speler",
	make_wanted = "Maak iemand gezocht",
	make_unwanted = "Zorg dat iemand niet meer gezocht wordt",
	set_jailpos = "Maak de gevangenispositie",
	add_jailpos = "Voeg een gevangenispositie toe",
	
	set_custom_job = "Verander je baan",
	
	set_agenda = "Verander de agenda",
	
	initiate_lockdown = "Begin een lockdown",
	stop_lockdown = "Eindig de lockdown",
	start_lottery = "Start a loterij",
	give_license_lookingat = "Geef een gun license",
	
	--second tab
	job_name = "Naam: ",
	job_description = "Beschrijving: " ,
	job_weapons = "Wapens: ",
	
	--entities tab
	buy_a = "Koop %s: %s",
	
	--licenseweaponstab
	license_tab = [[Licentie wapens
	
	Tik de wapens aan waar mensen g��n gun license voor nodig hebben
	]],
	license_tab_other_weapons = "Andere wapens:",
	
	
	--Help!
	cophelp = [[Dingen die de politie moet weten:
	Maak geen misbruik van je baan
	Als je iemand arresteerd teleporteert hij naar de gevangenis
	Ze komen daar weer uit na %d seconden
	Typ /warrant [Nick|SteamID|Status ID] om een huiszoekingsbevel te verzoeken/krijgen
	Typ /wanted [Nick|SteamID|Status ID] om iemand gezocht te maken
	Typ /unwanted [Nick|SteamID|Status ID] om iemand niet meer gezocht te maken
	Typ /jailpos om de jail positie te zetten
	Typ /cophelp om dit menu tevoorschijn te halen, /x om het te sluiten]],
	
	mayorhelp = [[Typ /warrant [Nick|SteamID|Status ID] om een huiszoekingsbevel te krijgen
	Typ /wanted [Nick|SteamID|Status ID] om iemand gezocht te maken
	Typ /unwanted [Nick|SteamID|Status ID] om iemand niet meer gezocht te maken
	Typ /lockdown om een lockdown te beginnen
	Typ /unlockdown om een lockdown te eindigen
	Typ /mayorhelp om dit menu tevoorschijn te halen, /x om het te sluiten]],
	
	adminhelp = [[/enablestorm zet meteoor stormen aan
	/disablestorm zet meteoor stormen uit
	Je kan de wapenprijzen, de jailtimer en de maximalen van dingen veranderen
	om dit te doen druk je F1 en scroll je naar beneden en je zult alle commandos zien
	/jailpos zet de gevangenispositie!
	/setspawn <team> - om een spawnpositie van een bepaalde baan te zetten
	Typ /adminhelp om dit menu tevoorschijn te halen, /x om het te sluiten]],
	
	mobhelp = [[De mob boss bepaalt wat andere gangsters doen
	met de unarrest stick kun je anderen uit de gevangenis bevrijden
	/agenda <bericht> (verandert de gangster agenda. Gebruik // of \n om naar de volgende lijn te gaan
	Typ /mobboss help om dit menu tevoorschijn te halen, /x om het te sluiten]],
	
	gangster_agenda = "Gangster agenda",
	
	hints = 
	--English hints:
	{"Speel volgens de regels!",
	"Je kan gearresteerd worden voor een illegaal wapen!",
	"Zeg /sleep om te slapen.",
	"Je mag een pistool hebben, maar alleen ter zelfverdediging",
	"Je moet wel door het vizier kijken om te schieten",
	"Als je politie bent, doe je baan dan goed of je wordt ontslagen!",
	"Typ /buyshipment <Wapen name> om een shipment te kopen",
	"Typ /buy <Pistool naam/item naam> om een pistool te kopen, b.v.: /buy glock.",
	"Typ /buyammo <Ammo type> om ammo te kopen. Ammo types zijn: [rifle | shotgun | pistol]",
	"Als je iemand uit de gevangenis wil hebben, ga naar het lokale politiebureau en bespreek het met de politie.",
	"Druk op F1 voor hulp",
	"Als je gearresteerd wordt, kom je vrij na een aantal minuten",
	"Als je chief of admin bent, typ /jailpos of /addjail om gevangenisposities neer te zetten",
	"You will be teleported to jail if you get arrested!",
	"Arresteer mensen met illegale mensen als je politie bent.",
	"Je geld en naam zijn door de server opgeslagen",
	"Typ /buyhealth voor levens",
	"Typ /buydruglab voor een drugs lab, verkoop je drugs!",--
	"Druk op F2 of reload met de keys om het keys menu te openen",
	"Als je gearresteerd wordt, ga je naar de gevangenis!",
	"Typ /price <Prijs> als je naar een druglab, Gun Lab of een Microwave kijkt om de prijs te veranderen", 
	"Typ /warrant [Nick|SteamID|UserID] om een huiszoekingsbevel te verkrijgen",
	"Typ /wanted or /unwanted [Nick|SteamID|UserID] om iemand gezocht te maken",
	"Typ /drop om je huidige wapen te laten vallen.",
	"Typ /gangster om een gangster te worden",
	"Typ /mobboss om een mob boss te worden.",
	"Typ /buymicrowave om een Microwave Oven die voedsel maakt.",
	"Typ /dropmoney <nummer> om geld te laten vallen.",
	"Typ /buymoneyprinter om een money printer te kopen.",
	"Typ /medic - om een doctor te worden.",
	"Typ /gundealer - om gundealer te worden.",
	"Typ /buygunlab - om een gunlab te kopen", 
	"Typ /cook - om een cook te worden.",
	"Typ /cophelp om te zien wat je moet doen als je politie bent",
	"Typ /buyfood <Type> (b.v: /buyfood melon)",
	"Typ /rpname <Name> om je RPname te veranderen.",
	"Typ /call <Naam> om iemand te bellen!"
	}
}

	-- Danish Language by  WoRmS
rp_languages.danish = {
	-- admin things
	need_admin = "Du har brug for admin rettigheder for at kunne v�re i stand til at %s",
	need_sadmin = "Du har brug for super admin rettigheder for at kunne v�re i stand til at %s",
	no_jail_pos = "Ingen f�ngsel position",
	invalid_x = "Ugyldig %s! %s",

	-- F1 menu
	get_mod = "F� denne mod p� garrysmod.org!",
	mouse_wheel_to_scroll = "Brug musehjulet til at pladra",

	--money things:
	customer_price = "Kunde pris: ",
	reset_money = "%s har nulstille alle spillerens penge!",
	has_given = "%s har givet dig %s",
	you_gave = "Du gav %s %s",
	npc_killpay = "%s For a dr�be en NPC!",

	payday_message = "Betalings dag! Du har modtaget %s!",
	payday_unemployed = "Du har ikke modtaget l�n, fordi du er arbejdsl�s!",
	payday_missed = "Du er g�et glip af Betalings dag (du er arresteret)",

	property_tax = "Ejendomsskat! %s",
	property_tax_cant_afford = "Du kunne ikke betale skat! Din ejendom er blevet taget fra dig!",

	--Players
	wanted = "Efters�gt af politiet!",
	youre_arrested = "Du er blevet arresteret for %d sekunder!",
	hes_arrested = "%s er blevet arresteret for %d sekunder!",
	hes_unarrested = "%s er blevet l�sladt fra f�ngslet!",
	health = "Helbred: ",
	job = "Job: ",
	salary = "L�n: ",
	wallet = "Pung: ",
	warrant_request = "%s anmoder om en ransagningskendelse til %s",
	warrant_request2 = "ransagningskendelse anmodning sendt til borgmester %s!",
	warrant_approved = "Search warrant approved for %s!",
	warrant_approved2 = "Du er nu i stand til at s�ge hans hus.",
	warrant_denied = "Borgmester %s har n�gtet din ransagningskendelse anmodning.",
	warrant_expired = "Den ransagningskendelse for %s er udl�bet!",
	wanted_by_police = "%s er efters�gt af politiet!",
	wanted_expired = "%s er ikke l�ngere efters�gt af politiet.",
	rpname_changed = "%s har �ndret hans RPnavn til: %s",

	--teams
	need_to_be_before = "Du skal v�re %s f�rste med henblik p� at kunne blive %s",
	need_to_make_vote = "Du er n�dt til at foretage en afstemning om at blive en %s!",
	team_limit_reached = "Kan ikke blive %s efter som gr�nsen er n�et",
	wants_to_be = "%s\n�nsker at v�re\n%s",
	has_not_been_made_team = "%s er ikke blevet gjort %s!",
	job_has_become = "%s blevet gjort til en %s!",

	--disasters
	zombie_approaching = "ADVARSEL: Zombierne n�rmer sig!",
	zombie_leaving = "Zombierne forlader.",
	zombie_spawn_not_exist = "Zombie Spawn %s eksisterer ikke.",
	zombie_spawn_removed = "Du har fjernet denne zombie Spawn.",
	zombie_spawn_added = "Du har Tilf�jet en zombie spawn.",
	zombie_maxset = "Maksimale Antal af zombier er nu sat til %s",
	zombie_enabled = "Zombier er nu aktiveret.",
	zombie_disabled = "Zombier er nu deaktiveret.",
	meteor_approaching = "ADVARSEL: Meteor storm n�rmer sig!",
	meteor_passing = "Meteor stormen er over",
	meteor_enabled = "Meteor storm er nu aktiveret.",
	meteor_disabled = "Meteor storm er nu aktiveret.",
	earthquake_report = "Jordsk�lv rapporteret st�rrelsesorden %SMW",
	earthtremor_report = "Jordsk�lv rapporteret st�rrelsesorden %SMW",

	--keys, vehicles and doors
	keys_allowed_to_coown = "Du har lov til at co-ejer denne \n (Tryk p� Genlad med n�gler eller trykke p� F2 for at co-eget) \n",
	keys_other_allowed = "%s f�r lov til at co-ejer dette \n",
	keys_allow_ownership = "(Tryk p� Genlad med n�gler eller trykke p� F2 for at give ejerskab)",
	keys_disallow_ownership = "(Tryk p� Genlad med n�gler eller trykke p� F2 for at tag ejerskab)",
	keys_owned_by = "Ejet af: ",
	keys_cops_and_mayor = "Alle Politi betjente og borgmesteren",
	keys_unowned = "Uejet \n (Tryk p� Opdater med n�gler eller trykke p� F2 for at eje)",
	keys_everyone = "(Tryk p� Genlad med n�gler eller trykke p� F2 for at g�re det muligt for alle)",
	keys_cops = "(Tryk p� Genlad med n�gler eller trykke p� F2 for at indstille til politiet, og borgmester kun)",
	door_unown_arrested = "Du kan ikke eje eller ueje ting, mens du er anholdt!",
	door_unownable = "Denne d�r kan ikke ejes eller Uejes!",
	door_sold = "Du har solgt denne d�r for %s",
	door_already_owned = "Denne d�r er allerede ejet af en person!",
	door_cannot_afford = "Du har ikke r�d til denne d�r!",
	vehicle_cannot_afford = "Du har ikke r�d til denne bil!",
	door_bought = "Du har k�bt denne d�r for %s",
	vehicle_bought = "Du har k�bt dette k�ret�j for %s",
	door_need_to_own = "Du er n�dt til at eje denne d�r for at v�re i stand til at %s",
	door_rem_owners_unownable = "Du kan ikke fjerne ejerne, mens Door er ikke-ownable!",
	door_add_owners_unownable = "Du kan ikke tilf�je ejere, mens Door er ikke-ownable!",
	rp_addowner_already_owns_door = " %s allerede ejer (eller allerede er tilladt at eje) denne d�r!",

	-- talking
	hear_noone = "Ingen kan h�re dig %s!",
	hear_everyone = "Alle kan h�re dig!",
	hear_certain_persons = "Spillere, der kan h�re dig %s:",
	whisper = "hviske",
	yell = "r�be",
	advert = "[Annonce]",
	radio = "radio",
	request = "(Anmod!)",
	group = "(gruppe)",

	--Notifies
	disabled = "%s er sl�et fra !%s",
	limit = "Du har n�et %s gr�nse!",
	have_to_wait = "Du er n�dt til at vente endnu %d sekunder, f�r du kan bruger %s!",
	must_be_looking_at = "Du skal se p� en %s!",
	incorrect_job = "Du har ikke det rigtige job til %s",
	unavailable = "Denne %s er ikke tilg�ngelig",
	unable = "Du er ude af stand til %s.%s",
	cant_afford = "Du har ikke r�d til den %s",
	created_x = "%s Skabte en %s",
	cleaned_up = "Din %s er blevet renset.",
	you_bought_x = "Du har k�bt en %s for %s",

	created_first_jailpos = "Du har skabt den f�rste f�ngsel position!",
	added_jailpos = "Du har tilf�jet en ekstra f�ngsel position!",
	reset_add_jailpos = "Du har fjernet alle f�ngsel positioner og du har tilf�jet en ny her.",
	created_spawnpos = "%s's spawn position Skabt.",
	updated_spawnpos = "%s's spawn position updatered.",
	do_not_own_ent = "Du ejer ikke denne enhed!",
	cannot_drop_weapon = "Kan ikke smide dette v�ben!!",
	team_switch = "Jobskift fuldf�rt!",

	--misc
	could_not_find = "Kunne ikke finde %s",
	f3tovote = "Tryk p� F3 for at stemme",
	listen_up = "H�r her:", --In rp_tell
	nlr = "Nyt Liv Regel: ikke h�vn ved at anholdele/Dr�be.",
	reset_settings = "Du har nulstille alle indstillinger!",
	must_be_x = "You must be a %s in order to be able to %s.",
	agenda_updated = "mafiabossen har opdateret dagsordenen",
	job_set = "%s har sat sit job til '%s'",
	demoted = "%s er blevet degraderet",
	demoted_not = "%s er ikke blevet degraderet",
	demote_vote_started = "%s har startet en afstemning for degraderingen af %s",
	demote_vote_text = "Degradering kandidat:\n%s", --s is the reason here
	lockdown_started = "Borgmesteren har indledt en nedl�sning, du bedes du vende tilbage til dit hjem!!",
	lockdown_ended = "nedl�sning er overst�et",
	gunlicense_requested = "%s har anmodet %s en pistol licens",
	gunlicense_granted = "%s har modtaget %s en pistol licens",
	gunlicense_denied = "%s har n�gtet %s en pistol licens",
	gunlicense_question_text = "Giv %s en pistol licens?",
	gunlicense_remove_vote_text = "%s har startet en afstemning for pistol licens fjernelse af %s",
	gunlicense_remove_vote_text2 = "Tilbagekald v�ben licens:\n%s", --where %s is the reason
	gunlicense_removed = "%s's licens er blivet fjernet!",
	gunlicense_not_removed = "%s's licens er ikke blevet fjernet!!",
	vote_specify_reason = "Du skal angive en grund!",
	vote_started = "Afstemningen er skabt",
	vote_alone = "Du har vundet afstemningen, da du er alene i serveren.",
	jail_punishment = "straf for at forlade serveren! f�ngslet for:%d sekunder.",
	admin_only = "admin kun!!", -- when doing /addjailpos
	chief_or = "Chief eller",-- when doing /addjailpos

	dead_in_jail = "Du nu er d�de, indtil din f�ngsel tid er forbi!",
	died_in_jail = "%s er d�de i f�ngsel!!",

	--lottery
	lottery_started = "Der er et lotteri! Deltage for %s",
	lottery_entered = "Du har indtastet i lotteriet for %s",
	lottery_not_entered = "%s deltog ikke i lotteriet",
	lottery_noone_entered = "Ingen har deltaget i lotteriet",
	lottery_won = "%s har vundet i lotteriet! Han har vundet %s",

	--hungermod
	starving = "Sulter!",

	--F4menu
	--Tab 1
	give_money = "Giv penge p� den du kigger p�",
	drop_money = "Smid penge",
	change_name = "Skift dit DarkRP navn",
	go_to_sleep = "fald i s�vn / v�gne op",
	drop_weapon = "Smid nuv�rende v�ben",
	buy_health = "K�b Helbred (% s)",
	request_gunlicense = "Anmodning gunlicense",
	demote_player_menu = "degradering af en spiller",


	searchwarrantbutton = "F� en ransagningskendelse for en spiller",
	unwarrantbutton = "Fjern ransagningskendelse for en spiller",
	noone_available = "Ingen tilg�ngelige",
	request_warrant = "Anmod om en ransagningskendelse for en spiller",
	make_wanted = "g�r nogen efters�gt",
	make_unwanted = "g�r nogen uefters�gt",
	set_jailpos = "set f�ngsel position",
	add_jailpos = "Tilf�j et f�ngsel position",
	set_custom_job = "S�t en brugerdefineret job (tryk enter for at aktivere)",

	set_agenda = "S�t dagsordenen (tryk enter for at aktivere)",

	initiate_lockdown = "start en nedl�sning",
	stop_lockdown = "Stop en nedl�sning",
	start_lottery = "Start et lotteri",
	give_license_lookingat = "Giv <Kiggerp�> en pistol licens",

	--second tab
	job_name = "Navn: ",
	job_description = "Beskrivelse: " ,
	job_weapons = "v�ben: ",

	--entities tab
	buy_a = "K�b %s: %s",

	--licenseweaponstab
	license_tab = [[License v�ben

	S�t kryds ud for v�ben folk b�r v�re i stand til at komme uden en licens!
	]],
	license_tab_other_weapons = "Andre v�ben:",


	--Help!
	cophelp = [[Ting, Betjente skal vide
	V�r venlig ikke at misbruge dit job
	N�r du anholde en person, de er automatisk transporteret til f�ngsel.
	De er automatisk l�sladt fra f�ngslet efter %d sekunder
	Skriv /warrant [Nick|SteamID|Status ID] for at lave en ransagningskendelse for en spiller.
	Skriv /wanted [Nick|SteamID|Status ID] til at advare alle om en efters�gt mist�nkt
	Skriv /unwanted [Nick|SteamID|Status ID] for at Rense en mist�nkte.
	Skriv /jailpos For at s�tte F�ngsels Position
	Skriv /cophelp �bner/lukker denne menu, /x lukker den]],

	mayorhelp = [[Type /warrant [Nick|SteamID|Status ID] for at lave en ransagningskendelse for en spiller.
	Skriv /wanted [Nick|SteamID|Status ID] til at advare alle om en efters�gt mist�nkt
	Skriv /unwanted [Nick|SteamID|Status ID] for at Rense en mist�nkte.
	Skriv /lockdown for at indlede en Nedl�sning
	Skriv /unlockdown for at afslutte en Nedl�sning
	Skriv /mayorhelp �bner/lukker denne menu, /x lukker den]],

	adminhelp = [[/enablestorm Aktiver meteor storm
	/disablestorm Deaktiver meteor storm
	Du kan �ndre prisen for v�ben, f�ngslestid, max gangstere, ect.
	For at g�re dette skal du trykke p� F1 rul derefter ned og du vil se alle de konsol kommandoer
	Hvis du redigerer init.lua fil, du kan gemme vars.
	Skriv /jailpos s�tter F�ngsels Position
	Skriv /setspawn <team> - Indtast Hold navn Ex. politi, borgmester, gangster
	Skriv /adminhelp �bner/lukker denne menu, /x lukker den]],

	mobhelp = [[Som mafiabossen, beslutter du, hvad du �nsker, at andre gangstere skal g�re.
	Du f�r en Unarrest Stick, som du kan bruge til at bryde folk ud af f�ngsel
	/agenda <Besked> (S�tter Gangsters 'dagsorden. Brug / / for at g� til den n�ste linje
	Type /mobbosshelp toggles this menu, /x closes it]],

	gangster_agenda = "Gangster's dagsorden",

	hints =
	--English hints:
	{"Rolespil if�lge Servern's Regler!",
	"du kan blive anholdt for at k�be eller eje en ulovlig v�ben!",
	"Type /sleep for at falde i s�vn.",
	"Du kan eje en pistol, men brug det kun i selvforsvar.",
	"Alle v�ben kan ikke skyde medmindre du se gennem synet post",
	"Hvis du er en Politi betjent, g�r dit arbejde ordentligt, eller du kunne blive degraderet.",
	"Skriv /buyshipment <V�ben navn> for at k�be en Pakke af v�ben (f.eks: /buyshipment AK47).",
	"Skriv /buy <Pistol navn/ting's navn> for at k�be en pistol, fx: /buy glock.",
	"Skriv /buyammo <Ammunitions type> for at k�be ammunition. Ammo typer er: [riffel | shotgun | pistol]", 
	"Hvis du �nsker at Betale en ven ud af f�ngslet, skal du g� til din udpeget Politi Station og forhandle!",
	"Tryk p� F1 for at se RP hj�lpe.",
	"Hvis du bliver arresteret, s� fortvivl ikke - du vil blive unarrested om f� minutter",
	"Hvis du er chef eller admin, skrive /jailpos eller /addjail for at indstille Position af den f�rste (og ekstra) f�ngsler.",
	"Du vil blive teleporteret til f�ngsel, hvis man bliver arresteret!",
	"Hvis du er en Politi betjent og se en person med et ulovligt v�ben, arrestere ham og konfiskere den.",
	"Type /sleep for at falde i s�vn.",
	"Dine penge og RP navn er gemt af serveren.",
	"Type /buyhealth til at f�r upfyldt dit helbred til 100%",
	"Type /buydruglab at k�be en druglab. V�re sikker p� at du s�lger din Stuffer!",
	"Tryk F2 eller Genlad med n�gler for at �bne n�gle menuen",
	"Du vil blive teleporteret til et f�ngsel, hvis man bliver arresteret!",
	"Type /Price <Price> mens du ser p� en druglab, Gun Lab eller en mikroovn for at s�tte kunden k�bsprisen.",
	"Type /warrant [Nick | SteamID | UserID] for at lave en ransagningskendelse for en spiller.",
	"Type /wanted eller /unwanted [Nick | SteamID | UserID] for at g�r en spiller �nsket/u�nsket af politiet.",
	"Type /drop For at smide det v�ben du har.",
	"Type /gangster For at blive en gangster.",
	"Type /mobboss For at blive en mafiaboss.",
	"Type /buymicrowave For at k�be en mikrob�lgeovn, der varmer mad.",
	"Type /dropmoney <Amount> at smide et bestemt penge-bel�b.",
	"Type /buymoneyprinter at k�be en Penge printer.",
	"Type /medic - For at  blive en l�ge.",
	"Type /gundealer - For at blive en V�ben s�lger.",
	"Type /buygunlab - For at k�be et Gun Lab.",
	"Type /cook - For at blive en Cook.",
	"Type /cophelp at se, hvad du skal g�re som en betjent.",
	"Type /buyfood <type> (e.g: / buyfood melon)",
	"Type /rpname <navn> for at v�lge dit rollespil navn.",
	"Type /call <navn> for at ringe til nogen!",
	}
}

// Swedish language, by Donkie
rp_languages.swedish = {
	-- admin things
	need_admin = "Du m�ste vara admin f�r att g�ra %s",
	need_sadmin = "Du m�ste vara superadmin f�r att g�ra %s",
	no_jail_pos = "Finns ingen jail position",
	invalid_x = "Inte godk�nd %s! %s", 
	
	-- F1 menu
	get_mod = "H�mta modden p� garrysmod.org!",
	mouse_wheel_to_scroll = "Anv�nd mushjulet f�r att skrolla",
	
	--money things:
	customer_price = "Kundens pris: ",
	reset_money = "%s har resetat alla spelares pengar!",
	has_given = "%s har gett dig %s",
	you_gave = "Du har gett %s %s",
	npc_killpay = "%s f�r att du d�dade en NPC!",
	
	payday_message = "L�ndag! Du har f�tt %s!",
	payday_unemployed = "Du har inte f�tt n�gon l�n f�r du har inget jobb!",
	payday_missed = "L�ndag missad! (Du �r arresterad)",
	
	property_tax = "Hus/L�genhet r�kning! %s",
	property_tax_cant_afford = "Du kunde inte betala r�kningarna! Ditt hus/l�genhet har blivit tagen!",
	
	--Players
	wanted = "Efterlyst av polisen!",
	youre_arrested = "%s har blivit arresterad i %d sekunder!",
	hes_arrested = "%s har blivit arresterad i %d sekunder!",
	hes_unarrested = "%s har blivit frisl�ppt fr�n f�ngelset",
	health = "Liv: ",
	job = "Jobb: ",
	salary = "L�n: ",
	wallet = "Pl�nbok: ",
	warrant_request = "%s beg�r en husrannsakan f�r %s",
	warrant_request2 = "Husrannsakan befr�gan s�nd till borgm�staren %s!",
	warrant_approved = "Husrannsakan godk�nd f�r %s!",
	warrant_approved2 = "Du kan nu s�ka igenom hans hus/l�genhet",
	warrant_denied = "Borgm�star %s har ej beviljat din husrannsakan befr�gan.",
	warrant_expired = "Husrannsakan f�r %s har g�tt ut!",
	wanted_by_police = "%s �r efterlyst av polisen!",
	wanted_expired = "%s �r inte l�ngre efterlyst av polisen.",
	rpname_changed = "%s har �ndrat sitt RPNamn till: %s",
	
	--teams
	need_to_be_before = "Du m�ste vara %s f�rst f�r att kunna bli %s",
	need_to_make_vote = "Du m�ste r�sta f�r att kunna bli en %s!",
	team_limit_reached = "Du kan inte bli %s f�r gr�nsen �r redan n�dd.",
	wants_to_be = "%s vill vara %s", 
	has_not_been_made_team = "%s har inte blivit %s!",
	job_has_become = "%s har blivit %s!",
	
	--disasters
	zombie_approaching = "Varning: Zombies har kommit!",
	zombie_leaving = "Zombies b�rjar l�mna.",
	zombie_spawn_not_exist = "Zombie spawnen %s finns inte.",
	zombie_spawn_removed = "Du har tagit bort den h�r zombie spawnen.",
	zombie_spawn_added = "Du har lagt dit en ny zombie spawn.",
	zombie_maxset = "Max antalet zombiesar har nu �ndrats till %s",
	zombie_enabled = "Zombies �r nu aktiverade.",
	zombie_disabled = "Zombies �r nu deaktiverade.",
	meteor_approaching = "Varning: Meteor storm har b�rjat komma!",
	meteor_passing = "Meteor stormen b�rjar f�rsvinna.",
	meteor_enabled = "Meteor Stormar �r nu aktiverat.",
	meteor_disabled = "Meteor Storms �r nu deaktiverade.",
	earthquake_report = "Jordb�vningen blev en jordb�vning p� skala %sMw",
	earthtremor_report = "Jordb�vningen blev en jordb�vning p� skala %sMw",
	
	--keys, vehicles and doors
	keys_allowed_to_coown = "Du �r till�ten att co-�ga den h�r d�rren.\n(Tryck reload/ladda knappen eller F2 f�r att �ppna menyn)\n",
	keys_other_allowed = "%s �r till�ten att co-�ga den h�r.\n",
	keys_allow_ownership = "(Tryck reload/ladda knappen eller F2 f�r att godk�nna co-�gande)",
	keys_disallow_ownership = "(Tryck reload/ladda knappen eller F2 f�r att inte godk�nna co-�gande)",
	keys_owned_by = "�gd av: ",
	keys_cops_and_mayor = "Alla poliser och borgm�staren",
	keys_unowned = "Inte �gd\n(Tryck reload/ladda knappen eller F2 f�r att �ga den).",
	keys_everyone = "(Tryck reload/ladda knappen eller F2 f�r att till�ta d�rren till alla)",
	keys_cops = "(Tryck reload/ladda knappen eller F2 f�r att s�tta p� poliser och borgm�stare endast.)",
	door_unown_arrested = "Du kan inte �ga eller o-�ga saker n�r du �r arresterad!",
	door_unownable = "Den h�r d�rren kan inte bli �gd eller o-�gd!",
	door_sold = "Du har s�lt den h�r d�rren f�r %s",
	door_already_owned = "Den h�r d�rren �r redan �gd av n�gon!",
	door_cannot_afford = "Du �r f�r fattig f�r att betala f�r den h�r d�rren!",
	vehicle_cannot_afford = "Du �r f�r fattig f�r att betala f�r det h�r fordonet!",
	door_bought = "Du har k�pt den h�r d�rren f�r %s",
	vehicle_bought = "Du har k�pt det h�r fordonet f�r %s",
	door_need_to_own = "Du m�ste �ga den h�r d�rren f�r att kunna g�ra %s",
	door_rem_owners_unownable = "Du kan inte tabort �gare om d�rren �r till�ten f�r alla!",
	door_add_owners_unownable = "Du kan inte l�gga till �gare om d�rren �r till�ten f�r alla!",
	rp_addowner_already_owns_door = "%s �ger redan (eller �r redan till�ten att �ga) den h�r d�rren!",
	
	-- talking
	hear_noone = "Ingen kan h�ra dig %s!",
	hear_everyone = "Alla kan h�ra dig!",
	hear_certain_persons = "Spelare som kan h�ra dig %s: ",
	
	whisper = "viska",
	yell = "skrika",
	advert = "[Annons]",
	radio = "radio",
	request = "(Beg�ran!)",
	group = "(grupp)",
	
	--Notifies
	disabled = "%s �r avaktiverad! %s", 
	limit = "Du har n�tt %s gr�ns!", 
	have_to_wait = "Du m�ste v�nta yttligare %d sekunder innan du kan anv�nda %s!", 
	must_be_looking_at = "Du m�ste titta p� en %s!", 
	incorrect_job = "Du har inte det r�tta jobbet f�r att %s", 
	unavailable = "%s �r inte tillg�nglig", 
	unable = "Du kan inte g�ra %s. %s", 
	cant_afford = "Du har inte r�d att k�pa %s",
	created_x = "%s har gjort en %s", 
	cleaned_up = "Dina %s har blivit raderade.",
	you_bought_x = "Du har k�pt en %s f�r %s", 
	
	created_first_jailpos = "Du har gjort f�rsta f�ngelse positionen!",
	added_jailpos = "Du har lagt till en till f�ngelse position!",
	reset_add_jailpos = "Du har tagit bort all f�ngelse positioner och lagt till en ny h�r.",
	created_spawnpos = "%s's spawn position gjort.",
	updated_spawnpos = "%s's spawn position updaterad.",
	do_not_own_ent = "Du �ger inte den h�r entityn!",
	cannot_drop_weapon = "Du kan inte sl�ppa det h�r vapnet!",
	team_switch = "Jobbbyte utf�rt!",
	
	--misc
	could_not_find = "Kunde inte hitta %s",
	f3tovote = "Tryck F3 f�r att r�sta",
	listen_up = "Lyssna:", --In rp_tell
	nlr = "New Life Rule: G�r inte ett h�mnings mord.",
	reset_settings = "Du har resettat alla �ndringar!",
	must_be_x = "Du m�ste vara en %s f�r att kunna g�ra %s.",
	agenda_updated = "Gangster bossen har uppdaterat agendan",
	job_set = "%s har s�tt hans/hennes jobb till '%s'",
	demoted = "%s har blivit degraderad.",
	demoted_not = "%s har inte blivit degraderad.",
	demote_vote_started = "%s har gjort en r�st f�r at degradera %s",
	demote_vote_text = "Degraderings r�st:\n%s", --s is the reason here
	lockdown_started = "Borgm�staren har startat en lockdown, g� tillbaka till ditt hem.",
	lockdown_ended = "Lockdownen har upph�rt.",
	gunlicense_requested = "%s har beg�rt %s en vapen license",
	gunlicense_granted = "%s har beviljat %s en vapen license",
	gunlicense_denied = "%s har inte beviljat %s en vapen license",
	gunlicense_question_text = "Bevilja %s en vapen license?",
	gunlicense_remove_vote_text = "%s har startat en r�stning f�r att ta bort %s vapen license",
	gunlicense_remove_vote_text2 = "Tabort vapen license:\n%s", --where %s is the reason
	gunlicense_removed = "%s's license har blivit borttagen!",
	gunlicense_not_removed = "%s's license har inte blivit borttagen!",
	vote_specify_reason = "Du m�ste ge en anledning!",
	vote_started = "R�sten �r skapad.",
	vote_alone = "Du har vunnit r�sten f�r du �r ensam p� servern.",
	jail_punishment = "Bestraffning f�r att du har l�mnat servern! F�ngslad f�r: %d seconds.",
	admin_only = "admin endast!", -- when doing /addjailpos
	chief_or = "Chief eller",-- when doing /addjailpos
	
	dead_in_jail = "Du �r nu d�d i f�ngelse tills din tid �r uppe!",
	died_in_jail = "%s har d�tt i f�ngelset!",
	
	--lottery
	lottery_started = "Lottning! F�lj med f�r bara %s",
	lottery_entered = "Du har g�tt med i en lottning f�r %s",
	lottery_not_entered = "%s har inte g�tt med i lottningen",
	lottery_noone_entered = "Ingen har g�tt med i lottningen",
	lottery_won = "%s har vunnit lottningen! Han vann %s",
	
	--hungermod 
	starving = "Sv�lter!",
	
	--F4menu 
	--Tab 1
	give_money = "Ge pengar till den du tittar p�.",
	drop_money = "Sl�pp pengar.",
	change_name = "�ndra ditt DarkRP namn.",
	go_to_sleep = "Sov/Vakna",
	drop_weapon = "Sl�pp ditt vapen",
	buy_health = "K�p liv(%s)",
	request_gunlicense = "Beg�r vapen license",
	demote_player_menu = "Degradera en spelare",
	
	
	searchwarrantbutton = "F� en husrannsakan f�r en spelare",
	unwarrantbutton = "Tabort husrannsakan f�r en spelare",
	noone_available = "Ingen tillg�nglig.",
	request_warrant = "beg�r en husrannsakan f�r en spelare",
	make_wanted = "G�r n�gon efterlyst",
	make_unwanted = "Tabort n�gons efterlysning",
	set_jailpos = "S�tt f�ngelse positionen",
	add_jailpos = "L�gg till en  f�ngelse position",
	
	set_custom_job = "G�r ett eget jobb (Tryck enter f�r att aktivera)",
	
	set_agenda = "�ndra agendan (Tryck enter f�r att aktivera)",
	
	initiate_lockdown = "Starta en lockdown",
	stop_lockdown = "Stoppa en lockdown",
	start_lottery = "Starta en lottning",
	give_license_lookingat = "Ge <Tittar p�> en vapen license",
	
	--second tab
	job_name = "Namn: ",
	job_description = "Description: " ,
	job_weapons = "Vapen: ",
	
	--entities tab
	buy_a = "K�p %s: %s",
	
	--licenseweaponstab
	license_tab = [[License vapen
	
	"Checka" vapnen som man kan plocka upp UTAN att ha en license!
	]],
	license_tab_other_weapons = "Andra vapen:",
	
	
	--Help!
	cophelp = [[Saker polisen borde veta:
	"Abusa" inte ditt jobb.
	N�r du arresterar n�gon �r dom automatiskt teleporterade till f�ngelset.
	Dom �r automatiskt utsl�ppta efter %d sekunder
	Skriv /warrant [Namn|SteamID|Status ID] f�r att g�ra en husrannsakan mot en spelare.
	Skriv /wanted [Namn|SteamID|Status ID] f�r att g�ra en spelare efterlyst.
	Skriv /unwanted [Namn|SteamID|Status ID] f�r att tabort efterlysningen p� en spelare.
	Skriv /jailpos f�r att �ndra f�ngelse positionen
	Skriv /cophelp f�r att "toggla" denna meny, /x f�r att st�nga den.]],
	
	mayorhelp = [[Skriv /warrant [Nick|SteamID|Status ID] f�r att g�ra en husrannsakan mot en spelare.
	Skriv /wanted [Nick|SteamID|Status ID] f�r att g�ra en spelare efterlyst.
	Skriv /unwanted [Nick|SteamID|Status ID] f�r att tabort efterlysningen p� en spelare.
	Skriv /lockdown f�r att starta en "lockdown"
	Skriv /unlockdown f�r att tabort en "lockdown"
	Skriv /mayorhelp f�r att "toggla" denna meny, /x f�r att st�nga den.]],
	
	adminhelp = [[/enablestorm Aktiverar meteor stormar
	/disablestorm Deaktiverar meteor stormar
	Du kan �ndra priset p� vapen, jailtiden, max gangstrars, etc..
	F�r att g�ra det tryck F1 och sen skrolla ner f�r att se dina krafter.
	Om du �ndrar init.lua kan du spara "vars"
	/jailpos �ndrar jailpositionen!
	/setspawn <team> - L�gg till ett teamnamn, tex Police, Gangster...
	/adminhelp f�r att "toggla" denna meny, /x f�r att st�nga den.]],
	
	mobhelp = [[Som mob boss, best�mmer du vad alla gangstrar ska g�ra.
	Du f�r en "unarrest stick" som du anv�nder f�r att bryta andra ur f�ngelset.
	/agenda <Message> �ndrar gangstrars agenda. Anv�nd // f�r att g� till en ny rad.
	Skriv /mobbosshelp f�r att "toggla" denna meny, /x f�r att st�nga den.]],
	
	gangster_agenda = "Gangstrar's agenda",
	
	hints = 
	--English hints:
	{"Rollspel enligt servern's regler.",
	"Du kan bli arresterad f�r att ha k�pt/k�per ett olagligt vapen!",
	"Skriv /sleep f�r att somna.",
	"Du f�r ha en pistol, men anv�nd den bara i sj�lv f�rsvar.",
	"Alla vapen kan INTE skjuta om du inte tittar genom siktet!",
	"Om du �r en polis, g�r ditt jobb p� r�tt s�tt annars kan du bli degraderad.",
	"Skriv /buyshipment <Vapen namn> f�r att k�pa en l�da med vapen (e.g: /buyshipment ak47).",
	"Skriv /buy <Pistol namn/Sak namn> f�r att k�pa en pistol, e.g: /buy glock.",
	"Skriv /buyammo <Ammo typ> f�r att k�pa ammo. Ammo typer �r: [rifle | shotgun | pistol]",
	"Om du vill f� ut din kompis ur f�ngelse, g� till din n�rmsta polisstation och f�rhandla!",
	"Tryck F1 f�r att se RP hj�lp.",
	"Om du blir arresterad, lugn, du kommer ut inom n�gra minuter",
	"Om du �r chief eller admin, skriv /jailpos eller /addjail f�r att s�tta positionen f�r f�rsta (och extra) f�ngelse positioner.",
	"Du blir teleporterad till f�ngelset om du blir arresterad!",
	"Om du �r en polis och ser n�gon med ett olagligt vapen, arrestera dom och konfistikera vapnet.",
	"Skriv /sleep f�r att somna.",
	"Dina pengar och RP namn �r sparade av servern.",
	"Skriv /buyhealth f�r att �ka ditt liv till 100%",
	"Skriv /buydruglab f�r att k�pa ett dr�glab. Se upp s� du s�ljer alla dr�ger!",
	"Tryck F2 eller Reload med dina keys f�r att �ppna keys menyn",
	"Du blir teleporterad till f�ngelset om du blir arresterad!",
	"Skriv /price <Pris> medans du tittar p� ett dr�glab,  Vapenlabb eller en mikrov�gsugn f�r att �ndra priset f�r k�pare.",
	"Skriv /warrant [Namn|SteamID|UserID] f�r att f� en husrannsakan mot en spelare.",
	"Skriv /wanted or /unwanted [Nick|SteamID|UserID] f�r att f� en spelare efterlyst/inte efterlyst.",
	"Skriv /drop f�r att sl�ppa vapnet du h�ller.",
	"Skriv /gangster f�r att bli en gangster.",
	"Skriv /mobboss f�r att bli en mobboss.",
	"Skriv /buymicrowave f�r att k�pa en mikrov�gsugn som kan g�ra mat (nudlar <3).",
	"Skriv /dropmoney <Hur mycket> f�r att sl�ppa pengar.",
	"Skriv /buymoneyprinter f�r att k�pa en pengarg�rare/moneyprinter.",
	"Skriv /medic - f�r att bli en medic/sjukv�rdare.",
	"Skriv /gundealer - f�r att bli en gundealer/vapen handlare.",
	"Skriv /buygunlab - f�r att k�pa ett vapenlabb.",
	"Skriv /cook - f�r att bli en Cook.",
	"Skriv /cophelp f�r o se polisers hj�lp.",
	"Skriv /buyfood <Typ> (e.g: /buyfood melon)",
	"Skriv /rpname <Namn> f�r att �ndra ditt rollspel namn.",
	"Skriv /call <Namn> f�r att ringa n�gon!"
	}
}





if not ConVarExists("rp_language") then
	CreateConVar("rp_language", "english", {FCVAR_ARCHIVE, FCVAR_REPLICATED})	
end
LANGUAGE = rp_languages[GetConVarString("rp_language")]
if not LANGUAGE then
	LANGUAGE = rp_languages["english"]--now hope people don't remove the english language ._.
end