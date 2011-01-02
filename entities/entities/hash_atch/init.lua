AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

-- Define Variables
ENT.iModel = "models/Items/combine_rifle_ammo01.mdl"

function ENT:OnAttached(e)
	e:SetNWInt("Hash",0)
end
