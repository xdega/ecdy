frame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED");
local function eventHandler(self, event, ...)
	if event=="COMBAT_LOG_EVENT_UNFILTERED" then
		local timestamp, type, hideCaster, sourceGUID, sourceName, sourceFlags, sourceFlags2, destGUID, destName, destFlags, destFlags2 = select(1, ...)
		if type=="SPELL_CAST_SUCCESS" then
			local spellName, sourceName
			if spellName=="Darkness" then
				SendChatMessage(spellName.." Down! ("..sourceName..")","YELL")
			end
		end
	end
end

frame:SetScript("OnEvent", eventHandler);
