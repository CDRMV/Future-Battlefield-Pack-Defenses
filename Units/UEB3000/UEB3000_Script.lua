#****************************************************************************
#**
#**  File     :  /units/UEB2301b/UEB2301b_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix
#**
#**  Summary  :  UEF Heavy Gun Tower Script
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local TStructureUnit = import('/lua/terranunits.lua').TStructureUnit
local FBPDWeaponFile = import('/mods/Future Battlefield Pack Defenses/lua/FBPDweapons.lua')
local TDFStationaryLaserLightWeapon = FBPDWeaponFile.TDFStationaryLaserLightWeapon

UEB2202 = Class(TStructureUnit) {
    Weapons = {
        GroundGun = Class(TDFStationaryLaserLightWeapon) {},
        AAGun = Class(TDFStationaryLaserLightWeapon) {},        
    },
    
    OnCreate = function(self)
        TStructureUnit.OnCreate(self)
        self:SetWeaponEnabledByLabel('AAGun', false)
    end,
    
    OnScriptBitSet = function(self, bit)
        TStructureUnit.OnScriptBitSet(self, bit)
        if bit == 1 then 
            self:SetWeaponEnabledByLabel('GroundGun', true)
            self:SetWeaponEnabledByLabel('AAGun', false)
            self:GetWeaponManipulatorByLabel('GroundGun'):SetHeadingPitch( self:GetWeaponManipulatorByLabel('AAGun'):GetHeadingPitch() )
        end
    end,

    OnScriptBitClear = function(self, bit)
        TStructureUnit.OnScriptBitClear(self, bit)
        if bit == 1 then 
            self:SetWeaponEnabledByLabel('GroundGun', false)
            self:SetWeaponEnabledByLabel('AAGun', true)
            self:GetWeaponManipulatorByLabel('AAGun'):SetHeadingPitch( self:GetWeaponManipulatorByLabel('GroundGun'):GetHeadingPitch() )
        end
    end,
}

TypeClass = UEB2202