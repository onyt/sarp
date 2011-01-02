if SERVER then
	AddCSLuaFile("shared.lua")
	SWEP.Weight = 5
	SWEP.AutoSwitchTo = false
	SWEP.AutoSwitchFrom = false
end

if CLIENT then
	SWEP.DrawAmmo			= true
	SWEP.DrawCrosshair		= false
	SWEP.ViewModelFOV		= 82
	SWEP.ViewModelFlip		= true
	SWEP.CSMuzzleFlashes	= true

	-- This is the font that's used to draw the death icons
	surface.CreateFont("csd", ScreenScale(30), 500, true, true, "CSKillIcons")
	surface.CreateFont("csd", ScreenScale(60), 500, true, true, "CSSelectIcons")
end

SWEP.Base = "weapon_base"

SWEP.Author = "Rickster"
SWEP.Contact = ""
SWEP.Purpose = ""
SWEP.Instructions = ""

SWEP.Spawnable = false
SWEP.AdminSpawnable = false

SWEP.HoldType = "normal"

SWEP.Primary.Sound = Sound("Weapon_AK47.Single")
SWEP.Primary.Recoil = 1.5
SWEP.Primary.Damage = 40
SWEP.Primary.NumShots = 1
SWEP.Primary.Cone = 0.02
SWEP.Primary.Delay = 0.15

SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = -1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "none"

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"

/*---------------------------------------------------------
---------------------------------------------------------*/
function SWEP:Initialize()
	self:SetWeaponHoldType("normal")
	if SERVER then
		self:SetNPCMinBurst( 30 )
		self:SetNPCMaxBurst( 30 )
		self:SetNPCFireRate( 0.01 )
	end

	self.Ironsights = false
end

/*---------------------------------------------------------
Deploy
---------------------------------------------------------*/
function SWEP:Deploy()
	if SERVER then self:SendHoldType("normal") end
	
	self.LASTOWNER = self.Owner
	
	self:SetIronsights(self:GetIronsights())
	return true
end

function SWEP:Holster()
	if CLIENT then return end
	if self:GetIronsights() then
		GAMEMODE:SetPlayerSpeed(self.Owner, GetConVarNumber("wspd"), GetConVarNumber("rspd"))
	end
	return true
end

/*---------------------------------------------------------
Reload does nothing
---------------------------------------------------------*/
function SWEP:Reload()
	self.Weapon:DefaultReload(ACT_VM_RELOAD)
	self:SetIronsights(false)
end

/*---------------------------------------------------------
PrimaryAttack
---------------------------------------------------------*/
function SWEP:PrimaryAttack()
	self.Weapon:SetNextSecondaryFire(CurTime() + self.Primary.Delay)
	self.Weapon:SetNextPrimaryFire(CurTime() + self.Primary.Delay)

	if not self:CanPrimaryAttack() then self:SetIronsights(false) return end
	if not self.Ironsights and GetConVarNumber("ironshoot") ~= 0 then return end
	-- Play shoot sound
	self.Weapon:EmitSound(self.Primary.Sound)

	-- Shoot the bullet
	self:CSShootBullet(self.Primary.Damage, self.Primary.Recoil + 3, self.Primary.NumShots, self.Primary.Cone + .05)

	-- Remove 1 bullet from our clip
	self:TakePrimaryAmmo(1)
	
	if ( self.Owner:IsNPC() ) then return end

	-- Punch the player's view
	self.Owner:ViewPunch(Angle(math.Rand(-0.2,-0.1) * self.Primary.Recoil, math.Rand(-0.1,0.1) *self.Primary.Recoil, 0))
end

