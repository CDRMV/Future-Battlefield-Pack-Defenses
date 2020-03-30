#****************************************************************************
#**
#**  File     :  /cdimage/units/XEB2306/XEB2306_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix, Matt Vainio
#**
#**  Summary  :  Terran Light Gun Tower Script
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local TStructureUnit = import('/lua/terranunits.lua').TStructureUnit
local WeaponFile = import('/lua/terranweapons.lua')
local TLightningWeapon01 = WeaponFile.TLightningWeapon01

UEB2300 = Class(TStructureUnit) {
    Weapons = {
        PhasonBeam = Class(TLightningWeapon01) {},
    },      
    OnStopBeingBuilt = function(self,builder,layer)
        TStructureUnit.OnStopBeingBuilt(self,builder,layer)
        self.Rotator1 = CreateRotator(self, 'Tesla_Spinner', 'y', nil, 60, 0, 0)
        self.Trash:Add(self.Rotator1)
            self.Effect2 = CreateAttachedEmitter(self,'Tesla_Effekt01',self:GetArmy(), '/effects/emitters/economy_electricity_01_emit.bp')
            self.Trash:Add(self.Effecct2)
            self.Effect2 = CreateAttachedEmitter(self,'Tesla_Effekt02',self:GetArmy(), '/effects/emitters/economy_electricity_01_emit.bp')
            self.Trash:Add(self.Effecct2)
            self.Effect2 = CreateAttachedEmitter(self,'Tesla_Effekt03',self:GetArmy(), '/effects/emitters/economy_electricity_01_emit.bp')
            self.Trash:Add(self.Effecct2)
            self.Effect2 = CreateAttachedEmitter(self,'Tesla_Effekt04',self:GetArmy(), '/effects/emitters/economy_electricity_01_emit.bp')
            self.Trash:Add(self.Effecct2)
        end,

}
TypeClass = UEB2300