--Adds custom hints!

HintManager.q_fj_hintmngr010 = HintManager.init;

function HintManager:init(...)

	self:q_fj_hintmngr010(...)
	
	log("Adding a hint!")
	
	self:addCustomHint("q_hint_phone", "stinger_feedback_negative")
	self:addCustomHint("q_hint_search_archives", "stinger_feedback_negative")
	self:addCustomHint("q_hint_search_files", "stinger_feedback_negative")
	self:addCustomHint("q_hint_found_file", "stinger_feedback_positive")
	self:addCustomHint("q_hint_gensec_ok", "stinger_feedback_positive")
	self:addCustomHint("q_hint_gensec_pagers", "stinger_feedback_negative")
	self:addCustomHint("q_hint_gensec_guards", "stinger_feedback_negative")
	self:addCustomHint("q_hint_alarm_phone_nopickup", "stinger_feedback_negative")
	self:addCustomHint("q_hint_alarm_phone_nogood", "stinger_feedback_negative")
	
end

function HintManager:addCustomHint(str, event)
	
	Global.hint_manager.hints[str] = {
		text_id = str,
		trigger_times = nil,
		trigger_count = 0,
		sync = true,
		event = event,
		level = nil
	}
	
end