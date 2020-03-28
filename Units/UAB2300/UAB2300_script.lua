#****************************************************************************
#**
#**  File     :  /cdimage/units/UAB3202/UAB3202_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix
#**
#**  Summary  :  Aeon Long Range Sonar Script
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local AeonWeapons = import('/lua/aeonweapons.lua')
local AStructureUnit = import('/lua/aeonunits.lua').AStructureUnit
local AAAZealotMissileWeapon = AeonWeapons.AAAZealotMissileWeapon
local ADFCannonOblivionWeapon = AeonWeapons.ADFCannonOblivionWeapon
local ADFLaserLightWeapon = AeonWeapons.ADFLaserLightWeapon

UAB2300 = Class(AStructureUnit) {
    Weapons = {
		LaserTurret = Class(ADFLaserLightWeapon) {},
	    AntiAirMissiles01 = Class(AAAZealotMissileWeapon) {},
        MainGun = Class(ADFCannonOblivionWeapon) {},
    },
	
	OnStopBeingBuilt = function(self,builder,layer)
        AStructureUnit.OnStopBeingBuilt(self,builder,layer)
        self.Rotator1 = CreateRotator(self, 'Spinner', 'y', nil, 10, 5, 10)
		self.Trash:Add(self.Rotator1)
		self.Rotator2 = CreateRotator(self, 'Spinner1', 'y', nil, -10, -5, -25)
		self.Trash:Add(self.Rotator2)
		self.Rotator3 = CreateRotator(self, 'Spinner2', 'y', nil, 10, 5, 30)
		self.Trash:Add(self.Rotator3)
    end,
}

TypeClass = UAB2300