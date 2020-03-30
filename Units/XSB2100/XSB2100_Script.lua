#****************************************************************************
#**
#**  File     :  /cdimage/units/XSL0103/XSL0103_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Aaron Lundquist
#**
#**  Summary  :  Seraphim Mobile Light Artillery Script
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local SStructureUnit = import('/lua/seraphimunits.lua').SStructureUnit
local SIFThunthoCannonWeapon = import('/lua/seraphimweapons.lua').SIFThunthoCannonWeapon

XSB2100 = Class(SStructureUnit) {
    Weapons = {
        MainGun = Class(SIFThunthoCannonWeapon) {}
    },
}

TypeClass = XSB2100