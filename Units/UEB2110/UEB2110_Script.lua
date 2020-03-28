#****************************************************************************
#** 
#**  File     :  /cdimage/units/UEC1201/UEC1201_script.lua 
#**  Author(s):  John Comes, David Tomandl 
#** 
#**  Summary  :  Earth Science Lab, Ver1
#** 
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local TRadarUnit = import('/lua/terranunits.lua').TRadarUnit
local TDFLightPlasmaCannonWeapon = import('/lua/terranweapons.lua').TDFLightPlasmaCannonWeapon
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher

UEB2110 = Class(TRadarUnit) {
    Weapons = {
        MainGun = Class(TDFLightPlasmaCannonWeapon) {},
		MissileRack01 = Class(TSAMLauncher) {},
    },
	
	OnIntelDisabled = function(self)
        TRadarUnit.OnIntelDisabled(self)
        self.UpperRotator:SetTargetSpeed(0)
    end,
	
	OnIntelEnabled = function(self)
        TRadarUnit.OnIntelEnabled(self)
        if not self.UpperRotator then
            self.UpperRotator = CreateRotator(self, 'Spinner', 'y')
            self.Trash:Add(self.UpperRotator)
        end
        self.UpperRotator:SetTargetSpeed(10)
        self.UpperRotator:SetAccel(5)
    end,
}


TypeClass = UEB2110

