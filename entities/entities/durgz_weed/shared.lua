ENT.Type = "anim"
ENT.Base = "durgz_base"
ENT.PrintName = "Marijuana"
ENT.Nicknames = {"pot", "weed", "grass", "marijuana"}
ENT.OverdosePhrase = {"smoked too much", "breathed in a lot of"}
ENT.Author = "cheesylard (inspired by ninjers)"
ENT.Spawnable = true
ENT.AdminSpawnable = true 
ENT.Information	 = "~ 420 ~" 

ENT.TRANSITION_TIME = 6

--function for high visuals

if(CLIENT)then
	
	
	--killicon.Add("durgz_weed","killicons/durgz_weed_killicon",Color( 255, 80, 0, 255 ))
	
	
	local TRANSITION_TIME = ENT.TRANSITION_TIME; --transition effect from sober to high, high to sober, in seconds how long it will take etc.
	local HIGH_INTENSITY = 0.77; --1 is max, 0 is nothing at all
	
	
	local function DoWeed()
		if(!DURGZ_LOST_VIRGINITY)then return; end
		--self:SetNetworkedFloat( "SprintSpeed"
		local pl = LocalPlayer();
		
		
		local tab = {}
		tab[ "$pp_colour_addr" ] = 0
		tab[ "$pp_colour_addg" ] = 0
		tab[ "$pp_colour_addb" ] = 0
		//tab[ "$pp_colour_brightness" ] = 0
		//tab[ "$pp_colour_contrast" ] = 1
		tab[ "$pp_colour_mulr" ] = 0
		tab[ "$pp_colour_mulg" ] = 0
		tab[ "$pp_colour_mulb" ] = 0
		
		
		if( pl:GetNetworkedFloat("durgz_weed_high_start") && pl:GetNetworkedFloat("durgz_weed_high_end") > CurTime() )then
		
			if( pl:GetNetworkedFloat("durgz_weed_high_start") + TRANSITION_TIME > CurTime() )then
			
				local s = pl:GetNetworkedFloat("durgz_weed_high_start");
				local e = s + TRANSITION_TIME;
				local c = CurTime();
				local pf = (c-s) / (e-s);
				pl:SetDSP(6);
				
				tab[ "$pp_colour_colour" ] =   1 - pf*0.3 //pf*4*HIGH_INTENSITY + 1
				tab[ "$pp_colour_brightness" ] = -pf*0.11
				tab[ "$pp_colour_contrast" ] = 1 + pf*1.62
				DrawMotionBlur( 0.03, pf*HIGH_INTENSITY, 0);
				DrawColorModify( tab ) 
				
			elseif( pl:GetNetworkedFloat("durgz_weed_high_end") - TRANSITION_TIME < CurTime() )then
			
				local e = pl:GetNetworkedFloat("durgz_weed_high_end");
				local s = e - TRANSITION_TIME;
				local c = CurTime();
				local pf = 1 - (c-s) / (e-s);
				
				pl:SetDSP(1)
				
				tab[ "$pp_colour_colour" ] = 1 - pf*0.3
				tab[ "$pp_colour_brightness" ] = -pf*0.11
				tab[ "$pp_colour_contrast" ] = 1 + pf*1.62
				DrawMotionBlur( 0.03, pf*HIGH_INTENSITY, 0);
				DrawColorModify( tab ) 
				
			else
				
				tab[ "$pp_colour_colour" ] = 0.77//5*HIGH_INTENSITY
				tab[ "$pp_colour_brightness" ] = -0.11
				tab[ "$pp_colour_contrast" ] = 2.62
				DrawMotionBlur( 0.03, HIGH_INTENSITY, 0);
				DrawColorModify( tab ) 
				pl:SetDSP(6);
				
			end
			
			
		end
	end
	hook.Add("RenderScreenspaceEffects", "durgz_weed_high", DoWeed)
end