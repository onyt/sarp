/*AddCustomShipment("Desert eagle", "models/weapons/w_pist_deagle.mdl", "weapon_deagle2", 215, 10, true, 215, true, {TEAM_GUN})
AddCustomShipment("Fiveseven", "models/weapons/w_pist_fiveseven.mdl", "weapon_fiveseven2", 0, 10, true, 205, true, {TEAM_GUN})
AddCustomShipment("Glock", "models/weapons/w_pist_glock18.mdl", "weapon_glock2", 0, 10, true, 160, true, {TEAM_GUN})
AddCustomShipment("P228", "models/weapons/w_pist_p228.mdl", "weapon_p2282", 0, 10, true, 185, true, {TEAM_GUN})

AddCustomShipment("AK47", "models/weapons/w_rif_ak47.mdl", "weapon_ak472", 2450, 10, false, nil, false, {TEAM_GUN}) 
AddCustomShipment("MP5", "models/weapons/w_smg_mp5.mdl", "weapon_mp52", 2200, 10, false, nil, false, {TEAM_GUN}) 
AddCustomShipment("M4", "models/weapons/w_rif_m4a1.mdl", "weapon_m42", 2450, 10, false, nil, false, {TEAM_GUN}) 
AddCustomShipment("Mac 10", "models/weapons/w_smg_mac10.mdl", "weapon_mac102", 2150, 10, false, nil, false, {TEAM_GUN}) 
AddCustomShipment("Pump shotgun", "models/weapons/w_shot_m3super90.mdl", "weapon_pumpshotgun2", 1750, 10, false, nil, false, {TEAM_GUN}) 
AddCustomShipment("Sniper rifle", "models/weapons/w_snip_g3sg1.mdl", "ls_sniper", 3750, 10, false, nil, false, {TEAM_GUN}) */

AddEntity("Drug lab", "drug_lab", "models/props_lab/crematorcase.mdl", 400, 3, "/buydruglab")
AddEntity("Microwave", "microwave", "models/props/cs_office/microwave.mdl", 400, 1, "/buymicrowave", TEAM_COOK)
AddEntity("Gun lab", "gunlab", "models/props_c17/TrapPropeller_Engine.mdl", 500, 1, "/buygunlab", TEAM_GUN)

--AddEntity("Aspirin", "durgz_aspirin", "models/jaanus/aspbtl.mdl", 130, 100, "/buyaspirin", TEAM_DRUGDEALER)
--AddEntity("Cocaine", "durgz_cocaine", "models/cocn.mdl", 115, 100, "/buycocaine", TEAM_DRUGDEALER)
--AddEntity("Heroine", "durgz_heroine", "models/katharsmodels/syringe_out/syringe_out.mdl", 105, 100, "/buyheroine", TEAM_DRUGDEALER)
--AddEntity("LSD", "durgz_lsd", "models/smile/smile.mdl", 113, 100, "/buylsd", TEAM_DRUGDEALER)
--AddEntity("Shroom", "durgz_mushroom", "models/ipha/mushroom_small.mdl", 127, 100, "/buyshroom", TEAM_DRUGDEALER)
--AddEntity("Weed", "durgz_weed", "models/katharsmodels/contraband/zak_wiet/zak_wiet.mdl", 117, 100, "/buyweed", TEAM_DRUGDEALER)
--AddEntity("PCP", "durgz_pcp", "models/mario/star/star.mdl", 110, 100, "/buypcp", TEAM_DRUGDEALER)
--AddEntity("Water", "durgz_water", "models/drug_mod/the_bottle_of_water.mdl", 50, 100, "/buywater")
AddEntity("Pot Plant", "weed_plant", "models/nater/weedplant_pot_planted.mdl", 75, 5, "/buyweed")
AddEntity("Seed", "seed_weed", "models/weapons/w_bugbait.mdl", 150, 15, "/buyseed")
AddEntity("Refinement Stove", "refi_stove", "models/props_c17/furnitureStove001a.mdl", 2000, 1, "/buyrefine")
AddEntity("Unrefined Cocaine", "unre_coke", "models/props_c17/BriefCase001a.mdl", 200, 3, "/buyunre")
AddEntity("Bathtub", "meth_bathtub", "models/props_interiors/BathTub01a.mdl", 235, 3, "/buytub")
AddEntity("Household Stove", "meth_stove", "models/props_wasteland/kitchen_stove001a.mdl", 500, 3, "/buystove")
AddEntity("Iodine", "iodine", "models/props_junk/garbage_plasticbottle001a.mdl", 100, 3, "/buyiodine")
AddEntity("Bleach", "bleach", "models/props_junk/garbage_plasticbottle002a.mdl", 80, 3, "/buybleach")
AddEntity("Water Bottle", "water_bottle", "models/props/cs_office/Water_bottle.mdl", 50, 3, "/buywaterbottle")
AddEntity("Kitty Litter", "kitty_litter", "models/props_misc/flour_sack-1.mdl", 150, 3, "/buylitter")
AddEntity("Unrefined Cocaine", "unre_coke", "models/props_c17/BriefCase001a.mdl", 200, 3, "/buyunre")


