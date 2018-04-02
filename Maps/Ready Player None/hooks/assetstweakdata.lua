Hooks:PostHook( AssetsTweakData, "_init_assets", "victor_romeo_assets", function(self, tweak_data)
    self.pain_door_open = {}
	self.pain_door_open.name_id = "pain_door_open_name"
	self.pain_door_open.texture = "guis/custom_assets/Ready_player_None_Door"
	self.pain_door_open.stages = {
		"Victor Romeo"
	}
	self.pain_door_open.visible_if_locked = true
	self.pain_door_open.unlock_desc_id = "pain_door_open_desc"
	self.pain_door_open.no_mystery = true
	self.pain_door_open.money_lock = 100000

	self.pain_chair_hallway = {}
	self.pain_chair_hallway.name_id = "pain_chair_hallway_name"
	self.pain_chair_hallway.texture = "guis/custom_assets/Ready_player_None_Cover"
	self.pain_chair_hallway.stages = {
		"Victor Romeo"
	}
	self.pain_chair_hallway.visible_if_locked = true
	self.pain_chair_hallway.unlock_desc_id = "pain_chair_hallway_desc"
	self.pain_chair_hallway.no_mystery = true
	self.pain_chair_hallway.money_lock = 100000

	self.pain_double_money = {}
	self.pain_double_money.name_id = "pain_double_money_name"
	self.pain_double_money.texture = "guis/custom_assets/Ready_player_None_Money"
	self.pain_double_money.stages = {
		"Victor Romeo"
	}
	self.pain_double_money.visible_if_locked = true
	self.pain_double_money.unlock_desc_id = "pain_double_money_desc"
	self.pain_double_money.no_mystery = true
	self.pain_double_money.money_lock = 100000
end )