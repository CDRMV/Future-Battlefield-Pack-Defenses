#****************************************************************************
#**
#**  File     :  /cdimage/units/UEB1101/UEB1101_script.lua
#**  Author(s):  John Comes, David Tomandl
#**
#**  Summary  :  Terran Power Generator Script
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local TStructureUnit = import('/lua/terranunits.lua').TStructureUnit
local FBPDWeaponFile = import('/mods/Future Battlefield Pack Defenses/lua/FBPDweapons.lua')
local TStationaryLightningWeapon01 = FBPDWeaponFile.TStationaryLightningWeapon01

UEB2103 = Class(TStructureUnit) {
    Weapons = {
        PhasonBeam = Class(TStationaryLightningWeapon01) {},
    },

    OnStopBeingBuilt = function(self,builder,layer)
        TStructureUnit.OnStopBeingBuilt(self,builder,layer)
        self.Rotator1 = CreateRotator(self, 'Spinner', 'y', nil, 60, 0, 0)
        self.Trash:Add(self.Rotator1)
            self.Effect1 = CreateAttachedEmitter(self,'Spinner',self:GetArmy(), '/effects/emitters/economy_electricity_01_emit.bp')
            self.Trash:Add(self.Effecct1)
            self.Effect2 = CreateAttachedEmitter(self,'Exhaust02',self:GetArmy(), '/effects/emitters/economy_electricity_01_emit.bp')
            self.Trash:Add(self.Effecct2)
            self.Effect2 = CreateAttachedEmitter(self,'Exhaust01',self:GetArmy(), '/effects/emitters/economy_electricity_01_emit.bp')
            self.Trash:Add(self.Effecct2)
        end,

}

TypeClass = UEB2103