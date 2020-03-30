#****************************************************************************
#**
#**  File     :  /cdimage/units/UAB3202/UAB3202_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix
#**
#**  Summary  :  Aeon Long Range Sonar Script
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local AeonWeapons = import('/lua/aeonweapons.lua')
local ALandFactoryUnit = import('/lua/aeonunits.lua').ALandFactoryUnit
local AAAZealotMissileWeapon = AeonWeapons.AAAZealotMissileWeapon
local ADFCannonOblivionWeapon = AeonWeapons.ADFCannonOblivionWeapon
local ADFLaserLightWeapon = AeonWeapons.ADFLaserLightWeapon

UAB2300b = Class(ALandFactoryUnit) {
    Weapons = {
		LaserTurret = Class(ADFLaserLightWeapon) {},
	    AntiAirMissiles01 = Class(AAAZealotMissileWeapon) {},
        MainGun = Class(ADFCannonOblivionWeapon) {},
    },
}

TypeClass = UAB2300b