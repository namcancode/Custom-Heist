core:import("CoreMissionScriptElement")
ElementCustomAchievement = ElementCustomAchievement or class(CoreMissionScriptElement.MissionScriptElement)

function ElementCustomAchievement:init(...)
	ElementCustomAchievement.super.init(self, ...)
end
function ElementCustomAchievement:client_on_executed(...)
	self:on_executed(...)
end

function ElementCustomAchievement:on_executed(instigator)

	if not self._values.enabled then
		return
	end

	if not CustomAchievementAPI then
		return
	end

	CustomAchievementAPI:Unlock(self._values.achievement_id)

	ElementCustomAchievement.super.on_executed(self, instigator)
end
