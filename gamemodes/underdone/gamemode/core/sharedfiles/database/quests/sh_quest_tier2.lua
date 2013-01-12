local Quest = {}
Quest.Name = "quest_killcombinethumper"
Quest.PrintName = "Kill Combine Thumper"
Quest.Story = "Those combine thumpers are disturbing my work and I can't carry on like this... Can you do something about it?"
Quest.Level = 20
Quest.Kill = {}
Quest.Kill["combine_thumper"] = 2
Quest.GainedExp = 500
Quest.GainedItems = {}
Quest.GainedItems["money"] = 900
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_killcombine"
Quest.PrintName = "My poor Satalite!"
Quest.Story = "Those damned combine keep making using my satalite array equipment as target practice! I cant work with swiss cheese! Please help me! Kill those horrible things!"
Quest.Level = 18
Quest.Kill = {}
Quest.Kill ["combine_smg"] = 15
Quest.GainedExp = 500
Quest.GainedItems = {}
Quest.GainedItems["money"] = 1000
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_killcombine2"
Quest.PrintName = "My poor Satalite! 2"
Quest.Story = "Those damned combine keep making using my satalite array equipment as target practice! I cant work with swiss cheese! Please help me! Kill those horrible things!"
Quest.Level = 20
Quest.Kill = {}
Quest.Kill ["combine_smg"] = 15
Quest.GainedExp = 500
Quest.GainedItems = {}
Quest.GainedItems["money"] = 1000
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_killcombine3"
Quest.PrintName = "My poor Satalite! 3"
Quest.Story = "Those damned combine keep making using my satalite array equipment as target practice! I cant work with swiss cheese! Please help me! Kill those horrible things!"
Quest.Level = 23
Quest.Kill = {}
Quest.Kill ["combine_smg"] = 15
Quest.GainedExp = 500
Quest.GainedItems = {}
Quest.GainedItems["money"] = 1000
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_killzombine"
Quest.PrintName = "Zombie Boss"
Quest.Story = "It's time to kill the zombine - the zombie boss!"
Quest.Level = 20
Quest.Kill = {}
Quest.Kill ["zombine"] = 1
Quest.GainedExp = 400
Quest.GainedItems = {}
Quest.GainedItems["money"] = 1000
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_monkeybusiness"
Quest.PrintName = "Monkey Business"
Quest.Story = "Folks 'round here don't get much exotic fruit no more, not since the cleansing... If you can git me sum ripe banana I'd give you a hook I found in a zombie."
Quest.Level = 5
Quest.ObtainItems = {}
Quest.ObtainItems["item_bananna"] = 10
Quest.GainedExp = 65
Quest.GainedItems = {}
Quest.GainedItems["weapon_melee_meathook"] = 1
Register.Quest(Quest)

local Quest = {}
Quest.Name = "quest_toolwrench"
Quest.PrintName = "I need Tools!"
Quest.Story = "My research cannot continue without the proper equipment. I hear those evil combine are utilising wrenches to maintain their thumpers. Collect one of these for me! It would be very much appreciated."
Quest.Level = 20
Quest.ObtainItems = {}
Quest.ObtainItems["weapon_melee_wrench"] = 1
Quest.GainedExp = 310
Quest.GainedItems = {}
Quest.GainedItems["money"] = 600
Register.Quest(Quest)
