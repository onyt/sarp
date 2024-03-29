local meta = FindMetaTable("Player")

function meta:NewHungerData()
	self:SetDarkRPVar("Energy", 100)
	self:GetTable().LastHungerUpdate = 0
end

function meta:HungerUpdate()
	if not GetConVarNumber("hungerspeed") then return end
	self:SetDarkRPVar("Energy", math.Clamp(self.DarkRPVars.Energy - GetConVarNumber("hungerspeed") / 10, 0, 100))
	self:GetTable().LastHungerUpdate = CurTime()

	if self.DarkRPVars.Energy == 0 then
		self:SetHealth(self:Health() - GetConVarNumber("starverate"))
		if self:Health() <= 0 then
			self:GetTable().Slayed = true
			self:Kill()
		end
	end
end
