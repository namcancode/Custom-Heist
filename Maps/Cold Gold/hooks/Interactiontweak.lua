InteractionTweakData.cold_gold = InteractionTweakData.init;

function InteractionTweakData:init(...)
	
	InteractionTweakData:cold_gold(...)

	log("Initted Cold Gold hook!")
	
	self.q009cg_move_boxes = {}
	self.q009cg_move_boxes.text_id = "q009cg_move_boxes"
	self.q009cg_move_boxes.action_text_id = "q009cg_move_boxes_action"
	self.q009cg_move_boxes.timer = 30
	self.q009cg_move_boxes.sound_start = "bar_bag_generic"
	self.q009cg_move_boxes.sound_interupt = "bar_bag_generic_cancel"
	self.q009cg_move_boxes.sound_done = "bar_bag_generic_finished"
	self.q009cg_move_boxes.interact_distance = 250
	
end