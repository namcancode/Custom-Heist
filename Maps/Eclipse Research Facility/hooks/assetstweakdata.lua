Hooks:PostHook( AssetsTweakData, "_init_assets", "new_ecl_assets", function(self, tweak_data)
    self.eclipse_medical_room = {}
	self.eclipse_medical_room.name_id = "eclipse_medical_room_name"
	self.eclipse_medical_room.texture = "guis/custom_asset/medical_room"
	self.eclipse_medical_room.stages = {
		"the_factory"
	}
	self.eclipse_medical_room.visible_if_locked = true
	self.eclipse_medical_room.unlock_desc_id = "eclipse_medical_room_desc"
	self.eclipse_medical_room.no_mystery = true
	self.eclipse_medical_room.money_lock = tweak_data:get_value("money_manager", "mission_asset_cost_small", 7)

	self.eclipse_laptop_camera = {}
	self.eclipse_laptop_camera.name_id = "eclipse_laptop_camera_name"
	self.eclipse_laptop_camera.texture = "guis/custom_asset/access_camera"
	self.eclipse_laptop_camera.stages = {
		"the_factory"
	}
	self.eclipse_laptop_camera.visible_if_locked = true
	self.eclipse_laptop_camera.unlock_desc_id = "eclipse_laptop_camera_desc"
	self.eclipse_laptop_camera.no_mystery = true
	self.eclipse_laptop_camera.money_lock = tweak_data:get_value("money_manager", "mission_asset_cost_small", 7)

	self.eclipse_bag_man = {}
	self.eclipse_bag_man.name_id = "eclipse_bag_man_name"
	self.eclipse_bag_man.texture = "guis/custom_asset/bag_man"
	self.eclipse_bag_man.stages = {
		"the_factory"
	}
	self.eclipse_bag_man.visible_if_locked = true
	self.eclipse_bag_man.unlock_desc_id = "eclipse_bag_man_desc"
	self.eclipse_bag_man.no_mystery = true
	self.eclipse_bag_man.money_lock = tweak_data:get_value("money_manager", "mission_asset_cost_small", 7)
end )