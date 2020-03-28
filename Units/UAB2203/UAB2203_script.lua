#****************************************************************************
#**
#**  File     :  /cdimage/units/UAB2109/UAB2109_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix
#**
#**  Summary  :  Aeon Torpedo Launcher Script
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local AStructureUnit = import('/lua/aeonunits.lua').AStructureUnit
local AANChronoTorpedoWeapon = import('/lua/aeonweapons.lua').AANChronoTorpedoWeapon
local ADFDisruptorCannonWeapon = import('/lua/aeonweapons.lua').ADFDisruptorCannonWeapon
local ADFLaserLightWeapon = import('/lua/aeonweapons.lua').ADFLaserLightWeapon
local AIFMortarWeapon = import('/lua/aeonweapons.lua').AIFMortarWeapon

UAB2203 = Class(AStructureUnit) {
    Weapons = {
        Turret01 = Class(AANChronoTorpedoWeapon) {},
		MainGun = Class(ADFDisruptorCannonWeapon) {},
		LaserTurret = Class(ADFLaserLightWeapon) {},
		ArtGun = Class(AIFMortarWeapon) {
            FxMuzzleFlash = {
                '/effects/emitters/aeon_mortar_flash_01_emit.bp',
                '/effects/emitters/aeon_mortar_flash_02_emit.bp',
            },
        }
    },   
	
	OnStopBeingBuilt = function(self,builder,layer)
        AStructureUnit.OnStopBeingBuilt(self,builder,layer)
        self.Rotator1 = CreateRotator(self, 'Spinner', 'y', nil, 10, 5, 10)
        self.Trash:Add(self.Rotator1)
		self.Rotator2 = CreateRotator(self, 'Spinner2', 'y', nil, -10, -5, -10)
        self.Trash:Add(self.Rotator2)
    end,
	
}

TypeClass = UAB2203