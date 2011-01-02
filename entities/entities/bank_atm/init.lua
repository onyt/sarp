AddCSLuaFile( "cl_init.lua" ) 
AddCSLuaFile( "shared.lua" )
include('shared.lua') 
function ENT:Initialize( )
	self:SetModel( "models/props_c17/signpole001.mdl" ) //RANDOM SHIT YO!
	self:SetSolid(  SOLID_BBOX ) 
	self:SetUseType( SIMPLE_USE )
	self:DropToFloor()
end
function ENT:OnTakeDamage()
	return false
end 
function ENT:SpawnFunction( ply, tr )
	if not tr.Hit then return end
	local ent = ents.Create( "bank_atm" )
	ent:SetPos( tr.HitPos + tr.HitNormal * 1 )
	ent:Spawn()
	ent:Activate()
	ent:SetUseType(SIMPLE_USE)
	return ent
end
function ENT:AcceptInput( Name, Activator, Caller )	
	if Name == "Use" and Caller:IsPlayer() then
			if tonumber(Caller.seenbank) == 0 then
		Caller.seenbank = 1
		end
		umsg.Start("seemybank", Caller)
			umsg.End()	
	end
end //END