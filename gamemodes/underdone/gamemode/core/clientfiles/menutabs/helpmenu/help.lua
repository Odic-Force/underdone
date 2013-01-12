local tblFAQ = {}
PANEL = {}
function PANEL:Init()
	self.HelpList = CreateGenericList(self, 2, false, true)
	self:CreateHelp()
	self:LoadHelp()
end

function PANEL:PerformLayout()
	self.HelpList:SetSize(self:GetWide(), self:GetTall())
end

function PANEL:CreateHelp()
	tblFAQ[1] = {Text = "What is this?", Color = clrWhite}
	tblFAQ[2] = {Text = "This is a gamemode called Underdone, It's an RPG by the Shell Shocked Gaming and Tower Yard Entitertainment Team.", Color = clrDrakGray}
	tblFAQ[3] = {Text = "What do I do?", Color = clrWhite}
	tblFAQ[4] = {Text = "You can do many things in Underdone, such as doing quests, killing npcs, and collecting rare items. Play it as you would an normal RPG.", Color = clrDrakGray}
	tblFAQ[5] = {Text = "How do I get money?", Color = clrWhite}
	tblFAQ[7] = {Text = "Unlike some other gamemodes you might be famillar with Underdone does not jsut give you money, You are expected to earn it through quests, selling items, and picking up droped items.", Color = clrDrakGray}
	tblFAQ[8] = {Text = "How do I open the Inventory?", Color = clrWhite}
	tblFAQ[9] = {Text = "To open your main menu containign the inventory and skills and players tabs press and hold the Q button, as you would in sandbox", Color = clrDrakGray}
	tblFAQ[10] = {Text = "How do I use my Skill Points?", Color = clrWhite}
	tblFAQ[11] = {Text = "If you open your main mennu (see above) you will see a skills tab, goto that panel and you can see the full sellection of skills available. If you can not get a skill it will apear grayed out. To spend a Skill Point double click the icon of the skill you woudl like to get.", Color = clrDrakGray}
end
	tblFAQ[12] = {Text = "How do I craft/cook items?", Color = clrWhite}
	tblFAQ[13] = {Text = "First, use the book in your inventory. Next, look for the small blue book icon above your inventory and click that. You will have a menu to either read books you have used or to craft items - make sure to follow the requirements of items by hovering over them first!", Color = clrDrakGray}
	tblFAQ[14] = {Text = "I'm new and I'm lost, what should I do?", Color = clrWhite}
	tblFAQ[15] = {Text = "Start off by entering the two-story house and talking to Dr. Kleiner - He's sure to have a few odd jobs for newbies! Be sure to read quest descriptions, they might have vital clues to the job at hand.", Color = clrDrakGray}
	tblFAQ[16] = {Text = "Can I reset my skills to redistribute my points?", Color = clrWhite}
	tblFAQ[17] = {Text = "Of course you can! Just open console and type ud_resetskills to instantly reset your points. Warning: This costs $1000 to do each time!", Color = clrDrakGray}

function PANEL:LoadHelp()
	self.HelpList:AddItem(CreateGenericLabel(nil, "MenuLarge", "Welcome to the Underdone Help Menu", clrWhite))
	for _, tblTextInfo in pairs(tblFAQ) do
		self.HelpList:AddItem(CreateGenericLabel(nil, nil, tblTextInfo.Text, tblTextInfo.Color))
	end
end
vgui.Register("helptab", PANEL, "Panel")



