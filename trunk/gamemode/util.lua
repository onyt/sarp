function Notify(ply, msgtype, len, msg)
	if not ValidEntity(ply) then return end
	umsg.Start("_Notify", ply)
		umsg.String(msg)
		umsg.Short(msgtype)
		umsg.Long(len)
	umsg.End()
end

function NotifyAll(msgtype, len, msg)
	for k, v in pairs(player.GetAll()) do
		Notify(v, msgtype, len, msg)
	end
end

function PrintMessageAll(msgtype, msg)
	for k, v in pairs(player.GetAll()) do
		v:PrintMessage(msgtype, msg)
	end
end

function TalkToRange(ply, PlayerName, Message, size)
	local ents = ents.FindInSphere(ply:EyePos(), size)
	local col = team.GetColor(ply:Team())
	local filter = RecipientFilter() 
	filter:RemoveAllPlayers()
	for k, v in pairs(ents) do
		if v:IsPlayer() then
			filter:AddPlayer(v)
		end
	end
	
	umsg.Start("DarkRP_Chat", filter)
		umsg.Short(col.r)
		umsg.Short(col.g)
		umsg.Short(col.b)
		umsg.String(PlayerName)
		umsg.Entity(ply)
		umsg.Short(255)
		umsg.Short(255)
		umsg.Short(255)
		umsg.String(Message)
	umsg.End()
end

function TalkToPerson(receiver, col1, text1, col2, text2, sender)
	umsg.Start("DarkRP_Chat", receiver)
		umsg.Short(col1.r)
		umsg.Short(col1.g)
		umsg.Short(col1.b)
		umsg.String(text1)
		if sender then
			umsg.Entity(sender)
		end
		if col2 and text2 then
			umsg.Short(col2.r)
			umsg.Short(col2.g)
			umsg.Short(col2.b)
			umsg.String(text2)
		end
	umsg.End()
end

function FindPlayer(info)
	local pls = player.GetAll()

	-- Find by Index Number (status in console)
	for k, v in pairs(pls) do
		if tonumber(info) == v:UserID() then
			return v
		end
	end

	-- Find by Steam ID
	for k, v in pairs(pls) do
		if info == v:SteamID() then
			return v
		end
	end

	-- Find by RP Name
	for k, v in pairs(pls) do
		if string.find(string.lower(v:SteamName()), string.lower(tostring(info)), 1, true) ~= nil then
			return v
		end
	end

	-- Find by Partial Nick
	for k, v in pairs(pls) do
		if string.find(string.lower(v:Name()), string.lower(tostring(info)), 1, true) ~= nil then
			return v
		end
	end
	return nil
end
