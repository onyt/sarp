AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")



function ENT:Initialize()

	self.Entity:SetModel("models/props_c17/FurnitureBathtub001a.mdl")
	self.Entity:PhysicsInit(SOLID_VPHYSICS)
	self.Entity:SetMoveType(MOVETYPE_VPHYSICS)
	self.Entity:SetSolid(SOLID_VPHYSICS)
	self.Entity:SetUseType(SIMPLE_USE)
	local phys = self.Entity:GetPhysicsObject()
	if phys and phys:IsValid() then 
		phys:Wake()
	end
	self.Entity:SetNWBool("done", false)
	self.Entity:SetNWBool("hasIodine", false)
	self.Entity:SetNWBool("hasBleach", false)
	self.Entity:SetNWBool("hasLiter", false)
	self.Entity:SetNWBool("hasWater", false)
	self.damage = 10
	local ply = self.Entity:GetNWEntity("owning_ent")

end

function ENT:killTimers()
	if self.Entity:GetNWBool("done") then
		timer.Destroy("Stage2_"..self:EntIndex())
	end
end

function ENT:killIngr()
	self.Entity:SetNWBool("hasIodine", false)
	self.Entity:SetNWBool("hasBleach", false)
	self.Entity:SetNWBool("hasLiter", false)
	self.Entity:SetNWBool("hasWater", false)
end

function ENT:startMixing()
	if (self.Entity:GetNWBool("hasIodine") and self.Entity:GetNWBool("hasBleach") and self.Entity:GetNWBool("hasLiter") and self.Entity:GetNWBool("hasWater")) then
		timer.Create("Stage2_"..self:EntIndex(), 10, 1, function()
			self.Entity:SetNWBool("done", true)
		end)
	end
end

function ENT:OnTakeDamage(dmg)
	self.damage = self.damage - dmg:GetDamage()
	if (self.damage <= 0) then
		local effectdata = EffectData()
		effectdata:SetOrigin(self.Entity:GetPos())
		effectdata:SetMagnitude(2)
		effectdata:SetScale(2)
		effectdata:SetRadius(3)
		util.Effect("Sparks", effectdata)
		self.Entity:Remove()
	end
end

function ENT:Use()
	if self.Entity:GetNWBool("done") then
		print("Making")
		self.Entity:SetNWBool("done", false)
		self.Entity:SetModel("models/props_c17/FurnitureBathtub001a.mdl")
		local SpawnPos = self.Entity:GetPos()
		local wetMeth = ents.Create("wet_meth")
		wetMeth:SetPos(SpawnPos)
		wetMeth:Spawn()
		self:killIngr()
	end
end

function ENT:Touch(hitEnt)

	if hitEnt:GetClass() == "iodine" then
		if !self.Entity:GetNWBool("hasIodine") then
			self.Entity:SetNWBool("hasIodine", true)
			hitEnt:Remove()
		end
		self:startMixing()
	end
	if hitEnt:GetClass() == "bleach" then
		if !self.Entity:GetNWBool("hasBleach") then
			self.Entity:SetNWBool("hasBleach", true)
			hitEnt:Remove()
		end
		self:startMixing()
	end
	if hitEnt:GetClass() == "kitty_litter" then
		if !self.Entity:GetNWBool("hasLiter") then
			self.Entity:SetNWBool("hasLiter", true)
			hitEnt:Remove()
		end
		self:startMixing()
	end
	if hitEnt:GetClass() == "water_bottle" then
		if !self.Entity:GetNWBool("hasWater") then
			self.Entity:SetNWBool("hasWater", true)
			hitEnt:Remove()
		end
		self:startMixing()
	end
	

end

function ENT:OnRemove()

	if self.Entity:GetNWBool("done") then
		timer.Destroy("Stage2_"..self:EntIndex())
	end	

end 