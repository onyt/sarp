AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

function ENT:Initialize()
	self:SetModel("models/Items/ammocrate_smg1.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	local phys = self:GetPhysicsObject()
	if phys and phys:IsValid() then phys:Wake() end
end

function ENT:OnTakeDamage(dmg)
end

function ENT:Use(activator,caller)
	activator:GiveAmmo(5,"smg1")
	activator:GiveAmmo(5,"buckshot")
	activator:GiveAmmo(5,"pistol")
end

function ENT:Think()
end

function ENT:OnRemove()
end
