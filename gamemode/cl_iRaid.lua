/*---------------------------
	iRaid
		[A groups system.]
			~Saint
*/---------------------------

-- HUD
surface.CreateFont("coolvetica", 28, 300, true, false, "PartyName")
surface.CreateFont("coolvetica", 20, 200, true, false, "PartyMember")
local y = 0
function DrawParty()
	if !LocalPlayer().DarkRPVars then return end
	if !LocalPlayer().DarkRPVars["pName"] then return end
	draw.WordBox(1, 10, 50, " " .. LocalPlayer().DarkRPVars["pName"] .. " ", "PartyName", Color(0,0,0,100), Color(255,255,255,255))
	y = 80
	for k,v in pairs(player.GetAll()) do
		if v.DarkRPVars["pName"] == LocalPlayer().DarkRPVars["pName"] then
			draw.WordBox(1, 10, y, "      " .. v:Nick() .. " ", "PartyMember", Color(0,0,0,100), Color(255,255,255,255))
			local QuadTable = {} 
			QuadTable.texture 	= surface.GetTextureID( (v.DarkRPVars["pTex"] or "gui/silkicons/user") )
			QuadTable.color		= Color(255,255,255,255) 
			QuadTable.x = 13
			QuadTable.y = y+2
			QuadTable.w = 16 
			QuadTable.h = 16
			draw.TexturedQuad( QuadTable )
			y = y + 22
		end
	end
end
hook.Add("HUDPaint", "DrawParty", DrawParty)
