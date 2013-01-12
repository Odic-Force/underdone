local Item = DeriveTable(BaseItem)
Item.Name = "quest_zombieblood"
Item.PrintName = "Bottle of Zombie Blood"
Item.Desc = "Zombie blood is a quest item for Obtain Zombie Blood quest!"
Item.Icon = "icons/Quest_ZombieBlood"
Item.Model = "models/props_junk/glassjug01.mdl"
Item.QuestItem = "quest_zombieblood"
Item.Stackable = true
Item.Dropable = true
Item.Giveable = false
Item.Weight = 1
Register.Item(Item)

local Item = DeriveTable(BaseItem)
Item.Name = "quest_beer"
Item.PrintName = "Beer"
Item.Desc = "A quest item"
Item.Icon = "icons/item_beer"
Item.Model = "models/props/CS_militia/bottle01.mdl"
Item.QuestItem = "quest_beer"
Item.Dropable = true
Item.Giveable = false
Item.Weight = 1
Register.Item(Item)

local Item = DeriveTable(BaseItem)
Item.Name = "quest_oil"
Item.PrintName = "Bottle of Oil"
Item.Desc = "A quest item"
Item.Icon = "icons/item_beer"
Item.Model = "models/props/CS_militia/bottle01.mdl"
Item.QuestItem = "quest_oil"
Item.Dropable = true
Item.Giveable = false
Item.Weight = 1
Register.Item(Item)