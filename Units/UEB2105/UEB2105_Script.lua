#****************************************************************************
#** 
#**  File     :  /cdimage/units/UEC1501/UEC1501_script.lua 
#**  Author(s):  John Comes, David Tomandl, Gordon Duclos
#** 
#**  Summary  :  Earth Manufacturing Center, Ver1
#** 
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local TLandFactoryUnit = import('/lua/terranunits.lua').TLandFactoryUnit
local TDFGaussCannonWeapon = import('/lua/terranweapons.lua').TDFGaussCannonWeapon
local TAALinkedRailgun = import('/lua/terranweapons.lua').TAALinkedRailgun

UEB2105 = Class(TLandFactoryUnit) {
    Weapons = {
        MainGun = Class(TDFGaussCannonWeapon) {
        },
		AAGun = Class(TAALinkedRailgun) {
            FxMuzzleFlashScale = 0.25,
        },
    },
}


TypeClass = UEB2105

