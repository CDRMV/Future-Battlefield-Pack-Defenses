#****************************************************************************
#**
#**  File     :  /cdimage/units/XSS0103/XSS0103_script.lua
#**
#**  Summary  :  Seraphim Frigate Script: XSS0103
#**
#**  Copyright © 2007 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local SStructureUnit = import('/lua/seraphimunits.lua').SStructureUnit
local SWeapon = import('/lua/seraphimweapons.lua')

XSB2203 = Class(SStructureUnit) {
    Weapons = {
        MainGun = Class(SWeapon.SDFShriekerCannon){},
        AntiAir = Class(SWeapon.SAAShleoCannonWeapon){},
    },
	
	OnStopBeingBuilt = function(self,builder,layer)
        SStructureUnit.OnStopBeingBuilt(self,builder,layer)
        self.Rotator1 = CreateRotator(self, 'Spinner', 'y', nil, 10, 5, 10)
        self.Trash:Add(self.Rotator1)
		self.Rotator2 = CreateRotator(self, 'Spinner2', 'y', nil, -10, -5, -10)
        self.Trash:Add(self.Rotator2)
    end,
}
TypeClass = XSB2203
