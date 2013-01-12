local Player = FindMetaTable("Player")

concommand.Add("UD_PrivateMessage", function(ply, command, args)
	local plyTargetPlayer = player.GetByID(tonumber(args[1]))
	if !IsValid(plyTargetPlayer) then return end
	args[1] = ""
	plyTargetPlayer:ConCommand("UD_ToChatBox " .. string.gsub(ply:Nick(), " ", "_") .. " " .. table.concat(args, " "))
end)

concommand.Add("UD_FriendsMessage", function(ply, command, args)
	local plyTargetPlayer = player.GetByID(tonumber(args[1]))
	if !IsValid(plyTargetPlayer) then return end
	args[1] = ""
	if ply:HasBlocked(plyTargetPlayer) || plyTargetPlayer:HasBlocked(ply) then return end
	plyTargetPlayer:ConCommand("UD_ToChatBox " .. string.gsub(ply:Nick(), " ", "_") .. " " .. table.concat(args, " "))
end)

function Player:UserChangeModel(args)
	if !IsValid(self) then return end
	if !self.UseTarget.Appearance or self.UseTarget:GetPos():Distance(self:GetPos()) > 100 then return end
	if args[1] then
		for _,v in pairs(GAMEMODE.PlayerModel) do
			if table.HasValue( v, args[1] ) then
				self:SetModel(args[1])
				self.Data.Model = args[1]
				self:SaveGame()
			end
		end
	end
end
concommand.Add("UD_UserChangeModel", function(ply, command, args)
	ply:UserChangeModel(args)
end)
