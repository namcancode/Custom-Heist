InteractionTweakData.golden_cruise = InteractionTweakData.init;

function InteractionTweakData:init(...)
	
	InteractionTweakData:golden_cruise(...)
	
	self.q006_stealth_trigger_detector = {}
	self.q006_stealth_trigger_detector.text_id = "q006_stealth_interact_trigger_detector"
	self.q006_stealth_trigger_detector.action_text_id = "q006_stealth_interact_trigger_detector_action"
	self.q006_stealth_trigger_detector.timer = 3
	self.q006_stealth_trigger_detector.special_equipment = "blow_torch"
	self.q006_stealth_trigger_detector.equipment_text_id = "hud_equipment_need_blowtorch"
	self.q006_stealth_trigger_detector.sound_start = "bar_blowtorch"
	self.q006_stealth_trigger_detector.sound_interupt = "bar_blowtorch_end"
	self.q006_stealth_trigger_detector.sound_done = "bar_blowtorch_end"
	
	self.q006_stealth_manhole = {}
	self.q006_stealth_manhole.text_id = "q006_stealth_interact_manhole"
	self.q006_stealth_manhole.action_text_id = "q006_stealth_interact_manhole_action"
	self.q006_stealth_manhole.timer = 5
	self.q006_stealth_manhole.interact_distance = 200
	
	self.q006_stealth_valve = {}
	self.q006_stealth_valve.text_id = "q006_stealth_interact_valve"
	self.q006_stealth_valve.action_text_id = "q006_stealth_interact_valve_action"
	self.q006_stealth_valve.timer = 1
	self.q006_stealth_valve.interact_distance = 200
	
	self.q006_stealth_pipes = {}
	self.q006_stealth_pipes.text_id = "q006_stealth_interact_pipes"
	self.q006_stealth_pipes.action_text_id = "q006_stealth_interact_pipes_action"
	self.q006_stealth_pipes.timer = 10
	self.q006_stealth_pipes.interact_distance = 200
	self.q006_stealth_pipes.sound_start = "bar_crowbar_open_metal"
	self.q006_stealth_pipes.sound_interupt = "bar_crowbar_open_metal_cancel"
	self.q006_stealth_pipes.sound_done = "bar_crowbar_open_metal_finished"
	self.q006_stealth_pipes.equipment_text_id = "hud_equipment_need_wrench"
	self.q006_stealth_pipes.special_equipment = "quack_wrench"
	self.q006_stealth_pipes.equipment_consume = false
	
	self.q006_stealth_wrench = {}
	self.q006_stealth_wrench.text_id = "q006_stealth_interact_wrench"
	self.q006_stealth_wrench.action_text_id = "q006_stealth_interact_wrench_action"
	self.q006_stealth_wrench.timer = 0
	self.q006_stealth_wrench.interact_distance = 200
	self.q006_stealth_wrench.sound_event = "money_grab"
	
	self.q006_stealth_lamp = {}
	self.q006_stealth_lamp.text_id = "q006_stealth_interact_lamp"
	self.q006_stealth_lamp.action_text_id = "q006_stealth_interact_lamp_action"
	self.q006_stealth_lamp.timer = 0
	self.q006_stealth_lamp.interact_distance = 200
	self.q006_stealth_lamp.sound_event = "money_grab"
	
	self.q006_stealth_container = {}
	self.q006_stealth_container.text_id = "q006_stealth_container"
	self.q006_stealth_container.action_text_id = "q006_stealth_container_action"
	self.q006_stealth_container.timer = 0
	--self.q006_stealth_container.special_equipment = "blow_torch"
	--self.q006_stealth_container.equipment_text_id = "hud_equipment_need_blowtorch"
	self.q006_stealth_container.sound_start = "bar_blowtorch"
	self.q006_stealth_container.sound_interupt = "bar_blowtorch_end"
	self.q006_stealth_container.sound_done = "bar_blowtorch_end"
	
	self.q006_loud_force = {}
	self.q006_loud_force.text_id = "q006_loud_interact_force"
	self.q006_loud_force.action_text_id = "q006_loud_interact_force_action"
	self.q006_loud_force.timer = 9
	self.q006_loud_force.sound_start = "bar_crowbar_open_metal"
	self.q006_loud_force.sound_interupt = "bar_crowbar_open_metal_cancel"
	self.q006_loud_force.sound_done = "bar_crowbar_open_metal_finished"
	self.q006_loud_force.interact_distance = 400
	self.q006_loud_force.equipment_text_id = "q006_loud_interact_force_eqp"
	self.q006_loud_force.special_equipment = "crowbar"
	self.q006_loud_force.equipment_consume = false
	
	self.q006_loud_secret = {}
	self.q006_loud_secret.text_id = "q006_loud_interact_secret"
	self.q006_loud_secret.action_text_id = "q006_loud_interact_secret_action"
	self.q006_loud_secret.timer = 0
	self.q006_loud_secret.equipment_text_id = "q006_loud_interact_secret_eqp"
	self.q006_loud_secret.special_equipment = "bank_manager_key"
	self.q006_loud_secret.equipment_consume = true
	
end