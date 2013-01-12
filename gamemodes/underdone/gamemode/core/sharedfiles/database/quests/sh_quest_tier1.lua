local Quest = {}
Quest.Name = "quest_killzombies"
Quest.PrintName = "Kill zombies"
Quest.Story = "Zombies are always attacking newcomers here. Say, tell you what, you kill a couple of them things and I will give you some cash for it."
Quest.TurnInStory = "Nice job, I like the way you handled those zombies - let's do this more often."
Quest.Level = 2
Quest.Kill = {}
Quest.Kill["zombie"] = 20
Quest.GainedExp = 80
Quest.GainedItems = {}
Quest.GainedItems["money"] = 200
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_killzombies2"
Quest.PrintName = "Kill zombies 2"
Quest.Story = "Zombies are always attacking newcomers here. Say, tell you what, you kill a couple of them things and I will give you some cash for it."
Quest.TurnInStory = "Nice job, I like the way you handled those zombies - let's do this more often."
Quest.Level = 3
Quest.Kill = {}
Quest.Kill["zombie"] = 20
Quest.GainedExp = 80
Quest.GainedItems = {}
Quest.GainedItems["money"] = 200
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_killzombies3"
Quest.PrintName = "Kill zombies 3"
Quest.Story = "Zombies are always attacking newcomers here. Say, tell you what, you kill a couple of them things and I will give you some cash for it."
Quest.TurnInStory = "Nice job, I like the way you handled those zombies - let's do this more often."
Quest.Level = 4
Quest.Kill = {}
Quest.Kill["zombie"] = 20
Quest.GainedExp = 80
Quest.GainedItems = {}
Quest.GainedItems["money"] = 200
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_beer"
Quest.PrintName = "Obtain Beer"
Quest.Story = "I need something to quench my thirst, go find me some beer - steal one from a beer crate if you have to."
Quest.Level = 1
Quest.ObtainItems = {}
Quest.ObtainItems["quest_beer"] = 1
Quest.GainedExp = 45
Quest.GainedItems = {}
Quest.GainedItems["money"] = 80
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_cooking"
Quest.PrintName = "Learn to cook"
Quest.Story = "I need something to eat... I have some meat here but I don't have a stove! Find one and cook it for me, just read this book."
Quest.Level = 1
Quest.StartingItems = {}
Quest.StartingItems["book_canofmeat"] = 1
Quest.StartingItems["item_canmeat"] = 5
Quest.ObtainItems = {}
Quest.ObtainItems["item_cancookedmeat"] = 2
Quest.GainedExp = 80
Quest.GainedItems = {}
Quest.GainedItems["money"] = 150
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_crafting"
Quest.PrintName = "Learn to Craft"
Quest.Story = "I will teach you how to craft - here is a book and some materials for your first crafting exprience. Most crafting items are 100% chance, so just use the book and craft the materials."
Quest.Level = 1
Quest.StartingItems = {}
Quest.StartingItems["item_cardboard"] = 4
Quest.StartingItems["book_chineesebox"] = 1
Quest.ObtainItems = {}
Quest.ObtainItems["item_chineese_box"] = 2
Quest.GainedExp = 50
Quest.GainedItems = {}
Quest.GainedItems["money"] = 100
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_oil"
Quest.PrintName = "Oil Drum"
Quest.Story = "I require some oil from a Oil Drum, return to me with the oil I need and I will make it worth your while."
Quest.TurnInStory = "Very good here is a gift that i think will be of some use to you."
Quest.Level = 1
Quest.ObtainItems = {}
Quest.ObtainItems["quest_oil"] = 1
Quest.GainedExp = 30
Quest.GainedItems = {}
Quest.GainedItems["armor_helm_junkhelmet"] = 1
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_fortification"
Quest.PrintName = "Fortification"
Quest.Story = "We need to build some more fortifactions for the base. Go out and get us some wood. You can find it in boxes around the area."
Quest.Level = 1
Quest.ObtainItems = {}
Quest.ObtainItems["wood"] = 10
Quest.GainedExp = 55
Quest.GainedItems = {}
Quest.GainedItems["money"] = 30
Quest.GainedItems["item_healthkit"] = 2
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_zombieblood"
Quest.PrintName = "Obtain Zombie Blood"
Quest.Story = "The virus is spreading and we need an anti-virus! Obtain some blood so we can examine it and cure this virus."
Quest.Level = 3
Quest.ObtainItems = {}
Quest.ObtainItems["quest_zombieblood"] = 10
Quest.GainedExp = 70
Quest.GainedItems = {}
Quest.GainedItems["money"] = 120
Quest.GainedItems["item_antivirus"] = 1
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_killbreen"
Quest.PrintName = "Kill Dr. Breen"
Quest.Story = "Dr. Breen is a pain in the ass for us rebels.  Kill him slowly so he suffers a terrible death in our hands."
Quest.Level = 50
Quest.Kill = {}
Quest.Kill["Breen"] = 1
Quest.GainedExp = 2000
Quest.GainedItems = {}
Quest.GainedItems["money"] = 5000
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_killelite"
Quest.PrintName = "Kill Combine Elites"
Quest.Story = "These elite soldiers of the Combine are blocking our way to destroying Dr. Breen.  Kill these legendary soldiers and you will be rewarded."
Quest.Level = 30
Quest.Kill = {}
Quest.Kill["combine_Elite"] = 10
Quest.GainedExp = 1000
Quest.GainedItems = {}
Quest.GainedItems["money"] = 2000
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_killelite2"
Quest.PrintName = "Kill Combine Elites 2"
Quest.Story = "These elite soldiers of the Combine are blocking our way to destroying Dr. Breen.  Kill these legendary soldiers and you will be rewarded."
Quest.Level = 32
Quest.Kill = {}
Quest.Kill["combine_Elite"] = 10
Quest.GainedExp = 1000
Quest.GainedItems = {}
Quest.GainedItems["money"] = 2000
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_killelite3"
Quest.PrintName = "Kill Combine Elites 3"
Quest.Story = "These elite soldiers of the Combine are blocking our way to destroying Dr. Breen.  Kill these legendary soldiers and you will be rewarded."
Quest.Level = 35
Quest.Kill = {}
Quest.Kill["combine_Elite"] = 10
Quest.GainedExp = 1000
Quest.GainedItems = {}
Quest.GainedItems["money"] = 2000
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_killfirezombies"
Quest.PrintName = "Kill fire zombies"
Quest.Story = "You'd think that fire zombies would kill themselves - dumb creatures - but they're actually a menace. Take them out or we might be overrun!"
Quest.Level = 4
Quest.Kill = {}
Quest.Kill["fire_zombie"] = 20
Quest.GainedExp = 120
Quest.GainedItems = {}
Quest.GainedItems["money"] = 500
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_killfirezombies2"
Quest.PrintName = "Kill fire zombies 2"
Quest.Story = "You'd think that fire zombies would kill themselves - dumb creatures - but they're actually a menace. Take them out or we might be overrun!"
Quest.Level = 5
Quest.Kill = {}
Quest.Kill["fire_zombie"] = 20
Quest.GainedExp = 120
Quest.GainedItems = {}
Quest.GainedItems["money"] = 500
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_killfirezombies3"
Quest.PrintName = "Kill fire zombies 3"
Quest.Story = "You'd think that fire zombies would kill themselves - dumb creatures - but they're actually a menace. Take them out or we might be overrun!"
Quest.Level = 6
Quest.Kill = {}
Quest.Kill["fire_zombie"] = 20
Quest.GainedExp = 120
Quest.GainedItems = {}
Quest.GainedItems["money"] = 500
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_killicezombies"
Quest.PrintName = "Kill ice zombies"
Quest.Story = "Don't be fooled - ice zombies move as quick as any other. That being said, frostbite hurts and we don't want them around."
Quest.Level = 7
Quest.Kill = {}
Quest.Kill["ice_zombie"] = 20
Quest.GainedExp = 150
Quest.GainedItems = {}
Quest.GainedItems["money"] = 600
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_killicezombies2"
Quest.PrintName = "Kill ice zombies 2"
Quest.Story = "Don't be fooled - ice zombies move as quick as any other. That being said, frostbite hurts and we don't want them around."
Quest.Level = 8
Quest.Kill = {}
Quest.Kill["ice_zombie"] = 20
Quest.GainedExp = 150
Quest.GainedItems = {}
Quest.GainedItems["money"] = 600
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_killicezombies3"
Quest.PrintName = "Kill ice zombies 3"
Quest.Story = "Don't be fooled - ice zombies move as quick as any other. That being said, frostbite hurts and we don't want them around."
Quest.Level = 9
Quest.Kill = {}
Quest.Kill["ice_zombie"] = 20
Quest.GainedExp = 150
Quest.GainedItems = {}
Quest.GainedItems["money"] = 600
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_killfastzombies"
Quest.PrintName = "Kill fast zombies"
Quest.Story = "They were bad enough when we could outrun them, but now there are new zombies which can jump over buildings! This has to be stopped!"
Quest.Level = 10
Quest.Kill = {}
Quest.Kill["fastzombie"] = 20
Quest.GainedExp = 250
Quest.GainedItems = {}
Quest.GainedItems["money"] = 700
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_killfastzombies2"
Quest.PrintName = "Kill fast zombies 2"
Quest.Story = "They were bad enough when we could outrun them, but now there are new zombies which can jump over buildings! This has to be stopped!"
Quest.Level = 12
Quest.Kill = {}
Quest.Kill["fastzombie"] = 20
Quest.GainedExp = 250
Quest.GainedItems = {}
Quest.GainedItems["money"] = 700
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_killfastzombies3"
Quest.PrintName = "Kill fast zombies 3"
Quest.Story = "They were bad enough when we could outrun them, but now there are new zombies which can jump over buildings! This has to be stopped!"
Quest.Level = 14
Quest.Kill = {}
Quest.Kill["fastzombie"] = 20
Quest.GainedExp = 250
Quest.GainedItems = {}
Quest.GainedItems["money"] = 700
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_killvorts"
Quest.PrintName = "Kill vortigaunts"
Quest.Story = "Aliens? In my Earth? It's more likely than you think. Get rid of these horrible things!"
Quest.Level = 15
Quest.Kill = {}
Quest.Kill["vortigaunt"] = 20
Quest.GainedExp = 400
Quest.GainedItems = {}
Quest.GainedItems["money"] = 800
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_killvorts2"
Quest.PrintName = "Kill vortigaunts 2"
Quest.Story = "Aliens? In my Earth? It's more likely than you think. Get rid of these horrible things!"
Quest.Level = 17
Quest.Kill = {}
Quest.Kill["vortigaunt"] = 20
Quest.GainedExp = 400
Quest.GainedItems = {}
Quest.GainedItems["money"] = 800
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_killvorts3"
Quest.PrintName = "Kill vortigaunts 3"
Quest.Story = "Aliens? In my Earth? It's more likely than you think. Get rid of these horrible things!"
Quest.Level = 19
Quest.Kill = {}
Quest.Kill["vortigaunt"] = 20
Quest.GainedExp = 400
Quest.GainedItems = {}
Quest.GainedItems["money"] = 800
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_killantworker"
Quest.PrintName = "Kill antlion workers"
Quest.Story = "These things spit acid. If I need to tell you any more, then you might be an idiot."
Quest.Level = 30
Quest.Kill = {}
Quest.Kill["antlionworker"] = 20
Quest.GainedExp = 600
Quest.GainedItems = {}
Quest.GainedItems["money"] = 900
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_killantworker2"
Quest.PrintName = "Kill antlion workers 2"
Quest.Story = "These things spit acid. If I need to tell you any more, then you might be an idiot."
Quest.Level = 32
Quest.Kill = {}
Quest.Kill["antlionworker"] = 20
Quest.GainedExp = 600
Quest.GainedItems = {}
Quest.GainedItems["money"] = 900
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_killantworker3"
Quest.PrintName = "Kill antlion workers 3"
Quest.Story = "These things spit acid. If I need to tell you any more, then you might be an idiot."
Quest.Level = 34
Quest.Kill = {}
Quest.Kill["antlionworker"] = 20
Quest.GainedExp = 600
Quest.GainedItems = {}
Quest.GainedItems["money"] = 900
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_killmanhack"
Quest.PrintName = "Kill manhacks"
Quest.Story = "HOLY CRAP FLYING MACHINES WITH BLADES! Kill these before they're deployed here!"
Quest.Level = 24
Quest.Kill = {}
Quest.Kill["combine_manhack"] = 20
Quest.GainedExp = 800
Quest.GainedItems = {}
Quest.GainedItems["money"] = 1000
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_killmanhack2"
Quest.PrintName = "Kill manhacks 2"
Quest.Story = "HOLY CRAP FLYING MACHINES WITH BLADES! Kill these before they're deployed here!"
Quest.Level = 26
Quest.Kill = {}
Quest.Kill["combine_manhack"] = 20
Quest.GainedExp = 800
Quest.GainedItems = {}
Quest.GainedItems["money"] = 1000
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_killmanhack3"
Quest.PrintName = "Kill manhacks 3"
Quest.Story = "HOLY CRAP FLYING MACHINES WITH BLADES! Kill these before they're deployed here!"
Quest.Level = 28
Quest.Kill = {}
Quest.Kill["combine_manhack"] = 20
Quest.GainedExp = 800
Quest.GainedItems = {}
Quest.GainedItems["money"] = 1000
Register.Quest(Quest)

