#****************************************************************************
#**
#**  File     :  /cdimage/units/UAB2101/UAB2101_script.lua
#**  Author(s):  John Comes, David Tomandl
#**
#**  Summary  :  Aeon Light Laser Tower Script
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************


local CShieldStructureUnit = import('/lua/cybranunits.lua').CShieldStructureUnit
local Shield = import('/lua/shield.lua').Shield

URB2102 = Class(CShieldStructureUnit) {
    ShieldEffects = {
                '/effects/emitters/cybran_shield_01_generator_01_emit.bp',
                '/effects/emitters/cybran_shield_01_generator_02_emit.bp',
                '/effects/emitters/cybran_shield_01_generator_03_emit.bp',
                },
    
    OnStopBeingBuilt = function(self,builder,layer)
        CShieldStructureUnit.OnStopBeingBuilt(self,builder,layer)
		self.ShieldEffectsBag = {}
    end,

    OnShieldEnabled = function(self)
        CShieldStructureUnit.OnShieldEnabled(self)
        if self.ShieldEffectsBag then
            for k, v in self.ShieldEffectsBag do
                v:Destroy()
            end
		    self.ShieldEffectsBag = {}
		end
        for k, v in self.ShieldEffects do
            table.insert( self.ShieldEffectsBag, CreateAttachedEmitter( self, 'Shieldeffect', self:GetArmy(), v ):ScaleEmitter(0.10) )
        end
    end,

    OnShieldDisabled = function(self)
        CShieldStructureUnit.OnShieldDisabled(self)
        if self.ShieldEffectsBag then
            for k, v in self.ShieldEffectsBag do
                v:Destroy()
            end
		    self.ShieldEffectsBag = {}
		end
    end,
    
    OnKilled = function(self, instigator, type, overkillRatio)
        CShieldStructureUnit.OnKilled(self, instigator, type, overkillRatio)
        if self.ShieldEffctsBag then
            for k,v in self.ShieldEffectsBag do
                v:Destroy()
            end
        end
    end,
}

TypeClass = URB2102