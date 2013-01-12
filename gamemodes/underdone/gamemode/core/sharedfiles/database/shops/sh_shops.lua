local Shop = {}
Shop.Name = "shop_general"
Shop.PrintName = "Shop General"
Shop.Inventory = {}
--Shop.Inventory["item_orange"] = {}
--Shop.Inventory["item_bananna"] = {}
--Shop.Inventory["item_banannabunch"] = {}
Shop.Inventory["item_smallammo_small"] = {}
Shop.Inventory["item_sniperammo_small"] = {}
Shop.Inventory["item_rifleammo_small"] = {}
Shop.Inventory["item_buckshotammo_small"] = {}
Shop.Inventory["item_smallammo_big"] = {}
Shop.Inventory["item_sniperammo_big"] = {}
Shop.Inventory["item_rifleammo_big"] = {}
Shop.Inventory["item_buckshotammo_big"] = {}
Shop.Inventory["item_healthkit"] = {}
Shop.Inventory["item_antivirus"] = {}
Shop.Inventory["book_wooddistilation"] = {}
Shop.Inventory["item_firestarting_kit"] = {}
Register.Shop(Shop)

local Shop = {}
Shop.Name = "shop_armor"
Shop.PrintName = "Armor Shop"
Shop.Inventory = {}
Shop.Inventory["armor_belt_car"] = {}
Shop.Inventory["armor_belt_leather"] = {}
Shop.Inventory["armor_chest_junkarmor"] = {}
Shop.Inventory["armor_chest_antlionspiked"] = {}
Shop.Inventory["armor_helm_scannergoggles"] = {}
Shop.Inventory["armor_helm_gasmask"] = {}
Shop.Inventory["armor_helm_bones"] = {}
Shop.Inventory["armor_shoulder_combine"] = {}
Shop.Inventory["armor_sheild_cog"] = {}
Shop.Inventory["armor_sheild_saw"] = {}
Shop.Inventory["armor_shield_antlionshell"] = {}
Shop.Inventory["armor_shield_metacarbon"] = {}
Register.Shop(Shop)

local Shop = {}
Shop.Name = "shop_armor2"
Shop.PrintName = "Advanced Armor Shop"
Shop.Inventory = {}
Shop.Inventory["armor_belt_cyborg"] = {}
Shop.Inventory["armor_belt_antlion"] = {}
Shop.Inventory["armor_chest_cyborg"] = {}
Shop.Inventory["armor_chest_antlion"] = {}
Shop.Inventory["armor_helm_headcrab"] = {}
Shop.Inventory["armor_helm_cyborg"] = {}
Shop.Inventory["armor_helm_antlionhelm"] = {}
Shop.Inventory["armor_shoulder_cyborg"] = {}
Shop.Inventory["armor_shoulder_antlion"] = {}
Shop.Inventory["armor_shield_imprvsaw"] = {}
Shop.Inventory["armor_shield_antlionshell2"] = {}
Register.Shop(Shop)

local Shop = {}
Shop.Name = "shop_armor3"
Shop.PrintName = "Master Armor Shop"
Shop.Inventory = {}
Shop.Inventory["armor_belt_skele"] = {}
Shop.Inventory["armor_belt_bio"] = {}
Shop.Inventory["armor_belt_tyrant"] = {}
Shop.Inventory["armor_chest_skele"] = {}
Shop.Inventory["armor_chest_bio"] = {}
Shop.Inventory["armor_chest_tyrant"] = {}
Shop.Inventory["armor_helm_skele"] = {}
Shop.Inventory["armor_helm_bio"] = {}
Shop.Inventory["armor_helm_tyrant"] = {}
Shop.Inventory["armor_shoulder_skele"] = {}
Shop.Inventory["armor_shoulder_bio"] = {}
Shop.Inventory["armor_shoulder_tyrant"] = {}
Shop.Inventory["armor_shield_skele"] = {}
Shop.Inventory["armor_shield_tyrant"] = {}
Register.Shop(Shop)

