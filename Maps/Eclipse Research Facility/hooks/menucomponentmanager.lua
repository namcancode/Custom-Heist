Hooks:PostHook( MenuComponentManager, "init", "new_sound_panel", function(self)
    self._secondary_panel = self._ws:panel():panel()
end )