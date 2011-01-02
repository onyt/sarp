AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

-- Define Variables
ENT.iModel = "models/props_lab/reciever01d.mdl"

function ENT:OnAttached(e)
	e.PrintTimeMin = e.PrintTimeMin - 30
	e:SetNWBool("Battery",true)
end
