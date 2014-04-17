originalMarineUpdateRender = Class_ReplaceMethod( "Marine", "OnUpdateRender", 
	function(self)
		
		originalMarineUpdateRender(self)
		
		if self.flashlightOn then
				
			// Only display atmospherics for third person players.
			local density = CHUDGetOption("flashatmos")*0.2
			if isLocal and not self:GetIsThirdPerson() then
				density = 0
			end
			self.flashlight:SetAtmosphericDensity(density)
			
		end
		
	end
)

originalExoUpdateRender = Class_ReplaceMethod( "Exo", "OnUpdateRender", 
	function(self)
		
		originalExoUpdateRender(self)
		
		if self.flashlightOn then
				
			// Only display atmospherics for third person players.
			local density = CHUDGetOption("flashatmos")*0.2
			if isLocal and not self:GetIsThirdPerson() then
				density = 0
			end
			self.flashlight:SetAtmosphericDensity(density)
			
		end
		
	end
)