#****************************************************************************
#** 
#**  File     :  /cdimage/units/URC1501/URC1501_script.lua 
#**  Author(s):  John Comes, David Tomandl 
#** 
#**  Summary  :  Cybran Manufacturing Center, Ver1
#** 
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local CStructureUnit = import('/lua/cybranunits.lua').CStructureUnit
local CWeapons = import('/lua/cybranweapons.lua')
local CDFHeavyDisintegratorWeapon = CWeapons.CDFHeavyDisintegratorWeapon
local CDFLaserHeavyWeapon = CWeapons.CDFLaserHeavyWeapon

URB2105 = Class(CStructureUnit) {
    Weapons = {
        Disintigrator = Class(CDFHeavyDisintegratorWeapon) {},
		MainGun = Class(CDFLaserHeavyWeapon) {},
    },
}


TypeClass = URB2105

