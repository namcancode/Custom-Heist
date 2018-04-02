core:import("CoreMissionScriptElement")
ElementSimpleMessageNew = ElementSimpleMessageNew or class(CoreMissionScriptElement.MissionScriptElement)

function ElementSimpleMessageNew:init(...)
	ElementSimpleMessageNew.super.init(self, ...)
	self._values.message = ""
end
function ElementSimpleMessageNew:client_on_executed(...)
	self:on_executed(...)
end

function ElementSimpleMessageNew:on_executed(instigator)

	if not self._values.enabled then
		--log("ElementSimpleMessageNew NOT executed: Element disabled.")
		return
	end

	local hud = managers.hud
	local simple_text = hud._hud_simple_message_new
	--log("executed simplemessage")
	simple_text:set_simple_text(self._values.message)

	ElementSimpleMessageNew.super.on_executed(self, instigator)
end

