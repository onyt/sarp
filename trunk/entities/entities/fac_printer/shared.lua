ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "Money Factory"
ENT.Author = "Saint"
ENT.Spawnable = false
ENT.AdminSpawnable = false
ENT.Base = "base_printer"

-- Define Variables
ENT.Name = "Money Factory"

function ENT:SetupDataTables()
	self:DTVar("Int",0,"price")
	self:DTVar("Entity",1,"owning_ent")
end
