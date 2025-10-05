local _, playerClass = UnitClass("player")

if playerClass == "WARLOCK" then
    local frame = CreateFrame("Frame")
    frame:RegisterEvent("CHAT_MSG_SPELL_SELF_BUFF")

	frame:SetScript("OnEvent", function()
		if not arg1 then return end
		
		if string.find(arg1, "You cast Inferno.") then
			PlaySoundFile("Interface\\AddOns\\Inferno\\inferno.mp3")
		end
	end)
end
