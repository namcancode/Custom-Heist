Hooks:PostHook( AssetsTweakData, "init", "family_jewels_010astwk", function(self)
	
	self.q010fj_keycard = {}
	self.q010fj_keycard.job_lock = "q_keycard"
	self.q010fj_keycard.name_id = "asset_q010fj_keycard"
	self.q010fj_keycard.unlock_desc_id = "asset_q010fj_keycard_desc"
	self.q010fj_keycard.texture = "guis/textures/pd2/mission_briefing/assets/big_oil/day2/asset07"
	self.q010fj_keycard.stages = {
		"family_jewels"
	}
	
	self.q010fj_esdamp = {}
	self.q010fj_esdamp.job_lock = "q_esdamp"
	self.q010fj_esdamp.name_id = "asset_q010fj_esdamp"
	self.q010fj_esdamp.unlock_desc_id = "asset_q010fj_esdamp_desc"
	self.q010fj_esdamp.texture = "guis/textures/pd2/mission_briefing/assets/big_oil/day2/asset03"
	self.q010fj_esdamp.stages = {
		"family_jewels"
	}
	
	self.q010fj_drone = {}
	self.q010fj_drone.job_lock = "q_drone"
	self.q010fj_drone.name_id = "asset_q010fj_drone"
	self.q010fj_drone.unlock_desc_id = "asset_q010fj_drone_desc"
	self.q010fj_drone.texture = "guis/dlcs/mad/textures/pd2/mission_briefing/assets/dark_drone"
	self.q010fj_drone.stages = {
		"family_jewels",
		"family_jewels_loud"
	}
	
	self.q010fj_spotter = {}
	self.q010fj_spotter.job_lock = "q_spotter"
	self.q010fj_spotter.name_id = "asset_q010fj_spotter"
	self.q010fj_spotter.unlock_desc_id = "asset_q010fj_spotter_desc"
	self.q010fj_spotter.texture = "guis/textures/pd2/mission_briefing/assets/generic_assets/spotter"
	self.q010fj_spotter.stages = {
		"family_jewels"
	}
	
	self.q010fj_introskip = {}
	self.q010fj_introskip.saved_job_lock = "q_introskip"
	self.q010fj_introskip.visible_if_locked = true
	self.q010fj_introskip.no_mystery = true
	self.q010fj_introskip.money_lock = 0
	self.q010fj_introskip.name_id = "asset_q010fj_introskip"
	self.q010fj_introskip.unlock_desc_id = "asset_q010fj_introskip_desc"
	self.q010fj_introskip.texture = "guis/textures/pd2/mission_briefing/assets/watch_dogs/day1/escapecar"
	self.q010fj_introskip.stages = {
		"family_jewels_pre"
	}
	
end)