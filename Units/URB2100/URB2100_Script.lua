#****************************************************************************
#**
#**  File     :  /cdimage/units/UEL0103/UEL0103_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix
#**
#**  Summary  :  Mobile Light Artillery Script
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local CStructureUnit = import('/lua/cybranunits.lua').CStructureUnit
local CybranWeaponsFile = import('/lua/cybranweapons.lua')
local CIFGrenadeWeapon = CybranWeaponsFile.CIFGrenadeWeapon

URB2100 = Class(CStructureUnit) {
    Weapons = {
        MainGun = Class(CIFGrenadeWeapon) {
            FxMuzzleFlash = {
                '/effects/emitters/cybran_artillery_muzzle_flash_01_emit.bp',
                '/effects/emitters/cybran_artillery_muzzle_flash_02_emit.bp',
                '/effects/emitters/cannon_muzzle_smoke_02_emit.bp',
            },
            FxMuzzleFlashScale = 0.5,
        },
    },
    OnStopBeingBuilt = function(self,builder,layer)
        CStructureUnit.OnStopBeingBuilt(self,builder,layer)
    end,
}

TypeClass = URB2100