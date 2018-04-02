Hooks:PostHook( GuiTweakData, "init", "nepgearsy_contact", function(self)
	local contact_data = {
		id = "nepgearsy",
		name_id = "contact_nepgearsy_name",
		{
			desc_id = "contact_nepgearsy_desc",
			video = "bain",
			post_event = nil
		}
	}

	table.insert(self.crime_net.codex[1], contact_data)
end)