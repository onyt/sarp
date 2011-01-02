AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

-- Define Variables
ENT.Model = "models/props_lab/reciever_cart.mdl"
ENT.PrintAmountMin = 800
ENT.PrintAmountMax = 1500
ENT.PrintTimeMin = 100
ENT.PrintTimeMax = 350
ENT.PrintPos = Vector(0,0,-15)
ENT.ExplodeRandomizer = 25
