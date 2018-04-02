core:import("CoreMissionScriptElement")
ElementRNGHelper = ElementRNGHelper or class(CoreMissionScriptElement.MissionScriptElement)

function ElementRNGHelper:init(...)
	ElementRNGHelper.super.init(self, ...)
	self._enabled_SOs = {}
end
function ElementRNGHelper:client_on_executed(...)
	self:on_executed(...)
end

function ElementRNGHelper:on_executed(instigator)
	if not self._values.enabled then
		return
	end
	
	if self._values.elements then
		for _, id in ipairs(self._values.elements) do
			local element = self:get_mission_element(id)
			if element._values.enabled then
				if not table.contains(self._enabled_SOs, id) then
					table.insert(self._enabled_SOs, id)
				end
			end
		end
	end
	
	for _, id in ipairs(self._enabled_SOs) do
		local element = self:get_mission_element(id)
		if not element._values.enabled then
			element._values.enabled = true
		end
	end
	
	ElementRNGHelper.super.on_executed(self, instigator)
end