local Shop = {}
Shop.Name = "shop_weapons"
Shop.PrintName = "Arms Dealer"
Shop.Inventory = {}
Shop.Inventory["weapon_ranged_junkpistol"] = {}
Shop.Inventory["weapon_ranged_junksmg"] = {}
Shop.Inventory["weapon_ranged_junkrifle"] = {}
Shop.Inventory["weapon_ranged_drumshotgun"] = {}
Shop.Inventory["weapon_ranged_heavymacgun"] = {}
Shop.Inventory["weapon_melee_cleaver"] = {}
Shop.Inventory["weapon_melee_leadpipe"] = {}
Shop.Inventory["weapon_melee_knife"] = {}
Shop.Inventory["weapon_melee_fryingpan"] = {}
Shop.Inventory["weapon_melee_skullmace"] = {}
Register.Shop(Shop)

local Shop = {}
Shop.Name = "shop_weapons2"
Shop.PrintName = "Advanced Arms Dealer"
Shop.Inventory = {}
Shop.Inventory["weapon_ranged_revolver"] = {}
Shop.Inventory["weapon_ranged_wornasr"] = {}
Shop.Inventory["weapon_ranged_combine_cannon"] = {}
Shop.Inventory["weapon_melee_harpoon"] = {}
Shop.Inventory["weapon_melee_circularsaw"] = {}
Shop.Inventory["weapon_melee_anttalon"] = {}
Shop.Inventory["weapon_melee_claw"] = {}
Register.Shop(Shop)

local Shop = {}
Shop.Name = "shop_weapons3"
Shop.PrintName = "Master Arms Dealer"
Shop.Inventory = {}
Shop.Inventory["weapon_ranged_plasma"] = {}
Shop.Inventory["weapon_ranged_combinesniper"] = {}
Shop.Inventory["weapon_ranged_tesla"] = {}
Shop.Inventory["weapon_ranged_chaingun"] = {}
Shop.Inventory["weapon_melee_antlionclaw"] = {}
Shop.Inventory["weapon_melee_dualaxe"] = {}
Shop.Inventory["weapon_melee_exhaust"] = {}
Shop.Inventory["weapon_melee_powerhammer"] = {}
Shop.Inventory["weapon_melee_hammer"] = {}
Shop.Inventory["weapon_melee_skele"] = {}
Shop.Inventory["weapon_melee_tyrant"] = {}
Register.Shop(Shop)



--Testing shop
--[[
local Shop = {}
Shop.Name = "shop_weapons"
Shop.PrintName = "Arms Dealer"
Shop.Inventory = {}
Shop.Inventory["weapon_ranged_junkpistol"] = {Price = 1}
Shop.Inventory["weapon_ranged_junksmg"] = {Price = 1}
Shop.Inventory["weapon_ranged_junkrifle"] = {Price = 1}
Shop.Inventory["weapon_ranged_heavymacgun"] = {Price = 1}
Shop.Inventory["weapon_melee_cleaver"] = {Price = 1}
Shop.Inventory["weapon_melee_leadpipe"] = {Price = 1}
Shop.Inventory["weapon_melee_knife"] = {Price = 1}
Shop.Inventory["weapon_melee_circularsaw"] = {Price = 1}
Shop.Inventory["weapon_melee_dualaxe"] = {Price = 1}
Shop.Inventory["weapon_melee_anttalon"] = {Price = 1}
Shop.Inventory["weapon_melee_emptool"] = {Price = 1}
Shop.Inventory["armor_chest_antlion"] = {Price = 1}
Shop.Inventory["armor_shoulder_antlion"] = {Price = 1}
Shop.Inventory["armor_helm_antlionhelm"] = {Price = 1}
Shop.Inventory["armor_helm_cyborg"] = {Price = 1}
Shop.Inventory["armor_chest_cyborg"] = {Price = 1}
Shop.Inventory["armor_shoulder_cyborg"] = {Price = 1}
Shop.Inventory["armor_shield_imprvsaw"] = {Price = 1}
Shop.Inventory["armor_helm_bones"] = {Price = 1}
Shop.Inventory["armor_shield_antlionshell"] = {Price = 1}
Shop.Inventory["armor_belt_antlion"] = {Price = 1}
Register.Shop(Shop)]]