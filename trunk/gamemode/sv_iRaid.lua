/*---------------------------
	iRaid
		[A groups system.]
			~Saint
*/---------------------------

-- Define Global Table
local iR = {}

-- Message metafunc
local pmeta = FindMetaTable("Player")
function pmeta:iRPrint(i)
	self:PrintMessage(HUD_PRINTTALK, "[iRaid] " .. i)
end

function pmeta:iRPrintParty(i)
	for k,v in pairs(player.GetAll()) do
		if v.Party.Name != nil and v.Party.Name == self.Party.Name then
			v:PrintMessage(HUD_PRINTTALK, "[iRaid] " .. i)
		end
	end
end
pmeta = NULL

-- Assign party table
function AssignPartyTable(p)
	p.Party = {}
	p:SetDarkRPVar("pTex","gui/silkicons/user")
end
hook.Add("PlayerInitialSpawn", "AssignPartyTable", AssignPartyTable)

-- Find player
local function FindPlayer(i)
	for k,v in pairs(player.GetAll()) do
		if string.find(v:Nick(), i) then return v end
	end
	return nil
end

-- Create a party
function CreateParty(p,c,a)
	local PartyName = table.concat(a, " ")
	
	if iR[PartyName] then p:iRPrint("A party with that name already created!") return false end
	if p.Party.Name then p:iRPrint("You must leave your current party before creating another. Type 'ir_leaveparty' in console to leave the party.") return false end
	if PartyName == "" then p:iRPrint("Invalid party name.") return false end
	
	iR[PartyName] = {}
	p.Party.Name = PartyName
	p.Party.Owner = true
	
	p:iRPrint("You have created the '" .. PartyName .. "' party.")
	
	p:SetDarkRPVar("pName",PartyName)
	p:SetDarkRPVar("pTex","gui/silkicons/shield")
end
concommand.Add("ir_createparty", CreateParty)

-- Joining a party
function InviteToParty(p,c,a)
	local Target = FindPlayer(string.lower(table.concat(a, " ")))
	if !Target then p:iRPrint("Player not found!") return false end
	if !p.Party.Name then p:iRPrint("You are not in a group.") return false end
	if p.Party.Name == Target.Party.Name then p:iRPrint("Target is already in the group.") return false end
	if Target.Party.Name then p:iRPrint("Target is already in a group.") return false end
	if !p.Party.Owner then p:iRPrint("You do not own the party.") return false end
	
	Target.InvitedTo = p.Party.Name
	Target:iRPrint("You have been invited to the '" .. p.Party.Name .. "' party. Type 'ir_accept' in console to accept.")
	p:iRPrint("You have invited '" .. Target:Nick() .. "' to the party.")
end
concommand.Add("ir_invite", InviteToParty)

function AcceptInvite(p,c,a)
	if !p.InvitedTo then p:iRPrint("You were not invited into a party.") return false end
	if p.Party.Name then p:iRPrint("You are already in a party. Type 'ir_leaveparty' in console to leave the party.") return false end
	
	p.Party.Name = p.InvitedTo
	p.InvitedTo = nil
	p:iRPrint("You have joined the '" .. p.Party.Name .. "' party.")
	p:iRPrintParty(p:Nick() .. " has joined your party.")
	
	p:SetDarkRPVar("pName",p.Party.Name)
end
concommand.Add("ir_accept", AcceptInvite)

-- Leaving a party
function LeaveParty(p,c,a)
	if !p.Party.Name then p:iRPrint("You are not in a party.") return false end
	
	p:iRPrintParty(p:Nick() .. " has left the party.")
	p:iRPrint("You have left the '" .. p.Party.Name .. "' party.")
	
	if p.Party.Owner then
		p:iRPrintParty("The party leader has left, thus the party has ended.")
		iR[p.Party.Name] = nil
		for k,v in pairs(player.GetAll()) do
			if v.Party.Name == p.Party.Name then
				v.Party.Name = nil
				v:SetDarkRPVar("pName")
			end
		end
	end
	
	p.Party.Owner = false
	p.Party.Name = nil
	
	p:SetDarkRPVar("pName")
	p:SetDarkRPVar("pTex","gui/silkicons/user")
end
concommand.Add("ir_leaveparty", LeaveParty)

function LeaveOnDC(p)
	if p.Party.Owner then
		p:iRPrintParty("The party leader has left, thus the party has ended.")
		iR[p.Party.Name] = nil
		for k,v in pairs(player.GetAll()) do
			if v.Party.Name == p.Party.Name then
				v.Party.Name = nil
				v:SetDarkRPVar("pName")
			end
		end
	end
end
hook.Add("PlayerDisconnected", "LeaveOnDC", LeaveOnDC)

-- Friendly fire off
function PartyFF(e,i,at,am,d)
	if e:IsPlayer() and e != at and e.Party and at.Party and at.Party.Name != nil and at.Party.Name == e.Party.Name then
		d:ScaleDamage(0)
	end
end
hook.Add("EntityTakeDamage", "PartyFF", PartyFF)

-- Administration
function KickFromParty(p,c,a)
	if !p.Party.Owner then p:iRPrint("You are not the owner of a party.") return false end
	local Target = FindPlayer(table.concat(a, " "))
	if !Target then p:iRPrint("Player not found!") return false end
	if Target.Party.Name != p.Party.Name then p:iRPrint("Player not in your party.") return false end
	
	Target:ConCommand("ir_leaveparty")
end
concommand.Add("ir_kick", KickFromParty)
