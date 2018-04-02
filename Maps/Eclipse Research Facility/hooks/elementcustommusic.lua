core:import("CoreMissionScriptElement")
ElementCustomMusicNew = ElementCustomMusicNew or class(CoreMissionScriptElement.MissionScriptElement)

function ElementCustomMusicNew:init(...)
	ElementCustomMusicNew.super.init(self, ...)
end
function ElementCustomMusicNew:client_on_executed(...)
	self:on_executed(...)
end

function ElementCustomMusicNew:play(src)

	if MusicModule then
		managers.music:stop_custom()
		Global.music_manager.source:post_event("stop_all_music")
	    managers.music._player = managers.menu_component._main_panel:video({
	        name = "music",
	        video = src,
	        visible = false,
	        loop = self._values.loop or false
	    })   
	 	managers.music._player:set_volume_gain(Global.music_manager.volume)
	end
end 

function ElementCustomMusicNew:play_secondary(src)
	if MusicModule then
		self._secondary_player = managers.menu_component._secondary_panel:video({
			name = "secondary_sound",
	        video = src,
	        visible = false,
	        loop = false
		})
	 	self._secondary_player:set_volume_gain(Global.music_manager.volume)
	end
end

function ElementCustomMusicNew:stop()

	if MusicModule then
		managers.music:stop_custom()
		Global.music_manager.source:post_event("stop_all_music")
	end

end

function ElementCustomMusicNew:on_executed(instigator)

	if MusicModule then

		if not self._values.enabled then
			return
		end

		if self._values.force_stop then
			self:stop()
			return
		end

		if not self._values.music_path or self._values.music_path == "" then
			managers.music:stop_custom()
			return
		end
		
		if self._values.music_path and not self._values.use_as_secondary then
			self:play(self._values.music_path)
		end

		if self._values.music_path and self._values.use_as_secondary then
			self:play_secondary(self._values.music_path)
		end

		ElementCustomMusicNew.super.on_executed(self, instigator)
	else
		return
	end
end

function ElementCustomMusicNew:operation_remove()
	self:stop()
end