/*---------------------------------------------------------
Name: SWEP:PrimaryAttack()
Desc: +attack1 has been pressed
---------------------------------------------------------*/
function SWEP:CSShootBullet(dmg, recoil, numbul, cone)
	if not ValidEntity(self.Owner) then return end
	numbul = numbul or 1
	cone = cone or 0.01

	local bullet = {}
	bullet.Num = numbul or 1
	bullet.Src = self.Owner:GetShootPos()       -- Source
	bullet.Dir = self.Owner:GetAimVector()      -- Dir of bullet
	bullet.Spread = Vector(cone, cone, 0)     -- Aim Cone
	bullet.Tracer = 4       -- Show a tracer on every x bullets
	bullet.Force = 5        -- Amount of force to give to phys objects
	bullet.Damage = dmg

	self.Owner:FireBullets(bullet)
	self.Weapon:SendWeaponAnim(ACT_VM_PRIMARYATTACK)      -- View model animation
	self.Owner:MuzzleFlash()        -- Crappy muzzle light
	self.Owner:SetAnimation(PLAYER_ATTACK1)       -- 3rd Person Animation
	
	if ( self.Owner:IsNPC() ) then return end

	// CUSTOM RECOIL !
	if ( (SinglePlayer() && SERVER) || ( !SinglePlayer() && CLIENT && IsFirstTimePredicted() ) ) then
		local eyeang = self.Owner:EyeAngles()
		eyeang.pitch = eyeang.pitch - recoil
		self.Owner:SetEyeAngles( eyeang )
	end
end

/*---------------------------------------------------------
Checks the objects before any action is taken
This is to make sure that the entities haven't been removed
---------------------------------------------------------*/
function SWEP:DrawWeaponSelection(x, y, wide, tall, alpha)
	local iconletters = {"x", "w", "b", "k", "u", "f", "d", "l", "z", "c"}
	if self.IconLetter and table.HasValue(iconletters, self.IconLetter) then
		draw.SimpleText(self.IconLetter, "CSSelectIcons", x + wide/2, y + tall*0.2, Color(255, 210, 0, 255), TEXT_ALIGN_CENTER)

		-- try to fool them into thinking they're playing a Tony Hawks game
		draw.SimpleText(self.IconLetter, "CSSelectIcons", x + wide/2 + math.Rand(-4, 4), y + tall*0.2+ math.Rand(-14, 14), Color(255, 210, 0, math.Rand(10, 120)), TEXT_ALIGN_CENTER)
		draw.SimpleText(self.IconLetter, "CSSelectIcons", x + wide/2 + math.Rand(-4, 4), y + tall*0.2+ math.Rand(-9, 9), Color(255, 210, 0, math.Rand(10, 120)), TEXT_ALIGN_CENTER)
	else
		// Set us up the texture
		surface.SetDrawColor( 255, 255, 255, alpha )
		surface.SetTexture( self.WepSelectIcon )
		
		// Lets get a sin wave to make it bounce
		local fsin = 0
		
		if self.BounceWeaponIcon then
			fsin = math.sin( CurTime() * 10 ) * 5
		end
		
		// Borders
		y = y + 10
		x = x + 10
		wide = wide - 20
		
		// Draw that motherfucker
		surface.DrawTexturedRect( x + (fsin), y - (fsin),  wide-fsin*2 , ( wide / 2 ) + (fsin) )
		
		// Draw weapon info box
		self:PrintWeaponInfo( x + wide + 20, y + tall * 0.95, alpha )
	end
end

local IRONSIGHT_TIME = 0.25

