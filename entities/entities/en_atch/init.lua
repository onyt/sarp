AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

-- Define Variables
ENT.iModel = "models/props_lab/tpplug.mdl"

function ENT:OnAttached(e)
	e.PrintAmountMax = e.PrintAmountMax + math.random(100,250)
end
