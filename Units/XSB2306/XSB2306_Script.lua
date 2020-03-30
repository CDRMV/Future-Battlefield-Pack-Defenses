#****************************************************************************
#**
#**  File     :  /cdimage/units/XSL0303/XSL0303_script.lua
#**  Author(s):  Dru Staltman, Aaron Lundquist
#**
#**  Summary  :  Seraphim Siege Tank Script
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local SStructureUnit = import('/lua/seraphimunits.lua').SStructureUnit
local WeaponsFile = import('/lua/seraphimweapons.lua')
local SDFThauCannon = WeaponsFile.SDFThauCannon
local SDFAireauBolter = WeaponsFile.SDFAireauBolterWeapon
local EffectUtil = import('/lua/EffectUtilities.lua')

XSB2306 = Class(SStructureUnit) {
    Weapons = {
        MainTurret = Class(SDFThauCannon) {},
        LeftTurret = Class(SDFAireauBolter) {},
        RightTurret = Class(SDFAireauBolter) {},
    },
}

TypeClass = XSB2306