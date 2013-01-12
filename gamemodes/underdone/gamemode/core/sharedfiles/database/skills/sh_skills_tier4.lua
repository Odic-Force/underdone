local Skill = {}
Skill.Name = "skill_mule"
Skill.PrintName = "Mule"
Skill.Icon = "icons/junk_box1"
Skill.Desc = {}
Skill.Desc["story"] = "You learn the way of the mule and can carry more stuff in your inventory."
Skill.Desc[1] = "Increase Max Weight by 5"
Skill.Desc[2] = "Increase Max Weight by 10"
Skill.Desc[3] = "Increase Max Weight by 15"
Skill.Desc[4] = "Increase Max Weight by 20"
Skill.Desc[5] = "Increase Max Weight by 25"
Skill.Desc[6] = "Increase Max Weight by 30"
Skill.Tier = 4
Skill.Levels = 6
function Skill:OnSet(plyPlayer, intSkillLevel, intOldSkillLevel)
	local tblStatTable = {}
	tblStatTable[0] = 0
	tblStatTable[1] = 5
	tblStatTable[2] = 10
	tblStatTable[3] = 15
	tblStatTable[4] = 20
	tblStatTable[5] = 25
	tblStatTable[6] = 30
	plyPlayer:AddStat("stat_maxweight", tblStatTable[intSkillLevel] - tblStatTable[intOldSkillLevel])
end
Register.Skill(Skill)

local Skill = {}
Skill.Name = "skill_soldier"
Skill.PrintName = "Soldier"
Skill.Icon = "icons/weapon_sniper1"
Skill.Desc = {}
Skill.Desc["story"] = "You become proficent with ranged weapons that use rifle ammo."
Skill.Desc[1] = "Every bullet with a rifle ammo does 3% more damage"
Skill.Desc[2] = "Every bullet with a rifle ammo does 7% more damage"
Skill.Tier = 4
Skill.Levels = 2
Skill.Hooks = {}
Skill.Hooks["damage_mod"] = function(plyPlayer, intSkillLevel, intDamage)
	if !plyPlayer:IsMelee() && plyPlayer:GetActiveAmmoType() == "ar2" && intSkillLevel > 0 then
		local intPercent = 3
		if intSkillLevel == 2 then intPercent = 7 end
		intDamage = intDamage + (intDamage * (intPercent / 100))
	end
	return intDamage
end
Register.Skill(Skill)

local Skill = {}
Skill.Name = "skill_sniper"
Skill.PrintName = "Sniper"
Skill.Icon = "icons/weapon_sniper1"
Skill.Desc = {}
Skill.Desc["story"] = "It doesn't matter how far away you are - you'll always hit your target with perfect accuracy."
Skill.Desc[1] = "Every bullet with a sniper ammo does 5% more damage"
Skill.Desc[2] = "Every bullet with a sniper ammo does 10% more damage"
Skill.Tier = 4
Skill.Levels = 2
Skill.Hooks = {}
Skill.Hooks["damage_mod"] = function(plyPlayer, intSkillLevel, intDamage)
	if !plyPlayer:IsMelee() && plyPlayer:GetActiveAmmoType() == "SniperRound" && intSkillLevel > 0 then
		local intPercent = 5
		if intSkillLevel == 2 then intPercent = 10 end
		intDamage = intDamage + (intDamage * (intPercent / 100))
	end
	return intDamage
end
Register.Skill(Skill)

local Skill = {}
Skill.Name = "skill_gunslinger"
Skill.PrintName = "Gun Slingger"
Skill.Icon = "icons/weapon_pistol"
Skill.Desc = {}
Skill.Desc["story"] = "Small ammo weapons just click with you."
Skill.Desc[1] = "Every bullet with a small ammo does 6% more damage"
Skill.Desc[2] = "Every bullet with a small ammo does 12% more damage"
Skill.Tier = 4
Skill.Levels = 2
Skill.Hooks = {}
Skill.Hooks["damage_mod"] = function(plyPlayer, intSkillLevel, intDamage)
	if !plyPlayer:IsMelee() && plyPlayer:GetActiveAmmoType() == "smg1" && intSkillLevel > 0 then
		local intPercent = 6
		if intSkillLevel == 2 then intPercent = 12 end
		intDamage = intDamage + (intDamage * (intPercent / 100))
	end
	return intDamage
end
Register.Skill(Skill)

local Skill = {}
Skill.Name = "skill_hunter"
Skill.PrintName = "Hunter"
Skill.Icon = "icons/weapon_shotgun"
Skill.Desc = {}
Skill.Desc["story"] = "After hundreds of hunting trips you are a master of the shotgun."
Skill.Desc[1] = "Every bullet with buckshot ammo does 5% more damage"
Skill.Desc[2] = "Every bullet with buckshot ammo does 7% more damage"
Skill.Desc[3] = "Every bullet with buckshot ammo does 10% more damage"
Skill.Tier = 4
Skill.Levels = 3
Skill.Hooks = {}
Skill.Hooks["damage_mod"] = function(plyPlayer, intSkillLevel, intDamage)
	if !plyPlayer:IsMelee() && plyPlayer:GetActiveAmmoType() == "buckshot" && intSkillLevel > 0 then
		local intPercent = 5
		if intSkillLevel == 2 then intPercent = 7 end
		if intSkillLevel == 3 then intPercent = 10 end
		intDamage = intDamage + (intDamage * (intPercent / 100))
	end
	return intDamage
end
Register.Skill(Skill)