--AddEntity("Beer", "durgz_alcohol", "models/drug_mod/alcohol_can.mdl", 50, 100, "/buyalcohol", TEAM_BARTENDER)
--AddEntity("Cigarette", "durgz_cigarette", "models/boxopencigshib.mdl", 105, 100, "/buycigarette", TEAM_BARTENDER)

AddEntity("Ammo Dispenser", "ammo_dispenser", "models/Items/ammocrate_smg1.mdl", 500, 1, "/buyammodispenser")
AddEntity("Health Dispenser", "health_dispenser", "models/props_combine/health_charger001.mdl", 500, 1, "/buyhealthdispenser")
AddEntity("Armor Dispenser", "suit_dispenser", "models/props_combine/suit_charger001.mdl", 500, 1, "/buyarmordispenser")

-- Printers
AddEntity("Money Printer", "money_printer", "models/props_c17/consolebox01a.mdl", 1000, 2, "/buymoneyprinter")
AddEntity("Refurbished Printer", "ref_printer", "models/props_c17/consolebox03a.mdl", 500, 2, "/buyrefurbishedprinter")
AddEntity("Money Factory", "fac_printer", "models/props_lab/reciever_cart.mdl", 5000, 2, "/buymoneyfactory")

-- Attachments
AddEntity("Printer Cooler", "cooler_atch", "models/Items/battery.mdl", 500, 100, "/buyprintercooler")
AddEntity("Printer Hasher", "hash_atch", "models/Items/combine_rifle_ammo01.mdl", 100, 100, "/buyprinterhasher")
AddEntity("Printer Battery", "bat_atch", "models/props_lab/reciever01d.mdl", 300, 100, "/buyprinterbattery")
AddEntity("Printer Enhancer", "en_atch", "models/props_lab/tpplug.mdl", 500, 100, "/buyprinterenhancer")

AddCustomVehicle("Airboat", "models/airboat.mdl", 500)
AddCustomVehicle("Jeep", "models/buggy.mdl", 700 )
AddCustomVehicle("Jalopy", "models/models/vehicle.mdl", 800)
AddCustomVehicle("Corvette C6", "models/corvette/corvette.mdl", 900)
AddCustomVehicle("Murcielago", "models/sickness/murcielago.mdl", 1000)
AddCustomVehicle("Golf GTI", "models/models/vehicle.mdl", 800)

