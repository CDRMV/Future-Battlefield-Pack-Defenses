#****************************************************************************
#** 
#**  File     :  /cdimage/units/UEC1501/UEC1501_script.lua 
#**  Author(s):  John Comes, David Tomandl, Gordon Duclos
#** 
#**  Summary  :  Earth Manufacturing Center, Ver1
#** 
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local TStructureUnit = import('/lua/terranunits.lua').TStructureUnit
local WeaponsFile = import('/lua/terranweapons.lua')
local TDFMachineGunWeapon = WeaponsFile.TDFMachineGunWeapon

UEB2201 = Class(TStructureUnit) {
    Weapons = {
        Flamethrower = Class(TDFMachineGunWeapon) {}
    },
	
	
	EffectBones01 = {
		'Turret_Smoke1', 'Turret_Smoke2', 						
	},

    OnCreate = function(self)
		TStructureUnit.OnCreate(self)
		local army = self:GetArmy()
        for k, v in self.EffectBones01 do
            CreateAttachedEmitter(self,v,army,'/effects/emitters/uec1501_smoke_01_emit.bp')
        end			        
    end,
}


TypeClass = UEB2201

