#****************************************************************************
#**
#**  File     :  /cdimage/units/XSS0201/XSS0201_script.lua
#**  Author(s):  Greg Kohne, Gordon Duclos, Aaron Lundquist
#**
#**  Summary  :  Seraphim Destroyer Script
#**
#**  Copyright � 2007 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local SeraphimWeapons = import('/lua/seraphimweapons.lua')
local SConstructionUnit = import('/lua/seraphimunits.lua').SConstructionUnit
local SDFUltraChromaticBeamGenerator = SeraphimWeapons.SDFUltraChromaticBeamGenerator
local SAAShleoCannonWeapon = SeraphimWeapons.SAAShleoCannonWeapon

XSB3100 = Class(SConstructionUnit) {
    Weapons = {
        MainGun = Class(SDFUltraChromaticBeamGenerator) {},
		AAGun = Class(SAAShleoCannonWeapon) {
            FxMuzzleScale = 2.25,
        }
    },
	
	OnStopBeingBuilt = function(self,builder,layer)
        SConstructionUnit.OnStopBeingBuilt(self,builder,layer)
        self.Rotator1 = CreateRotator(self, 'Spinner', 'y', nil, 10, 5, 50)
		self.Trash:Add(self.Rotator1)
		self.Rotator2 = CreateRotator(self, 'Spinner1', 'y', nil, -10, -5, -50)
		self.Trash:Add(self.Rotator2)
		self.Rotator3 = CreateRotator(self, 'Spinner2', 'y', nil, 10, 5, 60)
		self.Trash:Add(self.Rotator3)
    end,
}
TypeClass = XSB3100