AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

-- Define Variables
ENT.iModel = "models/props_c17/consolebox01a.mdl"
ENT.PrintAmountMin = 0
ENT.PrintAmountMax = 0
ENT.PrintTimeMin = 0
ENT.PrintTimeMax = 0
ENT.PrintPos = Vector(0,0,0)
ENT.ExplodeRandomizer = 0

function ENT:Initialize()
	self:SetModel(self.iModel)
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)
	local phys = self:GetPhysicsObject()
	if phys:IsValid() then phys:Wake() end
	phys:SetMass(80)
	self.sparking = false
	self.damage = 100
	self.IsMoneyPrinter = true
	timer.Simple(math.random(self.PrintTimeMin,self.PrintTimeMax), self.CreateMoneybag, self)
	self.atchs = {}
end

function ENT:OnTakeDamage(dmg)
	if self.burningup then return end

	self.damage = self.damage - dmg:GetDamage()
	if self.damage <= 0 then
		local rnd = math.random(1, 10)
		if rnd < 3 then
			self:BurstIntoFlames()
		else
			self:Destruct()
			self:Remove()
		end
	end
end

function ENT:Destruct()
	local vPoint = self:GetPos()
	local effectdata = EffectData()
	effectdata:SetStart(vPoint)
	effectdata:SetOrigin(vPoint)
	effectdata:SetScale(1)
	util.Effect("Explosion", effectdata)
	Notify(self.dt.owning_ent, 1, 4, "Your " .. self.iName .. " has exploded!")
end

function ENT:BurstIntoFlames()
	Notify(self.dt.owning_ent, 1, 4, "Your " .. self.iName .. " is overheating!")
	self.burningup = true
	local burntime = math.random(8, 18)
	self:Ignite(burntime, 0)
	timer.Simple(burntime, self.Fireball, self)
end

function ENT:Fireball()
	if not self:IsOnFire() then return end
	local dist = math.random(20, 280) -- Explosion radius
	self:Destruct()
	for k, v in pairs(ents.FindInSphere(self:GetPos(), dist)) do
		if not v:IsPlayer() and not v.IsMoneyPrinter then v:Ignite(math.random(5, 22), 0) end
	end
	self:Remove()
end

local function PrintMore(ent)
	if ValidEntity(ent) then
		ent.sparking = true
		timer.Simple(3, ent.CreateMoneybag, ent)
	end
end

function ENT:CreateMoneybag()
	if not ValidEntity(self) then return end
	if self:IsOnFire() then return end
	local MoneyPos = self:GetPos()

	if !(self:GetNWBool("Cooled")) then
		if math.random(1, self.ExplodeRandomizer) == 3 then self:BurstIntoFlames() end
	else
		self:SetNWInt("Cooler",self:GetNWInt("Cooler")-1)
		if self:GetNWInt("Cooler") == 0 then
			self:SetNWBool("Cooled",false)
		end
	end

	if !(table.HasValue(self.atchs,"hash_atch")) then
		DarkRPCreateMoneyBag(Vector(MoneyPos.x + self.PrintPos.x, MoneyPos.y + self.PrintPos.y, MoneyPos.z + self.PrintPos.z), math.random(self.PrintAmountMin,self.PrintAmountMax))
	else
		self:SetNWInt("Hash",self:GetNWInt("Hash")+math.random(self.PrintAmountMin,self.PrintAmountMax))
	end
	self.sparking = false
	
	if table.HasValue(self.atchs,"bat_atch") then
		if math.random(1,20) == 5 then e:SetNWBool("Battery",false) end
	end
	
	timer.Simple(math.random(self.PrintTimeMin,self.PrintTimeMax), PrintMore, self)
end

function ENT:Think()
	if not self.sparking then return end

	local effectdata = EffectData()
	effectdata:SetOrigin(self:GetPos())
	effectdata:SetMagnitude(1)
	effectdata:SetScale(1)
	effectdata:SetRadius(2)
	util.Effect("Sparks", effectdata)
end

function ENT:Use(a,c)
	if !a:IsPlayer() then return end
	
	if table.HasValue(self.atchs,"cooler_atch") and self:GetNWInt("Cooler") < 10 then
		self:SetNWInt("Cooler",10)
		self:EmitSound("ambient/water/rain_drip3.wav",100,100)
	end
	
	if table.HasValue(self.atchs,"hash_atch") and self:GetNWInt("Hash") > 0 then
		a:AddMoney(self:GetNWInt("Hash"))
		self:SetNWInt("Hash",0)
		self:EmitSound("weapons/physcannon/physcannon_charge.wav",100,100)
	end
end
