--Dont mess with this stuff its just for compatability
SWEP.WorldModel	= "models/weapons/w_pistol.mdl"
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "none"
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"
SWEP.HoldType = "normal"
------------------------------------------------------

function SWEP:Initialize()
	self:SetWeaponHoldType(self.HoldType)
	timer.Simple(0.25, function()
		if self.Owner.Data.Paperdoll["slot_primaryweapon"] then
			local strPrimaryWeapon = self.Owner.Data.Paperdoll["slot_primaryweapon"]
			local tblItemTable = GAMEMODE.DataBase.Items[strPrimaryWeapon]
			self:SetNWString("item", tblItemTable.Name)
			self.HoldType = tblItemTable.HoldType
		end

		self:SetWeaponHoldType(self.HoldType)
	end)
end

function SWEP:OnRemove()
	if SERVER then
		if self.WeaponTable && self.WeaponTable.AmmoType != "none" then
			self.Owner:GiveAmmo(self:Clip1(), self.WeaponTable.AmmoType)
		end
	end
end

function SWEP:SetWeapon(tblWeapon)
	if tblWeapon then
		self.WeaponTable = tblWeapon
		self:SetNWString("item", self.WeaponTable.Name)
		return true
	end
	return false
end

function SWEP:Think()
	if self.Item != self:GetNWString("item") then
		self.Item = self:GetNWString("item")
		self.WeaponTable = GAMEMODE.DataBase.Items[self.Item] or {}
		if self.WeaponTable.AmmoType && self.WeaponTable.AmmoType != "none" then
			self:SetClip1(0)
			self:Reload()
		end
	end
end

function SWEP:Reload()
	if self:GetNWBool("reloading") == true then return false end
	local strAmmoType = self.WeaponTable.AmmoType
	local intClipSize = self.WeaponTable.ClipSize
	local intCurrentAmmo = self.Owner:GetAmmoCount(strAmmoType)
	if strAmmoType != "none" && self:Clip1() < self.WeaponTable.ClipSize && intCurrentAmmo > 0 then
		self:SetNWBool("reloading", true)
		self.Owner:SetAnimation( PLAYER_RELOAD )
		self:SetNextPrimaryFire(CurTime() + self.WeaponTable.ReloadTime)
		if (game.SinglePlayer() && SERVER) or (!game.SinglePlayer() && CLIENT) then
			if self.WeaponTable.ReloadSound then self:EmitSound(self.WeaponTable.ReloadSound) end
		end
		timer.Simple(self.WeaponTable.ReloadTime, function()
			if !self or !self.Owner or !self.Owner:Alive() then return end
			self.Owner:RemoveAmmo(self.WeaponTable.ClipSize - self:Clip1(), self.WeaponTable.AmmoType)
			self:SetClip1(math.Clamp(self.WeaponTable.ClipSize, 0, self:Clip1() + intCurrentAmmo))
			self:SetNWBool("reloading", false)
		end)
	end
end

function SWEP:PrimaryAttack()
	if self:Clip1() != 0 then
		self:WeaponAttack()
	else
		self:Reload()
	end
end

function SWEP:SecondaryAttack()
	local ply = self.Owner
	self:RightCallBack(ply)
	local intFireRate = self:GetFireRate(self.WeaponTable.FireRate)
	self:SetNextSecondaryFire(CurTime() + (1 / intFireRate))
end

