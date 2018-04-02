InteractionTweakData.quack_un_28402 = InteractionTweakData.init;

function InteractionTweakData:init(...)
	
	InteractionTweakData:quack_un_28402(...)
	
	self.quack_search_code = {}
	self.quack_search_code.text_id = "quack_interact_search_code"
	self.quack_search_code.action_text_id = "quack_interact_search_action"
	self.quack_search_code.timer = 10
	
	self.quack_copy_files = {}
	self.quack_copy_files.text_id = "quack_interact_copy_files"
	self.quack_copy_files.action_text_id = "quack_interact_copy_action"
	self.quack_copy_files.timer = 10
	self.quack_copy_files.equipment_text_id = "quack_interact_need_files"
	self.quack_copy_files.special_equipment = "quack_files"
	self.quack_copy_files.equipment_consume = true
	
	self.quack_put_back = {}
	self.quack_put_back.text_id = "quack_interact_put_back"
	self.quack_put_back.action_text_id = "quack_interact_put_back_action"
	self.quack_put_back.timer = 2
	self.quack_put_back.equipment_text_id = "quack_interact_need_files"
	self.quack_put_back.special_equipment = "quack_files_copied"
	self.quack_put_back.equipment_consume = true
	
	self.quack_hack_power = {}
	self.quack_hack_power.text_id = "quack_interact_hack_power"
	self.quack_hack_power.action_text_id = "quack_interact_hack_action"
	self.quack_hack_power.timer = 15
end