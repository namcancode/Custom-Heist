---Adjusts pagers so that a global event is fired whenever player interrupts pager answering

Hooks:PostHook(CopBrain, "on_alarm_pager_interaction", "q_fjcopbrain010_pagerinteractov", function(self, status, player)

	if status == "interrupted" then
	
		log("Calling q_player_interrupt_pager...")
		managers.mission:call_global_event("q_player_interrupt_pager")
	end
	
end)

Hooks:PreHook(CopBrain, "clbk_alarm_pager", "q_fjcopbrain010_pagerinteractovclbk", function(self, ignore_this, data)

	if not self._alarm_pager_data then
		return
	end
	
	if self._alarm_pager_data.nr_calls_made ~= 0 and self._alarm_pager_data.nr_calls_made == self._alarm_pager_data.total_nr_calls then
	
		log("Calling q_player_failed_pager...")
		managers.mission:call_global_event("q_player_failed_pager")
	end

end)