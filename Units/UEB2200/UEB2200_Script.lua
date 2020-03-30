#****************************************************************************
#**
#**  File     :  /cdimage/units/UEB2301/UEB2301_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix
#**
#**  Summary  :  UEF Heavy Gun Tower Script
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local TStructureUnit = import('/lua/terranunits.lua').TStructureUnit
local WeaponFile = import('/lua/terranweapons.lua')
local TLightningWeapon01 = WeaponFile.TLightningWeapon01

UEB2200 = Class(TStructureUnit) {
    Weapons = {
        PhasonBeam = Class(TLightningWeapon01) {}, 
    },

    OnStopBeingBuilt = function(self,builder,layer)
        TStructureUnit.OnStopBeingBuilt(self,builder,layer)
        self.Rotator1 = CreateRotator(self, 'Tesla_Spinner01', 'y', nil, -60, 0, 0)
        self.Trash:Add(self.Rotator1)
        self.Rotator2 = CreateRotator(self, 'Tesla_Spinner02', 'y', nil, 60, 0, 0)
        self.Trash:Add(self.Rotator2)
            self.Effect1 = CreateAttachedEmitter(self,'Tesla_Effekt01',self:GetArmy(), '/effects/emitters/economy_electricity_01_emit.bp')
            self.Trash:Add(self.Effect1)
            self.Effect2 = CreateAttachedEmitter(self,'Tesla_Effekt02',self:GetArmy(), '/effects/emitters/economy_electricity_01_emit.bp')
            self.Trash:Add(self.Effect2)
            self.Effect3 = CreateAttachedEmitter(self,'Tesla_Effekt03',self:GetArmy(), '/effects/emitters/economy_electricity_01_emit.bp')
            self.Trash:Add(self.Effect3)
        end,
     
}

TypeClass = UEB2200