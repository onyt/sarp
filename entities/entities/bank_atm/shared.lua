ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "Bank_ATM"
ENT.AutomaticFrameAdvance = true 
ENT.Spawnable = false
ENT.AdminSpawnable = true
ENT.Category 		= "Bank ATM"
function ENT:SetAutomaticFrameAdvance( bUsingAnim ) 
	self.AutomaticFrameAdvance = bUsingAnim
end



