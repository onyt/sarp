local CUR = "$"
require("datastream") --[[ teh fukk dont remove this! ]]--
local DOT = "."
local savetimer = 10 --//HOW OFTEN THE BANK IS GOING TO SAVE (DEFAULT IS 10 SECOUNDS!))
local interesttimer = 1000 --//HOW MANY SECOUNDS IT TAKES TO GET YOUR BANK INTEREST ( DEFAULT IS 255 SECOUNDS!))
function bankvalue ( ply )
	unique_id = sql.QueryValue("SELECT unique_id FROM player_bank WHERE unique_id = '"..steamID.."'")
	bank = sql.QueryValue("SELECT bank FROM player_bank WHERE unique_id = '"..steamID.."'")
	ply:SetNWString("unique_id", unique_id)
	ply:SetNWInt("bank", bank)
end
function Savebank ( ply )
	bank = ply:GetNWInt("bank")
	unique_id = ply:GetNWString ("SteamID")
	sql.Query("UPDATE player_bank SET bank = "..bank.." WHERE unique_id = '"..unique_id.."'")
end
function check_bank()
		if (!sql.TableExists("player_bank")) then
			query = "CREATE TABLE player_bank ( unique_id varchar(255), bank int )"
			result = sql.Query(query)
		end
			end	
function new_bank( SteamID, ply )
		steamID = SteamID
		sql.Query( "INSERT INTO player_bank (`unique_id`, `bank`)VALUES ('"..steamID.."', '100')" )
		result = sql.Query( "SELECT unique_id, bank FROM player_bank WHERE unique_id = '"..steamID.."'" )
		if (result) then
		bankvalue( ply )
end
end
function player_check( ply )
	steamID = ply:GetNWString("SteamID")
	result = sql.Query("SELECT unique_id, bank FROM player_bank WHERE unique_id = '"..steamID.."'")
	if (result) then
			bankvalue( ply ) // We will call this to retrieve the stats
	else
		new_bank( steamID, ply ) // Create a new player :D
	end
end
function Initialize()
	check_bank()
end

function intrest(ply) Notify(ply, 1, 4, "You got "..CUR..(tonumber(ply:GetNetworkedVar("bank"))*0.01).." interest from the bank.") ply:AddMoney(tonumber(ply:GetNetworkedVar("bank"))*0.01) end

function Pspawn( ply )
	timer.Create("Steam_id_delay", 1, 1, function()
		SteamID = ply:SteamID()
		ply.seenbank = 0
		ply:SetNWString("SteamID", SteamID)
		timer.Create("Savebank", savetimer, 0, function() Savebank( ply ) end)
		timer.Create(ply:UniqueID() .. "giefintrest", interesttimer, 0, function() intrest( ply ) end )
		player_check( ply ) 
end)
end
hook.Add( "PlayerInitialSpawn", "Pspawn", Pspawn )
hook.Add( "Initialize", "Initialize", Initialize )
function pbanks(ply)
if tonumber(ply.seenbank) == 1 then
ply.seenbank = 0
	end
end
datastream.Hook( "bankclose", pbanks );
concommand.Add( "p_1", function( ply, cmd, args )
if not tonumber(args[1]) then return end 
if tonumber(ply.seenbank) == 1 then
if ply.DarkRPVars.money >= tonumber(args[1]) then
ply:AddMoney(-args[1])
		ply:SetNWInt("bank", ply:GetNetworkedInt( "bank" ) + args[1]);
		Notify(ply, 1, 9, "You deposited "..args[1]..CUR..DOT)
Savebank ( ply )		
end
end
end )
concommand.Add( "p_2", function( ply, cmd, args )
if not tonumber(args[1]) then return end 
if tonumber(ply.seenbank) == 1 then
if tonumber(ply:GetNetworkedInt( "bank" )) >= tonumber(args[1]) then
ply:AddMoney(args[1])
ply:SetNWInt("bank", ply:GetNetworkedInt( "bank" ) - args[1]);
		Notify(ply, 1, 9, "You withdrawn "..args[1]..CUR..DOT)	
		Savebank ( ply )
end
end
end )
 local function pSetbank(ply, cmd, args)
	if not args[1] then return end
	if ply:EntIndex() ~= 0 and not ply:IsSuperAdmin() then
		return
	end
	local amount = math.floor(tonumber(args[2]))
	if not amount then
		if ply:EntIndex() == 0 then
			print(string.format(LANGUAGE.invalid_x, "argument", args[2]))
		else
			ply:PrintMessage(2, string.format(LANGUAGE.invalid_x, "argument", args[2]))
		end 
		return
	end
	local target = FindPlayer(args[1])
	if target then
		local nick = ""
target:SetNWInt("bank", amount)
end
end
concommand.Add("rp_setbank", pSetbank)
//ONLY GUSTAVGR/BLOWN25 TAKES CREDITS FOR THIS DARKRP BANK SYSTEM.
//PLEASE DO NOT MOFIDY WITHOUT PERMISSION!.