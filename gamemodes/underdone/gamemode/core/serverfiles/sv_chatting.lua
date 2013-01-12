function GM:PlayerCanHearPlayersVoice(pListener, pSpeaker)
	if !IsValid(pSpeaker) || !IsValid(pListener) then return false end --InValid
	local intChatDistance = 1000
	if pSpeaker:GetNWBool("SquadChat") or pListener:GetNWBool("SquadChat") then
		if pListener:IsInSquad(pSpeaker) or pSpeaker:IsInSquad(pListener) then
			local intChatDistance = 10000
		else
			local intChatDistance = 1000
		end 
	end
	if pListener:GetPos():Distance(pSpeaker:GetPos()) >= intChatDistance then return false end --Too Far
	return true --All good :)
end

function GM:PlayerCanSeePlayersChat(strText, bTeamOnly, pListener, pSpeaker)
	if !IsValid(pSpeaker) || !IsValid(pListener) then return false end --InValid
	local tblText = string.ToTable(strText)
	local intChatDistance = 700
	if tblText[#tblText] == "!" && #tblText > 1 then intChatDistance = 7000 end
	if tblText[#tblText] == "@" && #tblText > 1 then intChatDistance = 7000  if !pListener:IsInSquad(pSpeaker) or !pSpeaker:IsInSquad(pListener) then return false end end
	if pListener:GetPos():Distance(pSpeaker:GetPos()) >= intChatDistance then return false end --Too Far
	return true --All good :)
end
