---Hook into "groupaitweakdata.lua" to use; Make sure to hook LOCALLY!

Hooks:PostHook(GroupAITweakData, "init", "q_theWintersFixHookFamilyJewels010", function(self, tweak_data)

	log("Overriden phalanx data")
	
	self.phalanx.spawn_chance.start = 1
	self.phalanx.check_spawn_intervall = -10
	
end