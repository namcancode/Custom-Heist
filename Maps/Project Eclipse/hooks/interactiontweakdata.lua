Hooks:PostHook( InteractionTweakData, "init", "new_interaction_eclipse", function(self, tweak_data)
	
	self.press_to_interact = {}
	self.press_to_interact.icon = "develop"
	self.press_to_interact.text_id = "hud_do_not_press_that_button"
	self.press_to_interact.sound_event = "insert_usb_stick"

end )

Hooks:Add("LocalizationManagerPostInit", "new_interaction_eclipse_loc", function(loc)

    loc:add_localized_strings( {
        ["hud_do_not_press_that_button"] = "Do NOT press that button"
    } )

end)