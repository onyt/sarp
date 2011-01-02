AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

-- Define Variables
ENT.iModel = "models/props_c17/consolebox01a.mdl"
ENT.PrintAmountMin = 200
ENT.PrintAmountMax = 300
ENT.PrintTimeMin = 100
ENT.PrintTimeMax = 350
ENT.PrintPos = Vector(0,0,15)
ENT.ExplodeRandomizer = 20
