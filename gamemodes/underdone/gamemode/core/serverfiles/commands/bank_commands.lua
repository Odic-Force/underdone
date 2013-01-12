local Player = FindMetaTable("Player")

function Player:DipositeItem(strItem, intAmount)
	if !IsValid(self) || !self.Data then return false end
	if !self.UseTarget.Bank or self.UseTarget:GetPos():Distance(self:GetPos()) > 100 then return end
	if self:HasItem(strItem, intAmount) && self:AddItemToBank(strItem, intAmount) then
		self:RemoveItem(strItem, intAmount)
		return true
	end
	return false
end
concommand.Add("UD_DipostiteItem", function(ply, command, args)
	ply:DipositeItem(args[1], tonumber(args[2] or 1))
end)
function Player:WithdrawItem(strItem, intAmount)
	if !IsValid(self) then return end
	if !self.UseTarget.Bank or self.UseTarget:GetPos():Distance(self:GetPos()) > 100 then return end
	if self:HasBankItem(strItem, intAmount) && self:AddItem(strItem, intAmount) then
		self:RemoveItemFromBank(strItem, intAmount)
		return true
	end
	return false
end
concommand.Add("UD_WithdrawItem", function(ply, command, args)
	ply:WithdrawItem(args[1], tonumber(args[2] or 1))
end)

