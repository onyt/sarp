AddCSLuaFile("cl_init.lua")

AddCSLuaFile("shared.lua")

include("shared.lua")

function ENT:Initialize()

self.Entity:SetModel("models/props_c17/pottery06a.mdl")

self.Entity:PhysicsInit(SOLID_VPHYSICS)

self.Entity:SetMoveType(MOVETYPE_VPHYSICS)

self.Entity:SetSolid(SOLID_VPHYSICS)

self.Entity:SetUseType(SIMPLE_USE)

local phys = self.Entity:GetPhysicsObject()

if phys and phys:IsValid() then phys:Wake() end

self.Entity:SetNWBool("Usable", false)

self.Entity:SetNWBool("Plantable", true)

self.damage = 10

local ply = self.Entity:GetNWEntity("owning_ent")

end

function ENT:OnTakeDamage(dmg)

self.damage = self.damage - dmg:GetDamage()

if (self.damage <= 0) then

local effectdata = EffectData()

effectdata:SetOrigin(self.Entity:GetPos())

effectdata:SetMagnitude(2)

effectdata:SetScale(2)

effectdata:SetRadius(3)

--util.Effect("Sparks", effectdata)

self.Entity:Remove()

end

end

function ENT:Use()

if self.Entity:GetNWBool("Usable") == true then

self.Entity:SetNWBool("Usable", false)

self.Entity:SetNWBool("Plantable", true)

self.Entity:SetModel("models/props_c17/pottery06a.mdl")

local SpawnPos = self.Entity:GetPos()

local WeedBag = ents.Create("durgz_weed")

WeedBag:SetPos(SpawnPos)

WeedBag:Spawn()

end

end

function ENT:Touch(hitEnt)

if hitEnt:GetClass() == "seed_weed" then

if self.Entity:GetNWBool("Plantable") == true then

self.Entity:SetNWBool("Plantable", false)

hitEnt:Remove()

self.Entity:SetModel("models/props_c17/pottery06a.mdl")

timer.Create("Stage2_"..self:EntIndex(), 50, 1, function()

self.Entity:SetModel("models/props/cs_office/plant01.mdl")

end)

timer.Create("Stage3_"..self:EntIndex(), 130, 1, function()

self.Entity:SetModel("models/props_foliage/tree_deciduous_01a-lod.mdl")

end)

timer.Create("Stage4_"..self:EntIndex(), 190, 1, function()

self.Entity:SetModel("models/props_foliage/tree_deciduous_01a-lod.mdl")

end)

timer.Create("Stage5_"..self:EntIndex(), 270, 1, function()

self.Entity:SetModel("models/props_foliage/tree_deciduous_01a.mdl")

end)

timer.Create("Stage6_"..self:EntIndex(), 230, 1, function()

self.Entity:SetModel("models/props_foliage/tree_pine_03.mdl")

end)

timer.Create("Stage7_"..self:EntIndex(), 280, 1, function()

self.Entity:SetModel("models/props_foliage/tree_pine_02.mdl")

end)

timer.Create("Stage8_"..self:EntIndex(), 350, 1, function()

self.Entity:SetModel("models/props_foliage/tree_pine_01.mdl")

self.Entity:SetNWBool("Usable", true)

end)

end

end

end

function ENT:OnRemove()

if self.Entity:GetNWBool("Plantable") == false then

timer.Destroy("Stage2")

timer.Destroy("Stage3")

timer.Destroy("Stage4")

timer.Destroy("Stage5")

timer.Destroy("Stage6")

timer.Destroy("Stage7")

timer.Destroy("Stage8")

end

end 