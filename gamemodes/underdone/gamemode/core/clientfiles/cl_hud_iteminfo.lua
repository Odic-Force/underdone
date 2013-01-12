local function DrawItemInfo()
	for _, ent in pairs(ents.FindByClass("prop_*")) do 
		if !IsValid(ent) then return end
		if ent:GetNWString("PrintName") && ent:GetNWInt("Amount") > 0 then
			if ent:GetPos():Distance(LocalPlayer():GetPos()) < 200 then
				local posENTpos = (ent:GetPos() + Vector(0, 0, 10)):ToScreen()
				local strText = ent:GetNWString("PrintName")
				if ent:GetNWInt("Amount") > 1 then strText = strText .. " x" .. ent:GetNWInt("Amount") end
				if ent:GetOwner() == LocalPlayer() or !IsValid(ent:GetOwner()) or LocalPlayer():IsInSquad(ent:GetOwner()) then
					draw.SimpleTextOutlined(strText, "UiBold", posENTpos.x, posENTpos.y - 10, clrWhite, 1, 1, 1, clrDrakGray)
					ent:SetColor( Color(255, 255, 255, 255) )
				else
					ent:SetColor( Color(255, 255, 255, 0) ) 
				end
			end
		end
		if ent:GetPos():Distance(LocalPlayer():GetPos()) < 200 then
			for _,info in pairs(GAMEMODE.QuestObject) do 
				if ent:GetModel() == info.Model then
					local posENTpos = (ent:GetPos() + Vector(0, 0, info.Height)):ToScreen()
					draw.SimpleTextOutlined(info.PrintName, "UiBold", posENTpos.x, posENTpos.y, clrWhite, 1, 1, 1, clrDrakGray)
				end
			end
		end
	end	
end
hook.Add("HUDPaint", "DrawItemInfo", DrawItemInfo)