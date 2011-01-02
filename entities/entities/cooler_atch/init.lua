AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

-- Define Variables
ENT.iModel = "models/Items/battery.mdl"

function ENT:OnAttached(e)
	e:SetNWInt("Cooler",10)
	e:SetNWBool("Cooled",true)
end
