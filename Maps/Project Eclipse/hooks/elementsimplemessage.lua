core:import("CoreMissionScriptElement")
ElementSimpleMessage = ElementSimpleMessage or class(CoreMissionScriptElement.MissionScriptElement)

function ElementSimpleMessage:init(...)
	ElementSimpleMessage.super.init(self, ...)
	self._values.message = ""
end
function ElementSimpleMessage:client_on_executed(...)
	self:on_executed(...)
end

function ElementSimpleMessage:on_executed(instigator)

	if not self._values.enabled then
		--log("ElementSimpleMessage NOT executed: Element disabled.")
		return
	end

	local hud = managers.hud
	local simple_text = hud._hud_simple_message
	--log("executed simplemessage")
	simple_text:set_simple_text(self._values.message)

	ElementSimpleMessage.super.on_executed(self, instigator)
end

