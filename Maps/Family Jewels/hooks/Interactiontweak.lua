InteractionTweakData.family_jewels_010 = InteractionTweakData.init;

function InteractionTweakData:init(...)
	
	InteractionTweakData:family_jewels_010(...)
	
	log("Initted Family Jewels interactions!")
	
	--Adds
	self.q010fj_assetkeycard = {}
	self.q010fj_assetkeycard.text_id = "interact_q010fj_asset_keycard"
	self.q010fj_assetkeycard.action_text_id = "interact_q010fj_asset_keycard_action"
	self.q010fj_assetkeycard.timer = 2
	self.q010fj_assetkeycard.sound_start = "bar_bag_generic"
	self.q010fj_assetkeycard.sound_interupt = "bar_bag_generic_cancel"
	self.q010fj_assetkeycard.sound_done = "bar_bag_generic_finished"
	self.q010fj_assetkeycard.interact_distance = 200
	self.q010fj_assetkeycard.start_active = false
	self.q010fj_assetkeycard.can_interact_in_civilian = true
	
	self.q010fj_assetesdamp = {}
	self.q010fj_assetesdamp.text_id = "interact_q010fj_asset_esdamp"
	self.q010fj_assetesdamp.action_text_id = "interact_q010fj_asset_esdamp_action"
	self.q010fj_assetesdamp.timer = 2
	self.q010fj_assetesdamp.sound_start = "bar_bag_generic"
	self.q010fj_assetesdamp.sound_interupt = "bar_bag_generic_cancel"
	self.q010fj_assetesdamp.sound_done = "bar_bag_generic_finished"
	self.q010fj_assetesdamp.interact_distance = 200
	self.q010fj_assetesdamp.can_interact_in_civilian = true
	
	self.q010fj_assetdrone = {}
	self.q010fj_assetdrone.text_id = "interact_q010fj_asset_drone"
	self.q010fj_assetdrone.action_text_id = "interact_q010fj_asset_drone_action"
	self.q010fj_assetdrone.timer = 2
	self.q010fj_assetdrone.sound_start = "bar_bag_generic"
	self.q010fj_assetdrone.sound_interupt = "bar_bag_generic_cancel"
	self.q010fj_assetdrone.sound_done = "bar_bag_generic_finished"
	self.q010fj_assetdrone.interact_distance = 200
	self.q010fj_assetdrone.can_interact_in_civilian = true
	
	self.q010fj_assetspotter = {}
	self.q010fj_assetspotter.text_id = "interact_q010fj_asset_spotter"
	self.q010fj_assetspotter.action_text_id = "interact_q010fj_asset_spotter_action"
	self.q010fj_assetspotter.timer = 2
	self.q010fj_assetspotter.sound_start = "bar_bag_generic"
	self.q010fj_assetspotter.sound_interupt = "bar_bag_generic_cancel"
	self.q010fj_assetspotter.sound_done = "bar_bag_generic_finished"
	self.q010fj_assetspotter.interact_distance = 200
	self.q010fj_assetspotter.can_interact_in_civilian = true
	
	self.q010fj_opendronewindow = {}
	self.q010fj_opendronewindow.text_id = "interact_q010fj_opendronewindow"
	self.q010fj_opendronewindow.action_text_id = "interact_q010fj_opendronewindow_action"
	self.q010fj_opendronewindow.timer = 4
	self.q010fj_opendronewindow.sound_start = "bar_glasscutter"
	self.q010fj_opendronewindow.sound_interupt = "bar_glasscutter_cancel"
	self.q010fj_opendronewindow.sound_done = "bar_glasscutter_finished"
	self.q010fj_opendronewindow.interact_distance = 300
	
	self.q010fj_openvent = {}
	self.q010fj_openvent.text_id = "interact_q010fj_openvent"
	self.q010fj_openvent.action_text_id = "interact_q010fj_openvent_action"
	self.q010fj_openvent.timer = 4
	self.q010fj_openvent.sound_start = "bar_move_vent_panel"
	self.q010fj_openvent.sound_interupt = "bar_move_vent_panel_cancel"
	self.q010fj_openvent.sound_done = "bar_move_vent_panel_finished"
	self.q010fj_openvent.interact_distance = 200
	
end