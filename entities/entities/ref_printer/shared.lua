ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "Refurbished Printer"
ENT.Author = "Saint"
ENT.Spawnable = false
ENT.AdminSpawnable = false
ENT.Base = "base_printer"

-- Define Variables
ENT.iName = "Refurbished Printer"

function ENT:SetupDataTables()
	self:DTVar("Int",0,"price")
	self:DTVar("Entity",1,"owning_ent")
end