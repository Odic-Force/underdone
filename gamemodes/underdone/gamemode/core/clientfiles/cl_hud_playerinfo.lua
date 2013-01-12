local function DrawPlayerInfo()
	for _, ply in pairs(player.GetAll()) do
		if IsValid(ply) && LocalPlayer() != ply then
			if ply:GetPos():Distance(LocalPlayer():GetPos()) < 200 then
				if !ply:IsPlayer() then return end
				local posPlayerPos = (ply:GetPos() + Vector(0, 0, 80)):ToScreen()
				local strDisplayText = ply:Nick() .. " lv." ..  ply:GetLevel()
				surface.SetFont("UiBold")
				local wide, high = surface.GetTextSize(strDisplayText)
				draw.SimpleTextOutlined(strDisplayText, "UiBold", posPlayerPos.x, posPlayerPos.y, clrWhite, 1, 1, 1, clrDrakGray)
				local strIcon = "gui/player"
				if ply:IsAdmin() then strIcon = "gui/admin" end
				surface.SetDrawColor(255, 255, 255, 255)
				surface.SetMaterial(Material(strIcon))
				surface.DrawTexturedRect(posPlayerPos.x + (wide / 2) + 5, posPlayerPos.y - 8, 16, 16)
			end
		end
	end

end
hook.Add("HUDPaint", "DrawPlayerInfo", DrawPlayerInfo)