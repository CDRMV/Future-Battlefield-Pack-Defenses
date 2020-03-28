#****************************************************************************
#** 
#**  File     :  /cdimage/units/URC1501/URC1501_script.lua 
#**  Author(s):  John Comes, David Tomandl 
#** 
#**  Summary  :  Cybran Manufacturing Center, Ver1
#** 
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local CRadarJammerUnit = import('/lua/cybranunits.lua').CRadarJammerUnit
local CWeapons = import('/lua/cybranweapons.lua')
local CDFHeavyDisintegratorWeapon = CWeapons.CDFHeavyDisintegratorWeapon
local CDFLaserHeavyWeapon = CWeapons.CDFLaserHeavyWeapon
local CAANanoDartWeapon = CWeapons.CAANanoDartWeapon

URB2308 = Class(CRadarJammerUnit) {
    Weapons = {
        Disintigrator = Class(CDFHeavyDisintegratorWeapon) {},
		MainGun = Class(CDFLaserHeavyWeapon) {},
		AAGun = Class(CAANanoDartWeapon) {},
    },
	
	IntelEffects = {
		{
			Bones = {
				'S_Effect',
			},
			Offset = {
				0,
				0,
				0,
			},
			Type = 'Jammer01',
		},
    },
}


TypeClass = URB2308