/*
How to add custom vehicles:
FIRST
go ingame, type rp_getvehicles for available vehicles!
then:
AddCustomVehicle(<One of the vehicles from the rp_getvehicles list>, <Model of the vehicle>, <Price of the vehicle>, <OPTIONAL jobs that can buy the vehicle>)
Examples:
AddCustomVehicle("Jeep", "models/buggy.mdl", 100 )
AddCustomVehicle("Airboat", "models/airboat.mdl", 600, {TEAM_GUN})
AddCustomVehicle("Airboat", "models/airboat.mdl", 600, {TEAM_GUN, TEAM_MEDIC})

Add those lines under your custom shipments. At the bottom of this file or in data/CustomShipments.txt

HOW TO ADD CUSTOM SHIPMENTS:
AddCustomShipment("<Name of the shipment(no spaces)>"," <the model that the shipment spawns(should be the world model...)>", "<the classname of the weapon>", <the price of one shipment>, <how many guns there are in one shipment>, <OPTIONAL: true/false sold seperately>, <OPTIONAL: price when sold seperately>, < true/false OPTIONAL: /buy only = true> , OPTIONAL which classes can buy the shipment, OPTIONAL: the model of the shipment)

Notes:
MODEL: you can go to Q and then props tab at the top left then search for w_ and you can find all world models of the weapons!
CLASSNAME OF THE WEAPON
there are half-life 2 weapons you can add:
weapon_pistol
weapon_smg1
weapon_ar2
weapon_rpg
weapon_crowbar
weapon_physgun
weapon_357
weapon_crossbow
weapon_slam
weapon_bugbait
weapon_frag
weapon_physcannon
weapon_shotgun
gmod_tool

But you can also add the classnames of Lua weapons by going into the weapons/ folder and look at the name of the folder of the weapon you want.
Like the player possessor swep in addons/Player Possessor/lua/weapons You see a folder called weapon_posessor 
This means the classname is weapon_posessor

YOU CAN ADD ITEMS/ENTITIES TOO! but to actually make the entity you have to press E on the thing that the shipment spawned, BUT THAT'S OK!
YOU CAN MAKE GUNDEALERS ABLE TO SELL MEDKITS!

true/false: Can the weapon be sold seperately?(with /buy name) if you want yes then say true else say no

the price of sold seperate is the price it is when you do /buy name. Of course you only have to fill this in when sold seperate is true.


EXAMPLES OF CUSTOM SHIPMENTS(remove the // to activate it): */

//AddCustomShipment("HL2pistol", "models/weapons/W_pistol.mdl", "weapon_pistol", 500, 10, false, 200, false, {TEAM_GUN, TEAM_MEDIC})

--EXAMPLE OF AN ENTITY(in this case a medkit)
--AddCustomShipment("bball", "models/Combine_Helicopter/helicopter_bomb01.mdl", "sent_ball", 100, 10, false, 10, false, {TEAM_GUN}, "models/props_c17/oildrum001_explosive.mdl")
--EXAMPLE OF A BOUNCY BALL:   		NOTE THAT YOU HAVE TO PRESS E REALLY QUICKLY ON THE BOMB OR YOU'LL EAT THE BALL LOL
--AddCustomShipment("bball", "models/Combine_Helicopter/helicopter_bomb01.mdl", "sent_ball", 100, 10, true, 10, true)
-- ADD CUSTOM SHIPMENTS HERE(next line):

-- Regular Weapons
AddCustomShipment("Galil", "models/weapons/w_rif_galil.mdl", "weapon_mad_galil", 3750, 10, false, 0, false, {TEAM_GUN})
AddCustomShipment("Famas", "models/weapons/w_rif_famas.mdl", "weapon_mad_famas", 3750, 10, false, 0, false, {TEAM_GUN})
AddCustomShipment("Scout", "models/weapons/w_snip_scout.mdl", "weapon_mad_scout", 4500, 10, false, 0, false, {TEAM_GUN})
AddCustomShipment("SteyrAug", "models/weapons/w_rif_aug.mdl", "weapon_mad_aug", 4000, 10, false, 0, false, {TEAM_GUN})
AddCustomShipment("SG552", "models/weapons/w_rif_sg552.mdl", "weapon_mad_sg552", 4000, 10, false, 0, false, {TEAM_GUN})
AddCustomShipment("UMP45", "models/weapons/w_smg_ump45.mdl", "weapon_mad_ump", 3600, 10, false, 0, false, {TEAM_GUN})
AddCustomShipment("P90", "models/weapons/w_smg_p90.mdl", "weapon_mad_p90", 3500, 10, false, 0, false, {TEAM_GUN})
AddCustomShipment("TMP", "models/weapons/w_smg_tmp.mdl", "weapon_mad_tmp", 3500, 10, false, 0, false, {TEAM_GUN})
AddCustomShipment("MP5", "models/weapons/w_smg_mp5.mdl", "weapon_mad_mp5", 3200, 10, false, 0, false, {TEAM_GUN})
AddCustomShipment("Mac10", "models/weapons/w_smg_mac10.mdl", "weapon_mad_mac10", 3000, 10, false, 0, false, {TEAM_GUN})

