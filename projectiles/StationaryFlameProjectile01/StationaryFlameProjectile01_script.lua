-- Flamethrower Projectile

local StationaryFlamethrower02 = import('/mods/Future Battlefield Pack Defenses/lua/FBPDprojectiles.lua').StationaryFlamethrower02
local RandomFloat = import('/lua/utilities.lua').GetRandomFloat

Flamethrower = Class(StationaryFlamethrower02) {
    OnImpact = function(self, TargetType, targetEntity)
		if TargetType != 'Water' then 
			local rotation = RandomFloat(0,2*math.pi)
			local size = RandomFloat(3.75,5.0)
	        
			CreateDecal(self:GetPosition(), rotation, 'scorch_001_albedo', '', 'Albedo', size, size, 150, 15, self:GetArmy())
		end	 
		StationaryFlamethrower02.OnImpact( self, TargetType, targetEntity )
    end,
}

TypeClass = Flamethrower
