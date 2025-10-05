local triggerText = "You cast Inferno."

local frame = CreateFrame("Frame")
frame:RegisterEvent("CHAT_MSG_SPELL_SELF_BUFF")
frame:RegisterEvent("CHAT_MSG_SPELL_SELF_DAMAGE")
frame:RegisterEvent("CHAT_MSG_SPELL_CREATURE_VS_SELF_DAMAGE")

frame:SetScript("OnEvent", function()
    if arg1 and string.find(arg1, triggerText) then
        PlaySoundFile("Interface\\AddOns\\Inferno\\inferno.mp3")
    end
end)
