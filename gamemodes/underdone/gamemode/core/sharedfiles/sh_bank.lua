local Player = FindMetaTable("Player")

function Player:GetBankSize()
	if !IsValid(self) || !self.Data then return 0 end
	return self.BankWeight or 0
end
function Player:GetBankTotalSize() return 200 end

function Player:AddItemToBank(strItem, intAmount)
	if !IsValid(self) || !self.Data then return false end
	local tblItemTable = ItemTable(strItem)
	if !tblItemTable then return false end
	if self:HasBankRoomFor({[strItem] = intAmount}) then
		self.Data.Bank = self.Data.Bank or {}
		local intNewTotal = (self.Data.Bank[strItem] or 0) + intAmount
		self.Data.Bank[strItem] = math.Clamp(intNewTotal, 0, intNewTotal)
		self.BankWeight = (self.BankWeight or 0) + (tblItemTable.Weight * intAmount)
		if SERVER then
			SendUsrMsg("UD_UpdateBankItem", self, {strItem, intAmount})
			self:SaveGame()
		end
		if CLIENT then
			if GAMEMODE.BankMenu then GAMEMODE.BankMenu:LoadBank() end
		end
		return true
	end
	return false
end

function Player:RemoveItemFromBank(strItem, intAmount)
	if !IsValid(self) || !self.Data then return false end
	return self:AddItemToBank(strItem, -intAmount)
end

function Player:GetBank()
	if !IsValid(self) || !self.Data then return end
	return self.Data.Bank or {}
end

function Player:GetBankItem(strItem)
	if !IsValid(self) || !self.Data then return end
	return self.Data.Bank[strItem]
end

function Player:HasBankItem(strItem, intAmount)
	if !IsValid(self) || !self.Data || !self.Data.Bank then return false end
	intAmount = tonumber(intAmount) or 1
	return (self:GetBankItem(strItem) or 0) - intAmount >= 0 && intAmount > 0
end

function Player:HasBankRoomFor(tblItems)
	if !IsValid(self) || !self.Data then return false end
	local intTotal = self:GetBankSize()
	for strItem, intAmount in pairs(tblItems or {}) do
		intTotal = intTotal + (ItemTable(strItem).Weight * intAmount)
	end
	if intTotal > self:GetBankTotalSize() or intTotal < 0 then return false end
	return true
end

if CLIENT then
	usermessage.Hook("UD_UpdateBankItem", function(usrMsg)
		LocalPlayer():AddItemToBank(usrMsg:ReadString(), usrMsg:ReadLong())
	end)
end