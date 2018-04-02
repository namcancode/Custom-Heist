Hooks:PostHook(CarryTweakData, "init", "QFamJewelsCarryOverrideLoud", function(self)
	
	--Adjust meth to be jewelry
	self.meth.type = "light"
	self.meth.name_id = "hud_carry_diamonds"
	self.meth.bag_value = "diamonds"
	
end)