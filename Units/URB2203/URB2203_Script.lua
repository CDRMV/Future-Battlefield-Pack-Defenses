#****************************************************************************
#** 
#**  File     :  /cdimage/units/URC1201/URC1201_script.lua 
#**  Author(s):  John Comes, David Tomandl 
#** 
#**  Summary  :  Cybran Science Lab, Ver1
#** 
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local CStructureUnit = import('/lua/cybranunits.lua').CStructureUnit
local CDFParticleCannonWeapon = import('/lua/cybranweapons.lua').CDFParticleCannonWeapon
local CAAMissileNaniteWeapon = import('/lua/cybranweapons.lua').CAAMissileNaniteWeapon

URB2203 = Class(CStructureUnit) {
    Weapons = {
        MainGun = Class(CDFParticleCannonWeapon) {},
        GroundGun = Class(CAAMissileNaniteWeapon) {},
    },
}


TypeClass = URB2203

