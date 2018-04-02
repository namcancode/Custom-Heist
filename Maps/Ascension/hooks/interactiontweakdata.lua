Hooks:PostHook( InteractionTweakData, "init", "ascension_custom_interactions", function(self, tweak_data)

	self.ascension_verify_blood_sample = {
		icon = "interaction_keyboard",
		text_id = "hud_ascension_verify_blood_sample",
		timer = 8,
		start_active = false,
		interact_distance = 200,
		special_equipment = "blood_sample_ascension",
		equipment_consume = true,
		equipment_text_id = "hint_ascension_no_blood_sample",
		sound_start = "bar_keyboard",
		sound_interupt = "bar_keyboard_cancel",
		sound_done = "bar_keyboard_finished"
	}

	self.ascension_ee_send_folder_data = {
		icon = "interaction_keyboard",
		text_id = "hud_ascension_ee_send_folder_data",
		timer = 12,
		start_active = false,
		interact_distance = 200,
		sound_start = "bar_keyboard",
		sound_interupt = "bar_keyboard_cancel",
		sound_done = "bar_keyboard_finished"
	}

	self.ascension_ee_activate_process = {
		text_id = "hud_ascension_ee_activate_process",
		timer = 4,
		start_active = false,
		interact_distance = 200
	}

	self.ascension_take_blood_sample = {
		text_id = "hud_ascension_take_blood_sample",
		timer = 10,
		start_active = false,
		interact_distance = 150,
		special_equipment_block = "blood_sample_ascension"
	}

	self.ascension_pickup_folder = {
		text_id = "hud_ascension_pickup_folder",
		timer = 5,
		start_active = false,
		interact_distance = 150,
	}

end)