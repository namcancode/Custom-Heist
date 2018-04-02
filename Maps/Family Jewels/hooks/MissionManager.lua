---Adds a global event to the events list

Hooks:PostHook(MissionManager, "init", "q_fj010_globeventadd_pagerinterrupt", function(self)

	log("Inserted global event into list!")
	
	local _globevents_temp = self:get_global_event_list()
	
	table.insert(_globevents_temp, "q_player_interrupt_pager")
	table.insert(_globevents_temp, "q_player_failed_pager")
	
	self:set_global_event_list(_globevents_temp)
	
end)