Hooks:Add("LocalizationManagerPostInit", "QFamJewelsLocManOverride", function(loc)
	LocalizationManager:add_localized_strings({
	["hud_carry_meth"] = "Jewelry"
	})
end)

InteractionTweakData.family_jewels_010ovld = InteractionTweakData.init;

function InteractionTweakData:init(...)
	
	InteractionTweakData:family_jewels_010ovld(...)
	
	log("Initted Family Jewels overrides loud!")
	
	--Overrides only
	self.steal_methbag.text_id = "hud_int_hold_take_jewelry"
	self.steal_methbag.action_text_id = "hud_action_taking_jewelry"
	
	self.hack_electric_box.interact_distance = 300
	
end