function SWEP:WeaponAttack()
	self.Owner:SetAnimation( PLAYER_ATTACK1 )
	if self.WeaponTable then
		local isMelee = self.WeaponTable.Melee
		local intRange = self.Owner:GetEyeTrace().HitPos:Distance(self.Owner:GetEyeTrace().StartPos)
		local intMaxRange = 4000
		if isMelee then intMaxRange = 70 end
		local tblBullet = {}
		tblBullet.Src 		= self.Owner:GetShootPos()
		tblBullet.Dir 		= self.Owner:GetAimVector()
		tblBullet.Force		= (self.WeaponTable.Power or 3) / 2
		tblBullet.Spread 	= Vector(self.WeaponTable.Accuracy, self.WeaponTable.Accuracy, 0)
		tblBullet.Num 		= self.WeaponTable.NumOfBullets
		tblBullet.Damage	= self:GetDamage(self.WeaponTable.Power or 3)
		tblBullet.TracerName = self.WeaponTable.TracerName or "Tracer"
		tblBullet.Tracer	= 2
		if isMelee then tblBullet.Tracer = 0 end
		tblBullet.AmmoType	= self.WeaponTable.AmmoType
		if isMelee then tblBullet.AmmoType = "pistol" end
		tblBullet.Callback = function(plyShooter, trcTrace, tblDamageInfo)
			--if tblDamageInfo:GetDamagePosition():Distance(self.Owner:GetPos()) > intMaxRange then tblDamageInfo:SetDamage(0) return false, false end
			self:BulletCallBack(plyShooter, trcTrace, tblDamageInfo)
		end
		if intRange <= intMaxRange then
			self.Owner:FireBullets(tblBullet)
		end
		if SERVER && !isMelee then
			self:SetClip1(self:Clip1() - 1)
		end
		local intFireRate = self:GetFireRate(self.WeaponTable.FireRate)
		if CLIENT && !isMelee && CurTime() >= (self.NextBulletEffect or 0) then
			self.Owner:MuzzleFlash()
			local strEffect = "ShellEject"
			if self.WeaponTable.AmmoType == "buckshot" then strEffect = "ShotgunShellEject" end
			local effectdata = EffectData()
			effectdata:SetOrigin(GAMEMODE.PapperDollEnts[self.Owner:EntIndex()]["slot_primaryweapon"]:GetPos())
			effectdata:SetAngles(GAMEMODE.PapperDollEnts[self.Owner:EntIndex()]["slot_primaryweapon"]:GetAngles() + Angle(0, 90, 0))
			effectdata:SetEntity(self)
			effectdata:SetMagnitude(1)
			effectdata:SetScale(1)
			util.Effect(strEffect, effectdata)
			self.NextBulletEffect = CurTime() + (1 / intFireRate)
		end
		if SERVER then
			self.Owner:SlowDown((1 / intFireRate))
		end
		if (game.SinglePlayer() && SERVER) or (!game.SinglePlayer() && CLIENT) && self.WeaponTable.Sound then
			self:EmitSound(self.WeaponTable.Sound)
		end
		self:SetNextPrimaryFire(CurTime() + (1 / intFireRate))
	end
end

function SWEP:BulletCallBack(plyShooter, trcTrace, tblDamageInfo)
	for strSkill, intSkillLevel in pairs(plyShooter.Data.Skills or {}) do
		local tblSkillTable = SkillTable(strSkill)
		if plyShooter:GetSkill(strSkill) > 0 && tblSkillTable.BulletCallBack then
			tblSkillTable:BulletCallBack(plyShooter, plyShooter:GetSkill(strSkill), trcTrace, tblDamageInfo)
		end
	end
end

function SWEP:RightCallBack(ply)
	for strItem, intAmount in pairs(ply.Data.Inventory or {}) do
		local tblItemTable = ItemTable(strItem)
		if ply:GetItem(strItem) > 0 && tblItemTable.SecondaryCallBack then
			local tblweapon = ItemTable(ply:GetSlot("slot_primaryweapon"))
			if tblweapon.Name == strItem then
				tblItemTable:SecondaryCallBack(ply)
			end
		end
	end
end

function SWEP:GetDamage(intDamage)
	for strStat, tblStatTable in pairs(GAMEMODE.DataBase.Stats) do
		if self.Owner:GetStat(strStat) && tblStatTable.DamageMod then
			intDamage = tblStatTable:DamageMod(self.Owner, self.Owner:GetStat(strStat), intDamage)
		end
	end
	intDamage = self.Owner:CallSkillHook("damage_mod", intDamage)
	return intDamage
end

function SWEP:GetFireRate(intFireRate)
	for strStat, tblStatTable in pairs(GAMEMODE.DataBase.Stats) do
		if self.Owner:GetStat(strStat) && tblStatTable.FireRateMod then
			intFireRate = tblStatTable:FireRateMod(self.Owner, self.Owner:GetStat(strStat), intFireRate)
		end
	end
	intFireRate = self.Owner:CallSkillHook("firerate_mod", intFireRate)
	return intFireRate
end