-- Pistols/Knife
AddCustomShipment("Crowbar", "models/weapons/w_crowbar.mdl", "weapon_crowbar", 2300, 10, true, 150, true)
--AddCustomShipment("DualElites", "models/weapons/w_pist_elite_dropped.mdl", "weapon_mad_dual", 2300, 10, true, 210, true, {TEAM_GUN, TEAM_HEAVYARMSDEALER})
--AddCustomShipment("Deagle", "models/weapons/w_pist_deagle.mdl", "weapon_mad_deagle", 2300, 10, true, 230, true, {TEAM_GUN, TEAM_HEAVYARMSDEALER})
--AddCustomShipment("USP", "models/weapons/w_pist_usp.mdl", "weapon_mad_usp", 2200, 10, true, 200, true, {TEAM_GUN, TEAM_HEAVYARMSDEALER})
--AddCustomShipment("P228", "models/weapons/w_pist_p228.mdl", "weapon_mad_p228", 2100, 10, true, 210, true, {TEAM_GUN, TEAM_HEAVYARMSDEALER})
--AddCustomShipment("Glock", "models/weapons/w_pist_glock18.mdl", "weapon_mad_glock", 2000, 10, true, 210, true, {TEAM_GUN, TEAM_HEAVYARMSDEALER})
--AddCustomShipment("FiveSeven", "models/weapons/w_pist_fiveseven.mdl", "weapon_fiveseven2", 1900, 10, true, 210, true, {TEAM_GUN, TEAM_HEAVYARMSDEALER})
-- Other
AddCustomShipment("Lockpick", "models/weapons/w_crowbar.mdl", "lockpick", 2000, 10, true, 350, true, {TEAM_GANG, TEAM_MOB})
AddCustomShipment("Keypad Cracker", "models/weapons/w_c4.mdl", "keypad_cracker", 2000, 10, true, 350, true, {TEAM_GANG, TEAM_MOB, TEAM_THIEF})

-- Heavy Weapons
AddCustomShipment("Knife", "models/weapons/w_knife_t.mdl", "weapon_mad_knife", 2000, 10, true, 250, true, {TEAM_HEAVYARMSDEALER})
--AddCustomShipment("Crowbar", "models/weapons/w_crowbar.mdl", "weapon_crowbar", 2000, 10, true, 150, true, {TEAM_HEAVYARMSDEALER})
AddCustomShipment("AutoShotgun", "models/weapons/w_shot_xm1014.mdl", "weapon_mad_xm1014", 3700, 10, false, 0, false, {TEAM_HEAVYARMSDEALER})
AddCustomShipment("Shotgun", "models/weapons/w_shot_m3super90.mdl", "weapon_pumpshotgun2", 3500, 10, false, 0, false, {TEAM_HEAVYARMSDEALER})
AddCustomShipment("G3SG1", "models/weapons/w_snip_g3sg1.mdl", "weapon_mad_g3", 4000, 10, false, 0, false, {TEAM_HEAVYARMSDEALER})
AddCustomShipment("SG550", "models/weapons/w_snip_sg550.mdl", "weapon_mad_sg550", 4000, 10, false, 0, false, {TEAM_HEAVYARMSDEALER})
AddCustomShipment("AWP", "models/weapons/w_snip_awp.mdl", "weapon_mad_awp", 5000, 10, false, 0, false, {TEAM_HEAVYARMSDEALER})
AddCustomShipment("M249", "models/weapons/w_mach_m249para.mdl", "weapon_mad_m249", 5000, 10, false, 0, false, {TEAM_HEAVYARMSDEALER})
AddCustomShipment("AK47", "models/weapons/w_rif_ak47.mdl", "weapon_mad_ak47", 4000, 10, false, 0, false, {TEAM_HEAVYARMSDEALER})
AddCustomShipment("M4", "models/weapons/w_rif_m4a1.mdl", "weapon_mad_m4", 4000, 10, false, 0, false, {TEAM_HEAVYARMSDEALER})
