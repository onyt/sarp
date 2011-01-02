AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

-- Define Variables
ENT.iModel = "models/error.mdl"

function ENT:Initialize()
	self:SetModel(self.iModel)
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	local phys = self:GetPhysicsObject()
	if phys:IsValid() then phys:Wake() end
end

function ENT:Touch(e)
	if !e.IsMoneyPrinter then return end

	if self.Welded then return end
	if e.burningup then return end
	if table.HasValue(e.atchs,self:GetClass()) then return end

	local pos = e:GetPos()
	self.Welded = true
	self:SetParent(e)
	DropEntityIfHeld(e)
	DropEntityIfHeld(self)
	table.insert(e.atchs,self:GetClass())
	e:SetNWEntity(self:GetClass(),self)
	self:EmitSound("buttons/lever1.wav",100,100)
	self:OnAttached(e)
end
