#****************************************************************************
#**
#**  File     :  /units/XSL0202/XSL0202_script.lua
#**
#**  Summary  :  Seraphim Heavy Bot Script
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local SStructureUnit = import('/lua/seraphimunits.lua').SStructureUnit
local SDFAireauBolterWeapon = import('/lua/seraphimweapons.lua').SDFAireauBolterWeapon02

XSB2300 = Class(SStructureUnit) {
    Weapons = {
        MainGun = Class(SDFAireauBolterWeapon) {}
    },
}
TypeClass = XSB2300