/*---------------------------------------------------------
Name: GetViewModelPosition
Desc: Allows you to re-position the view model
---------------------------------------------------------*/
function SWEP:GetViewModelPosition(pos, ang)
	if (not self.IronSightsPos) then return pos, ang end

	local bIron = self.Ironsights

	if (bIron != self.bLastIron) then
		self.bLastIron = bIron
		self.fIronTime = CurTime()

		if (bIron) then
			self.SwayScale 	= 0.3
			self.BobScale 	= 0.1
		else
			self.SwayScale 	= 1.0
			self.BobScale 	= 1.0
		end
	end

	local fIronTime = self.fIronTime or 0
	
	if GetConVarNumber("ironshoot") ~= 0 then
		ang:RotateAroundAxis(ang:Right(), -15)
	end
	
	if (not bIron and fIronTime < CurTime() - IRONSIGHT_TIME) then	
		return pos, ang
	end

	local Mul = 1.0

	if (fIronTime > CurTime() - IRONSIGHT_TIME) then
		Mul = math.Clamp((CurTime() - fIronTime) / IRONSIGHT_TIME, 0, 1)

		if not bIron then Mul = 1 - Mul end
	end

	local Offset	= self.IronSightsPos

	if (self.IronSightsAng) then
		ang = ang * 1
		ang:RotateAroundAxis(ang:Right(), 	self.IronSightsAng.x		* Mul)
		ang:RotateAroundAxis(ang:Up(), 		self.IronSightsAng.y * Mul)
		ang:RotateAroundAxis(ang:Forward(), 	self.IronSightsAng.z * Mul)
	end
	
	if GetConVarNumber("ironshoot") ~= 0 then
		ang:RotateAroundAxis(ang:Right(), Mul * 15)
	else
		ang:RotateAroundAxis(ang:Right(), Mul)
	end

	local Right 	= ang:Right()
	local Up 		= ang:Up()
	local Forward 	= ang:Forward()

	pos = pos + Offset.x * Right * Mul
	pos = pos + Offset.y * Forward * Mul
	pos = pos + Offset.z * Up * Mul

	return pos, ang
end


/*---------------------------------------------------------
SetIronsights
---------------------------------------------------------*/
if SERVER then
	function SWEP:SendHoldType(holdtype)
		self:SetWeaponHoldType(holdtype)
		umsg.Start("Drp_SetWeaponHoldType")
			umsg.Entity(self)
			umsg.String(holdtype)
		umsg.End()
	end
elseif CLIENT then
	local function GetWeaponHoldType(um)
		local weapon = um:ReadEntity()
		if ValidEntity(weapon) and weapon.SetWeaponHoldType then
			weapon:SetWeaponHoldType(um:ReadString())
		end
	end
	usermessage.Hook("Drp_SetWeaponHoldType", GetWeaponHoldType)
end

function SWEP:SetIronsights(b)
	if b and SERVER then 
		self:SendHoldType(self.HoldType)
		GAMEMODE:SetPlayerSpeed(self.Owner, GetConVarNumber("wspd") / 3, GetConVarNumber("rspd") / 3)
	elseif SERVER then
		self:SendHoldType("normal")
		GAMEMODE:SetPlayerSpeed(self.Owner, GetConVarNumber("wspd"), GetConVarNumber("rspd"))
	end
	self.Ironsights = b
end

function SWEP:GetIronsights()
	return self.Ironsights
end

SWEP.NextSecondaryAttack = 0
/*---------------------------------------------------------
SecondaryAttack
---------------------------------------------------------*/
function SWEP:SecondaryAttack()
	if not self.IronSightsPos then return end

	if (self.NextSecondaryAttack > CurTime()) then return end

	bIronsights = not self.Ironsights
	
	self:SetIronsights(bIronsights)
	self.NextSecondaryAttack = CurTime() + 0.3
end

/*---------------------------------------------------------
onRestore
	Loaded a saved game
---------------------------------------------------------*/
function SWEP:OnRestore()
	self.NextSecondaryAttack = 0
	self.Ironsights = false
end

function SWEP:OnDrop()
	self.PrimaryClipLeft = self:Clip1()
	self.SecondaryClipLeft = self:Clip2()
	
	if not self.LASTOWNER then return end
	self.PrimaryAmmoLeft = self.LASTOWNER:GetAmmoCount(self:GetPrimaryAmmoType())
	self.SecondaryAmmoLeft = self.LASTOWNER:GetAmmoCount(self:GetSecondaryAmmoType())
end

function SWEP:Equip(NewOwner)
	if self.PrimaryClipLeft and self.SecondaryClipLeft and self.PrimaryAmmoLeft and self.SecondaryAmmoLeft then
		NewOwner:SetAmmo(self.PrimaryAmmoLeft, self:GetPrimaryAmmoType())
		NewOwner:SetAmmo(self.SecondaryAmmoLeft, self:GetSecondaryAmmoType())
		
		self:SetClip1(self.PrimaryClipLeft)
		self:SetClip2(self.SecondaryClipLeft)
	end
end