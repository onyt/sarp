ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "Money Printer"
ENT.Author = "Saint"
ENT.Spawnable = false
ENT.AdminSpawnable = false
ENT.Base = "base_printer"

-- Define Variables
ENT.iName = "Money Printer"

function ENT:SetupDataTables()
	self:DTVar("Int",0,"price")
	self:DTVar("Entity",1,"owning_ent")
end