--[[local Quest = {}
Quest.Name = "quest_killrollermine"
Quest.PrintName = "Kill rollermines"
Quest.Story = "Little angry balls of electricity. Cute, perhaps, but imagine six of them swarming towards you in murderous rage. Yeah. Get them before they get you!"
Quest.Level = 28
Quest.Kill = {}
Quest.Kill["combine_rollermine"] = 20
Quest.GainedExp = 800
Quest.GainedItems = {}
Quest.GainedItems["money"] = 1000
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_killrollermine2"
Quest.PrintName = "Kill rollermines 2"
Quest.Story = "Little angry balls of electricity. Cute, perhaps, but imagine six of them swarming towards you in murderous rage. Yeah. Get them before they get you!"
Quest.Level = 30
Quest.Kill = {}
Quest.Kill["combine_rollermine"] = 20
Quest.GainedExp = 800
Quest.GainedItems = {}
Quest.GainedItems["money"] = 1000
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_killrollermine3"
Quest.PrintName = "Kill rollermines 3"
Quest.Story = "Little angry balls of electricity. Cute, perhaps, but imagine six of them swarming towards you in murderous rage. Yeah. Get them before they get you!"
Quest.Level = 32
Quest.Kill = {}
Quest.Kill["combine_rollermine"] = 20
Quest.GainedExp = 800
Quest.GainedItems = {}
Quest.GainedItems["money"] = 1000
Register.Quest(Quest)]]