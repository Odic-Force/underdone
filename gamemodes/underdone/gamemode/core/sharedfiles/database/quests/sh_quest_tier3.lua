local Quest = {}
Quest.Name = "quest_arsenalupgrade"
Quest.PrintName = "Arsenal Upgrade"
Quest.Story = "Ah, I see you're still lugging around that dinky little pistol.. Here, I'll tell you what. If you collect the materials, I'll upgrade it for you."
Quest.Level = 18
Quest.ObtainItems = {}
Quest.ObtainItems["weapon_ranged_junkpistol"] = 1
Quest.ObtainItems["item_canspoilingmeat"] = 5
Quest.ObtainItems["weapon_melee_wrench"] = 1
Quest.ObtainItems["wood"] = 3
Quest.GainedExp = 300
Quest.GainedItems = {}
Quest.GainedItems["weapon_ranged_drumshotgun"] = 1
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_killantlion"
Quest.PrintName = "Kill Antlions"
Quest.Story = "Dem antlions be eatin meh flowers! Kill 'em all please, before dey git to da garden."
Quest.Level = 25
Quest.Kill = {}
Quest.Kill["antlion"] = 20
Quest.GainedExp = 400
Quest.GainedItems = {}
Quest.GainedItems["money"] = 800
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_killantlion2"
Quest.PrintName = "Kill Antlions 2"
Quest.Story = "Dem antlions be eatin meh flowers! Kill 'em all please, before dey git to da garden."
Quest.Level = 27
Quest.Kill = {}
Quest.Kill["antlion"] = 20
Quest.GainedExp = 400
Quest.GainedItems = {}
Quest.GainedItems["money"] = 800
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_killantlion3"
Quest.PrintName = "Kill Antlions 3"
Quest.Story = "Dem antlions be eatin meh flowers! Kill 'em all please, before dey git to da garden."
Quest.Level = 29
Quest.Kill = {}
Quest.Kill["antlion"] = 20
Quest.GainedExp = 400
Quest.GainedItems = {}
Quest.GainedItems["money"] = 800
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_killantlionboss"
Quest.PrintName = "Kill Antlionboss"
Quest.Story = "People say there is an Antlion boss somewhere. If you can kill it I'll give you something to make it worth your while."
Quest.Level = 40
Quest.TeamAllowed = 2
Quest.Kill = {}
Quest.Kill["antlionguard"] = 1
Quest.GainedExp = 1000
Quest.GainedItems = {}
Quest.GainedItems["money"] = 3500
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_armorupgrade"
Quest.PrintName = "Armor Upgrade"
Quest.Story = "I just got these new blueprints for an awesome armor upgrade, if your interested we might be able to work something out!"
Quest.Level = 20
Quest.ObtainItems = {}
Quest.ObtainItems["weapon_melee_wrench"] = 1
Quest.ObtainItems["armor_chest_junkarmor"] = 1
Quest.ObtainItems["wood"] = 5
Quest.ObtainItems["money"] = 2000
Quest.GainedExp = 500
Quest.GainedItems = {}
Quest.GainedItems["armor_chest_refinedjunkarmor"] = 1
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_revolver"
Quest.PrintName = "An Offer You Can't Refuse"
Quest.Story = "Tell you what, I'll make a deal with you. I found this schematic of a revolver off a combine elite while raiding their base. You bring me the parts for this beast, and I'll weld it all together for you. Deal?"
Quest.Level = 18
Quest.ObtainItems = {}
Quest.ObtainItems["weapon_ranged_junkpistol"] = 1
Quest.ObtainItems["weapon_melee_wrench"] = 1
Quest.ObtainItems["wood"] = 4
Quest.ObtainItems["money"] = 400
Quest.GainedExp = 300
Quest.GainedItems = {}
Quest.GainedItems["weapon_ranged_revolver"] = 1
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_missionthors"
Quest.PrintName = "Mission Thor"
Quest.Story = "There is much power in the reactor cores I obtained yester day I bet I could make quite the weapon for you if you gather the right stuff."
Quest.TurnInStory = "Here you are a weapon of great power, use it wisely. While you do that I think Ill take a nice nap in your money."
Quest.Level = 36
Quest.ObtainItems = {}
Quest.ObtainItems["weapon_melee_dualaxe"] = 1
Quest.ObtainItems["item_canspoilingmeat"] = 14
Quest.ObtainItems["weapon_melee_wrench"] = 4
Quest.ObtainItems["money"] = 5000
Quest.GainedExp = 500
Quest.GainedItems = {}
Quest.GainedItems["weapon_melee_hammer"] = 1
Register.Quest(Quest)