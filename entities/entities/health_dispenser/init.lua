AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

function ENT:Initialize()
	self:SetModel("models/props_combine/health_charger001.mdl")
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	local phys = self:GetPhysicsObject()
	if phys and phys:IsValid() then phys:Wake() end
end

function ENT:OnTakeDamage(dmg)
end

function ENT:Use(activator,caller)
	if activator:Health() < 100 then
		self:EmitSound("WallHealth.Start")
		activator:SetHealth(activator:Health() + 1)
	end
end

function ENT:Think()
end

function ENT:OnRemove()
end
