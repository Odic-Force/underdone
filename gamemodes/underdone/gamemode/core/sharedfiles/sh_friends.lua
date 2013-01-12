local Player = FindMetaTable("Player")

function Player:GetFriends()
	if !IsValid(self) || !self.Data then return end
	return self.Data.Friends or {}
end

function Player:GetFriendsFriend(Friend)
	if !IsValid(self) || !self.Data then return end
	return self.Data.Friends[Friend]
end

function Player:HasBlocked(Friend)
	if !IsValid(self) || !self.Data then return end
	return self.Data.Friends[Friend].Blocked
end

function Player:AddFriend(Friend, BoolBlocked)
	if !self.Data then return false end
	self.Data.Friends = self.Data.Friends or {}
	self.Data.Friends[Friend] = {}
	self.Data.Friends[Friend] = {Blocked = BoolBlocked or false}
	if SERVER then
		SendUsrMsg("UD_UpdateFriends", self, {Friend, self.Data.Friends[Friend].Blocked or false})
		self:SaveGame()
	end
	if CLIENT then
		if GAMEMODE.FriendsMenu then GAMEMODE.FriendsMenu:LoadFriends() end
	end
	return true
end

function Player:DeleteFriend(Friend)
	if !self.Data then return false end
	if !self.Data.Friends then return end
	if !self.Data.Friends[Friend] then return end
	self.Data.Friends[Friend] = nil
	if SERVER then
		self:SaveGame()
	end
	return true
end

function Player:BlockFriend(Friend)
	if !self.Data then return false end
	if !self.Data.Friends then return end
	if !self.Data.Friends[Friend] then return end
	if self:HasBlocked(Friend) then self.Data.Friends[Friend] = {Blocked = false} end
	self.Data.Friends[Friend] = {Blocked = true}
	if SERVER then
		SendUsrMsg("UD_UpdateFriends", self, {Friend, self.Data.Friends[Friend].Blocked or false})
		self:SaveGame()
	end
	self:SaveGame()
	return true
end

if CLIENT then
	usermessage.Hook("UD_UpdateFriends", function(usrMsg)
		LocalPlayer():AddFriend(usrMsg:ReadString())
	end)
end
